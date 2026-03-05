// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the newrelic package.
class NewrelicConfig {
  const NewrelicConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  String? get accountId {
    final raw = _raw('accountId');
    return raw;
  }

  String requireAccountId() {
    final value = accountId;
    if (value == null) {
      throw ArgumentError("Missing required config value 'accountId'.");
    }
    return value;
  }

  bool get accountIdIsSecret => _isSecret('accountId');

  String? get adminApiKey {
    final raw = _raw('adminApiKey');
    return raw;
  }

  bool get adminApiKeyIsSecret => _isSecret('adminApiKey');

  String? get apiKey {
    final raw = _raw('apiKey');
    return raw;
  }

  String requireApiKey() {
    final value = apiKey;
    if (value == null) {
      throw ArgumentError("Missing required config value 'apiKey'.");
    }
    return value;
  }

  bool get apiKeyIsSecret => _isSecret('apiKey');

  String? get apiUrl {
    final raw = _raw('apiUrl');
    return raw;
  }

  bool get apiUrlIsSecret => _isSecret('apiUrl');

  String? get cacertFile {
    final raw = _raw('cacertFile');
    return raw;
  }

  bool get cacertFileIsSecret => _isSecret('cacertFile');

  String? get infrastructureApiUrl {
    final raw = _raw('infrastructureApiUrl');
    return raw;
  }

  bool get infrastructureApiUrlIsSecret => _isSecret('infrastructureApiUrl');

  bool? get insecureSkipVerify {
    final raw = _raw('insecureSkipVerify');
    return (raw).toBool();
  }

  bool get insecureSkipVerifyIsSecret => _isSecret('insecureSkipVerify');

  String? get insightsInsertKey {
    final raw = _raw('insightsInsertKey');
    return raw;
  }

  bool get insightsInsertKeyIsSecret => _isSecret('insightsInsertKey');

  String? get insightsInsertUrl {
    final raw = _raw('insightsInsertUrl');
    return raw;
  }

  bool get insightsInsertUrlIsSecret => _isSecret('insightsInsertUrl');

  String? get insightsQueryUrl {
    final raw = _raw('insightsQueryUrl');
    return raw;
  }

  bool get insightsQueryUrlIsSecret => _isSecret('insightsQueryUrl');

  String? get nerdgraphApiUrl {
    final raw = _raw('nerdgraphApiUrl');
    return raw;
  }

  bool get nerdgraphApiUrlIsSecret => _isSecret('nerdgraphApiUrl');

  /// The data center for which your New Relic account is configured. Only one region per provider block is permitted.
  String? get region {
    final raw = _raw('region');
    return raw;
  }

  bool get regionIsSecret => _isSecret('region');

  String? get syntheticsApiUrl {
    final raw = _raw('syntheticsApiUrl');
    return raw;
  }

  bool get syntheticsApiUrlIsSecret => _isSecret('syntheticsApiUrl');
}

final config = NewrelicConfig();
