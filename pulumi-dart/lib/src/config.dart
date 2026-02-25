import 'dart:convert';
import 'dart:io';

mixin ConfigMixin {
  static const String _configEnvKey = 'PULUMI_CONFIG';
  static const String _configSecretKeysEnvKey = 'PULUMI_CONFIG_SECRET_KEYS';

  late final Map<String, String> _config;
  late final Set<String> _secretKeys;

  String get projectName;

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
    final configJson = Platform.environment[_configEnvKey];
    if (configJson == null || configJson.isEmpty) {
      return {};
    }

    try {
      final configMap = json.decode(configJson) as Map<String, dynamic>;
      return configMap
          .map((key, value) => MapEntry(_cleanKey(key), value.toString()));
    } catch (e) {
      print(
          'Error parsing config: $e'); // Consider using a proper logging mechanism
      return {};
    }
  }

  Set<String> _parseConfigSecretKeys() {
    final secretKeysJson = Platform.environment[_configSecretKeysEnvKey];
    if (secretKeysJson == null || secretKeysJson.isEmpty) {
      return {};
    }

    try {
      final secretKeysList = json.decode(secretKeysJson) as List<dynamic>;
      return secretKeysList.map((key) => _cleanKey(key.toString())).toSet();
    } catch (e) {
      print(
          'Error parsing secret keys: $e'); // Consider using a proper logging mechanism
      return {};
    }
  }

  String _cleanKey(String key) {
    final colonIndex = key.indexOf(':');
    if (colonIndex > 0 && key.substring(colonIndex + 1).startsWith('config:')) {
      return key.substring(0, colonIndex) +
          ':' +
          key.substring(colonIndex + 1 + 'config:'.length);
    }
    return key;
  }
}
