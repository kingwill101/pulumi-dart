// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the config package.
class ConfigConfig {
  const ConfigConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  String? get name {
    final raw = _raw('name');
    return raw;
  }

  String requireName() {
    final value = name;
    if (value == null) {
      throw ArgumentError("Missing required config value 'name'.");
    }
    return value;
  }

  bool get nameIsSecret => _isSecret('name');

  String? get pluginDownloadURL {
    final raw = _raw('pluginDownloadURL');
    return raw;
  }

  bool get pluginDownloadURLIsSecret => _isSecret('pluginDownloadURL');

}

const config = ConfigConfig();
