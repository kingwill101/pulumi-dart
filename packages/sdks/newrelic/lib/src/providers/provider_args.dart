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
  ProviderArgs({
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
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      adminApiKey: map['adminApiKey'] == null ? null : (map['adminApiKey'] as String).input(),
      apiKey: map['apiKey'] == null ? null : (map['apiKey'] as String).input(),
      apiUrl: map['apiUrl'] == null ? null : (map['apiUrl'] as String).input(),
      cacertFile: map['cacertFile'] == null ? null : (map['cacertFile'] as String).input(),
      infrastructureApiUrl: map['infrastructureApiUrl'] == null ? null : (map['infrastructureApiUrl'] as String).input(),
      insecureSkipVerify: map['insecureSkipVerify'] == null ? null : (map['insecureSkipVerify'] as bool).input(),
      insightsInsertKey: map['insightsInsertKey'] == null ? null : (map['insightsInsertKey'] as String).input(),
      insightsInsertUrl: map['insightsInsertUrl'] == null ? null : (map['insightsInsertUrl'] as String).input(),
      insightsQueryUrl: map['insightsQueryUrl'] == null ? null : (map['insightsQueryUrl'] as String).input(),
      nerdgraphApiUrl: map['nerdgraphApiUrl'] == null ? null : (map['nerdgraphApiUrl'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      syntheticsApiUrl: map['syntheticsApiUrl'] == null ? null : (map['syntheticsApiUrl'] as String).input(),
    );
  }
}

