// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the f5bigip package.
class F5bigipConfig {
  const F5bigipConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// Domain name/IP of the BigIP
  String? get address {
    final raw = _raw('address');
    return raw;
  }

  bool get addressIsSecret => _isSecret('address');

  /// Amount of times to retry AS3 API requests. Default: 10.
  int? get apiRetries {
    final raw = _raw('apiRetries');
    return (raw).toInt();
  }

  bool get apiRetriesIsSecret => _isSecret('apiRetries');

  /// A timeout for AS3 requests, represented as a number of seconds. Default: 60
  int? get apiTimeout {
    final raw = _raw('apiTimeout');
    return (raw).toInt();
  }

  bool get apiTimeoutIsSecret => _isSecret('apiTimeout');

  /// Login reference for token authentication (see BIG-IP REST docs for details)
  String? get loginRef {
    final raw = _raw('loginRef');
    return raw;
  }

  bool get loginRefIsSecret => _isSecret('loginRef');

  /// The user's password. Leave empty if using token_value
  String? get password {
    final raw = _raw('password');
    return raw;
  }

  bool get passwordIsSecret => _isSecret('password');

  /// Management Port to connect to Bigip
  String? get port {
    final raw = _raw('port');
    return raw;
  }

  bool get portIsSecret => _isSecret('port');

  /// If this flag set to true,sending telemetry data to TEEM will be disabled
  bool? get teemDisable {
    final raw = _raw('teemDisable');
    return (raw).toBool();
  }

  bool get teemDisableIsSecret => _isSecret('teemDisable');

  /// Enable to use token authentication. Can be set via the BIGIP_TOKEN_AUTH environment variable
  bool? get tokenAuth {
    final raw = _raw('tokenAuth');
    return (raw).toBool();
  }

  bool get tokenAuthIsSecret => _isSecret('tokenAuth');

  /// A lifespan to request for the AS3 auth token, represented as a number of seconds. Default: 1200
  int? get tokenTimeout {
    final raw = _raw('tokenTimeout');
    return (raw).toInt();
  }

  bool get tokenTimeoutIsSecret => _isSecret('tokenTimeout');

  /// A token generated outside the provider, in place of password
  String? get tokenValue {
    final raw = _raw('tokenValue');
    return raw;
  }

  bool get tokenValueIsSecret => _isSecret('tokenValue');

  /// Valid Trusted Certificate path
  String? get trustedCertPath {
    final raw = _raw('trustedCertPath');
    return raw;
  }

  bool get trustedCertPathIsSecret => _isSecret('trustedCertPath');

  /// Username with API access to the BigIP
  String? get username {
    final raw = _raw('username');
    return raw;
  }

  bool get usernameIsSecret => _isSecret('username');

  /// If set to true, Disables TLS certificate check on BIG-IP. Default : True
  bool? get validateCertsDisable {
    final raw = _raw('validateCertsDisable');
    return (raw).toBool();
  }

  bool get validateCertsDisableIsSecret => _isSecret('validateCertsDisable');

}

final config = F5bigipConfig();

