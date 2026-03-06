// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the hcloud package.
class HcloudConfig {
  const HcloudConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// The Hetzner Cloud API endpoint, can be used to override the default API Endpoint https://api.hetzner.cloud/v1.
  String? get endpoint {
    final raw = _raw('endpoint');
    return raw;
  }

  bool get endpointIsSecret => _isSecret('endpoint');

  /// The Hetzner API endpoint, can be used to override the default API Endpoint https://api.hetzner.com/v1.
  String? get endpointHetzner {
    final raw = _raw('endpointHetzner');
    return raw;
  }

  bool get endpointHetznerIsSecret => _isSecret('endpointHetzner');

  /// The type of function to be used during the polling.
  String? get pollFunction {
    final raw = _raw('pollFunction');
    return raw;
  }

  bool get pollFunctionIsSecret => _isSecret('pollFunction');

  /// The interval at which actions are polled by the client. Default `500ms`. Increase this interval if you run into rate limiting errors.
  String? get pollInterval {
    final raw = _raw('pollInterval');
    return raw;
  }

  bool get pollIntervalIsSecret => _isSecret('pollInterval');

  /// The Hetzner Cloud API token, can also be specified with the HCLOUD_TOKEN environment variable.
  String? get token {
    final raw = _raw('token');
    return raw;
  }

  bool get tokenIsSecret => _isSecret('token');

}

const config = HcloudConfig();

