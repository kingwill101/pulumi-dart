// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the pulumiservice package.
class PulumiserviceConfig {
  const PulumiserviceConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// Access token to authenticate with Pulumi Cloud. Optional: if unset, the provider uses the `PULUMI_ACCESS_TOKEN` environment variable, then the access token of the account you're logged in to with `pulumi login`.
  String? get accessToken {
    final raw = _raw('accessToken');
    return raw;
  }

  bool get accessTokenIsSecret => _isSecret('accessToken');

  /// Optional override of Pulumi Cloud API endpoint.
  String? get apiUrl {
    final raw = _raw('apiUrl');
    return raw;
  }

  bool get apiUrlIsSecret => _isSecret('apiUrl');

}

const config = PulumiserviceConfig();
