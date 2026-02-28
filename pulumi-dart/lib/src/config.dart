import 'dart:convert';
import 'dart:io';

import 'store/store.dart' as runtime_store;

/// {@template pulumi.config_mixin.summary}
/// Shared config parsing logic used by runtime settings.
/// {@endtemplate}
///
mixin ConfigMixin {
  static const String _configEnvKey = 'PULUMI_CONFIG';
  static const String _configSecretKeysEnvKey = 'PULUMI_CONFIG_SECRET_KEYS';

  late final Map<String, String> _config;
  late final Set<String> _secretKeys;

  String get projectName;
  Map<String, String> get environment => Platform.environment;

  void initializeConfig() {
    _config = _parseConfig();
    _secretKeys = _parseConfigSecretKeys();
  }

  String? getConfig(String key) {
    final fullKey = _fullKey(key);
    return _config[fullKey];
  }

  bool isConfigSecret(String key) {
    final fullKey = _fullKey(key);
    return _secretKeys.contains(fullKey);
  }

  String _fullKey(String key) {
    if (key.contains(':')) {
      return key;
    }
    return '$projectName:$key';
  }

  Map<String, String> _parseConfig() {
    final configJson = environment[_configEnvKey];
    if (configJson == null || configJson.isEmpty) {
      return {};
    }

    try {
      final configMap = json.decode(configJson) as Map<String, dynamic>;
      return configMap.map(
        (key, value) => MapEntry(_cleanKey(key), value.toString()),
      );
    } catch (e) {
      print(
        'Error parsing config: $e',
      ); // Consider using a proper logging mechanism
      return {};
    }
  }

  Set<String> _parseConfigSecretKeys() {
    final secretKeysJson = environment[_configSecretKeysEnvKey];
    if (secretKeysJson == null || secretKeysJson.isEmpty) {
      return {};
    }

    try {
      final secretKeysList = json.decode(secretKeysJson) as List<dynamic>;
      return secretKeysList.map((key) => _cleanKey(key.toString())).toSet();
    } catch (e) {
      print(
        'Error parsing secret keys: $e',
      ); // Consider using a proper logging mechanism
      return {};
    }
  }

  String _cleanKey(String key) {
    final colonIndex = key.indexOf(':');
    if (colonIndex > 0 && key.substring(colonIndex + 1).startsWith('config:')) {
      return '${key.substring(0, colonIndex)}:${key.substring(colonIndex + 1 + 'config:'.length)}';
    }
    return key;
  }
}

/// {@template pulumi.config.summary}
/// Accesses stack configuration values for a project/package namespace.
///
/// Keys are resolved relative to the config bag name unless fully-qualified
/// keys (`<namespace>:<key>`) are provided.
///
/// ## Example
/// ```dart
/// final config = Config();
/// final region = config.require('region');
/// final replicas = config.getNumber('replicas') ?? 1;
/// ```
///
/// ## Example (namespace override)
/// ```dart
/// final cfg = Config('my-package');
/// final endpoint = cfg.get('endpoint');
/// ```
/// {@endtemplate}
///
class Config {
  final String _name;

  Config([String? name]) : _name = _resolveConfigName(name);

  /// Namespace for this config bag.
  String get name => _name;

  /// Gets an optional string config value with optional validation constraints.
  String? get(
    String key, {
    List<String>? allowedValues,
    int? minLength,
    int? maxLength,
    Pattern? pattern,
  }) {
    final fullKey = _fullKey(key);
    final value = runtime_store.getConfig(fullKey);
    if (value == null) {
      return null;
    }

    _validateStringValue(
      fullKey,
      value,
      allowedValues: allowedValues,
      minLength: minLength,
      maxLength: maxLength,
      pattern: pattern,
    );
    return value;
  }

  /// Gets a required string config value with optional validation constraints.
  String require(
    String key, {
    List<String>? allowedValues,
    int? minLength,
    int? maxLength,
    Pattern? pattern,
  }) {
    final value = get(
      key,
      allowedValues: allowedValues,
      minLength: minLength,
      maxLength: maxLength,
      pattern: pattern,
    );
    if (value == null) {
      throw ConfigException(
        "Missing required configuration variable '${_fullKey(key)}'.",
      );
    }
    return value;
  }

