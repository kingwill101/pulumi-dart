// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the cloudflare package.
class CloudflareConfig {
  const CloudflareConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// The API key for operations. Alternatively, can be configured using the `CLOUDFLARE_API_KEY` environment variable. API keys are [now considered legacy by Cloudflare](https://developers.cloudflare.com/fundamentals/api/get-started/keys/#limitations), API tokens should be used instead. Must provide only one of `apiKey`, `apiToken`, `apiUserServiceKey`.
  String? get apiKey {
    final raw = _raw('apiKey');
    return raw;
  }

  bool get apiKeyIsSecret => _isSecret('apiKey');

  /// The API Token for operations. Alternatively, can be configured using the `CLOUDFLARE_API_TOKEN` environment variable. Must provide only one of `apiKey`, `apiToken`, `apiUserServiceKey`.
  String? get apiToken {
    final raw = _raw('apiToken');
    return raw;
  }

  bool get apiTokenIsSecret => _isSecret('apiToken');

  /// A special Cloudflare API key good for a restricted set of endpoints. Alternatively, can be configured using the `CLOUDFLARE_API_USER_SERVICE_KEY` environment variable. Must provide only one of `apiKey`, `apiToken`, `apiUserServiceKey`.
  String? get apiUserServiceKey {
    final raw = _raw('apiUserServiceKey');
    return raw;
  }

  bool get apiUserServiceKeyIsSecret => _isSecret('apiUserServiceKey');

  /// Value to override the default HTTP client base URL. Alternatively, can be configured using the `baseUrl` environment variable.
  String? get baseUrl {
    final raw = _raw('baseUrl');
    return raw;
  }

  bool get baseUrlIsSecret => _isSecret('baseUrl');

  /// A registered Cloudflare email address. Alternatively, can be configured using the `CLOUDFLARE_EMAIL` environment variable. Required when using `apiKey`. Conflicts with `apiToken`.
  String? get email {
    final raw = _raw('email');
    return raw;
  }

  bool get emailIsSecret => _isSecret('email');

  /// A value to append to the HTTP User Agent for all API calls. This value is not something most users need to modify however, if you are using a non-standard provider or operator configuration, this is recommended to assist in uniquely identifying your traffic. **Setting this value will remove the Terraform version from the HTTP User Agent string and may have unintended consequences**. Alternatively, can be configured using the `CLOUDFLARE_USER_AGENT_OPERATOR_SUFFIX` environment variable.
  String? get userAgentOperatorSuffix {
    final raw = _raw('userAgentOperatorSuffix');
    return raw;
  }

  bool get userAgentOperatorSuffixIsSecret => _isSecret('userAgentOperatorSuffix');

}

const config = CloudflareConfig();
