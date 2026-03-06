// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  final pulumi.Input<String>? accountId;
  final pulumi.Input<String>? adminApiKey;
  final pulumi.Input<String>? apiKey;
  final pulumi.Input<String>? apiUrl;
  final pulumi.Input<String>? cacertFile;
  final pulumi.Input<String>? infrastructureApiUrl;
  final pulumi.Input<bool>? insecureSkipVerify;
  final pulumi.Input<String>? insightsInsertKey;
  final pulumi.Input<String>? insightsInsertUrl;
  final pulumi.Input<String>? insightsQueryUrl;
  final pulumi.Input<String>? nerdgraphApiUrl;
  /// The data center for which your New Relic account is configured. Only one region per provider block is permitted.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? syntheticsApiUrl;

  /// Creates a new [ProviderArgs].
  /// [accountId] Optional.
  /// [adminApiKey] Optional.
  /// [apiKey] Optional.
  /// [apiUrl] Optional.
  /// [cacertFile] Optional.
  /// [infrastructureApiUrl] Optional.
  /// [insecureSkipVerify] Optional.
  /// [insightsInsertKey] Optional.
  /// [insightsInsertUrl] Optional.
  /// [insightsQueryUrl] Optional.
  /// [nerdgraphApiUrl] Optional.
  /// [region] The data center for which your New Relic account is configured. Only one region per provider block is permitted.
  /// [syntheticsApiUrl] Optional.
  const ProviderArgs({
    this.accountId,
    this.adminApiKey,
    this.apiKey,
    this.apiUrl,
    this.cacertFile,
    this.infrastructureApiUrl,
    this.insecureSkipVerify,
    this.insightsInsertKey,
    this.insightsInsertUrl,
    this.insightsQueryUrl,
    this.nerdgraphApiUrl,
    this.region,
    this.syntheticsApiUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'adminApiKey': ?adminApiKey,
      'apiKey': ?apiKey,
      'apiUrl': ?apiUrl,
      'cacertFile': ?cacertFile,
      'infrastructureApiUrl': ?infrastructureApiUrl,
      'insecureSkipVerify': ?insecureSkipVerify,
      'insightsInsertKey': ?insightsInsertKey,
      'insightsInsertUrl': ?insightsInsertUrl,
      'insightsQueryUrl': ?insightsQueryUrl,
      'nerdgraphApiUrl': ?nerdgraphApiUrl,
      'region': ?region,
      'syntheticsApiUrl': ?syntheticsApiUrl,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminApiKey: (() { final guardedValue = map['adminApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiUrl: (() { final guardedValue = map['apiUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacertFile: (() { final guardedValue = map['cacertFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infrastructureApiUrl: (() { final guardedValue = map['infrastructureApiUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      insecureSkipVerify: (() { final guardedValue = map['insecureSkipVerify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      insightsInsertKey: (() { final guardedValue = map['insightsInsertKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      insightsInsertUrl: (() { final guardedValue = map['insightsInsertUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      insightsQueryUrl: (() { final guardedValue = map['insightsQueryUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nerdgraphApiUrl: (() { final guardedValue = map['nerdgraphApiUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syntheticsApiUrl: (() { final guardedValue = map['syntheticsApiUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