  /// Gets an optional boolean config value.
  bool? getBoolean(String key) {
    final fullKey = _fullKey(key);
    final value = get(key);
    if (value == null) {
      return null;
    }
    if (value == 'true') {
      return true;
    }
    if (value == 'false') {
      return false;
    }

    throw ConfigException(
      "Configuration '$fullKey' value '$value' is not a valid boolean.",
    );
  }

  /// Gets a required boolean config value.
  bool requireBoolean(String key) {
    final value = getBoolean(key);
    if (value == null) {
      throw ConfigException(
        "Missing required configuration variable '${_fullKey(key)}'.",
      );
    }
    return value;
  }

  /// Gets an optional numeric config value.
  double? getNumber(String key, {num? min, num? max}) {
    final fullKey = _fullKey(key);
    final value = get(key);
    if (value == null) {
      return null;
    }

    final parsed = double.tryParse(value);
    if (parsed == null) {
      throw ConfigException(
        "Configuration '$fullKey' value '$value' is not a valid number.",
      );
    }

    _validateNumberValue(fullKey, parsed, min: min, max: max);
    return parsed;
  }

  /// Gets a required numeric config value.
  double requireNumber(String key, {num? min, num? max}) {
    final value = getNumber(key, min: min, max: max);
    if (value == null) {
      throw ConfigException(
        "Missing required configuration variable '${_fullKey(key)}'.",
      );
    }
    return value;
  }

  /// Gets an optional JSON-encoded config object.
  ///
  /// The caller is responsible for casting/parsing the decoded structure.
  T? getObject<T>(String key) {
    final fullKey = _fullKey(key);
    final value = get(key);
    if (value == null) {
      return null;
    }

    try {
      return jsonDecode(value) as T;
    } catch (_) {
      throw ConfigException(
        "Configuration '$fullKey' value is not valid JSON.",
      );
    }
  }

  /// Gets a required JSON-encoded config object.
  T requireObject<T>(String key) {
    final value = getObject<T>(key);
    if (value == null) {
      throw ConfigException(
        "Missing required configuration variable '${_fullKey(key)}'.",
      );
    }
    return value;
  }

  /// Returns whether the config key is marked secret.
  ///
  /// This reflects metadata provided by the Pulumi CLI/engine and does not
  /// decrypt any values by itself.
  bool isSecret(String key) => runtime_store.isConfigSecret(_fullKey(key));

  String _fullKey(String key) {
    if (key.contains(':')) {
      return key;
    }
    return '$_name:$key';
  }

  static String _resolveConfigName(String? provided) {
    if (provided != null && provided.isNotEmpty) {
      return provided;
    }

    return runtime_store.getStore().settings.options.project ?? '';
  }

  void _validateStringValue(
    String fullKey,
    String value, {
    List<String>? allowedValues,
    int? minLength,
    int? maxLength,
    Pattern? pattern,
  }) {
    if (allowedValues != null && !allowedValues.contains(value)) {
      throw ConfigException(
        "Configuration '$fullKey' value '$value' is not in the allowed set: ${allowedValues.join(', ')}.",
      );
    }

    if (minLength != null && value.length < minLength) {
      throw ConfigException(
        "Configuration '$fullKey' value must be at least $minLength characters.",
      );
    }

    if (maxLength != null && value.length > maxLength) {
      throw ConfigException(
        "Configuration '$fullKey' value must be at most $maxLength characters.",
      );
    }

    if (pattern != null) {
      final regex = pattern is RegExp ? pattern : RegExp(pattern.toString());
      if (!regex.hasMatch(value)) {
        throw ConfigException(
          "Configuration '$fullKey' value '$value' does not match required pattern '${regex.pattern}'.",
        );
      }
    }
  }

  void _validateNumberValue(String fullKey, num value, {num? min, num? max}) {
    if (min != null && value < min) {
      throw ConfigException(
        "Configuration '$fullKey' value $value is below minimum $min.",
      );
    }

    if (max != null && value > max) {
      throw ConfigException(
        "Configuration '$fullKey' value $value is above maximum $max.",
      );
    }
  }
}

/// Error thrown for invalid or missing config values.
class ConfigException implements Exception {
  final String message;

  ConfigException(this.message);

  @override
  String toString() => 'ConfigException: $message';
}
