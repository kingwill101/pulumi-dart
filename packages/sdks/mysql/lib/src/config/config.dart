// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the mysql package.
class MysqlConfig {
  const MysqlConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  String? get authenticationPlugin {
    final raw = _raw('authenticationPlugin');
    return raw;
  }

  bool get authenticationPluginIsSecret => _isSecret('authenticationPlugin');

  String? get endpoint {
    final raw = _raw('endpoint');
    return raw;
  }

  String requireEndpoint() {
    final value = endpoint;
    if (value == null) {
      throw ArgumentError("Missing required config value 'endpoint'.");
    }
    return value;
  }

  bool get endpointIsSecret => _isSecret('endpoint');

  int? get maxConnLifetimeSec {
    final raw = _raw('maxConnLifetimeSec');
    return (raw).toInt();
  }

  bool get maxConnLifetimeSecIsSecret => _isSecret('maxConnLifetimeSec');

  int? get maxOpenConns {
    final raw = _raw('maxOpenConns');
    return (raw).toInt();
  }

  bool get maxOpenConnsIsSecret => _isSecret('maxOpenConns');

  String? get password {
    final raw = _raw('password');
    return raw;
  }

  bool get passwordIsSecret => _isSecret('password');

  String? get proxy {
    final raw = _raw('proxy');
    return raw;
  }

  bool get proxyIsSecret => _isSecret('proxy');

  String? get tls {
    final raw = _raw('tls');
    return raw;
  }

  bool get tlsIsSecret => _isSecret('tls');

  String? get username {
    final raw = _raw('username');
    return raw;
  }

  String requireUsername() {
    final value = username;
    if (value == null) {
      throw ArgumentError("Missing required config value 'username'.");
    }
    return value;
  }

  bool get usernameIsSecret => _isSecret('username');
}

final config = MysqlConfig();
