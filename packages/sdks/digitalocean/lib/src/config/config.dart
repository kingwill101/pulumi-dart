// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the digitalocean package.
class DigitaloceanConfig {
  const DigitaloceanConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// The URL to use for the DigitalOcean API.
  String? get apiEndpoint {
    final raw = _raw('apiEndpoint');
    return raw;
  }

  String requireApiEndpoint() {
    final value = apiEndpoint;
    if (value == null) {
      throw ArgumentError("Missing required config value 'apiEndpoint'.");
    }
    return value;
  }

  bool get apiEndpointIsSecret => _isSecret('apiEndpoint');

  /// The maximum number of retries on a failed API request.
  int? get httpRetryMax {
    final raw = _raw('httpRetryMax');
    return (raw).toInt();
  }

  bool get httpRetryMaxIsSecret => _isSecret('httpRetryMax');

  /// The maximum wait time (in seconds) between failed API requests.
  double? get httpRetryWaitMax {
    final raw = _raw('httpRetryWaitMax');
    return (raw).toDouble();
  }

  bool get httpRetryWaitMaxIsSecret => _isSecret('httpRetryWaitMax');

  /// The minimum wait time (in seconds) between failed API requests.
  double? get httpRetryWaitMin {
    final raw = _raw('httpRetryWaitMin');
    return (raw).toDouble();
  }

  bool get httpRetryWaitMinIsSecret => _isSecret('httpRetryWaitMin');

  /// The rate of requests per second to limit the HTTP client.
  double? get requestsPerSecond {
    final raw = _raw('requestsPerSecond');
    return (raw).toDouble();
  }

  bool get requestsPerSecondIsSecret => _isSecret('requestsPerSecond');

  /// The access key ID for Spaces API operations.
  String? get spacesAccessId {
    final raw = _raw('spacesAccessId');
    return raw;
  }

  bool get spacesAccessIdIsSecret => _isSecret('spacesAccessId');

  /// The URL to use for the DigitalOcean Spaces API.
  String? get spacesEndpoint {
    final raw = _raw('spacesEndpoint');
    return raw;
  }

  bool get spacesEndpointIsSecret => _isSecret('spacesEndpoint');

  /// The secret access key for Spaces API operations.
  String? get spacesSecretKey {
    final raw = _raw('spacesSecretKey');
    return raw;
  }

  bool get spacesSecretKeyIsSecret => _isSecret('spacesSecretKey');

  /// The token key for API operations.
  String? get token {
    final raw = _raw('token');
    return raw;
  }

  bool get tokenIsSecret => _isSecret('token');

}

const config = DigitaloceanConfig();

