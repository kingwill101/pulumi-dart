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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? adminApiKey,
    pulumi.Output<String>? apiKey,
    pulumi.Output<String>? apiUrl,
    pulumi.Output<String>? cacertFile,
    pulumi.Output<String>? infrastructureApiUrl,
    pulumi.Output<bool>? insecureSkipVerify,
    pulumi.Output<String>? insightsInsertKey,
    pulumi.Output<String>? insightsInsertUrl,
    pulumi.Output<String>? insightsQueryUrl,
    pulumi.Output<String>? nerdgraphApiUrl,
    pulumi.Output<String>? region,
    pulumi.Output<String>? syntheticsApiUrl,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      adminApiKey = pulumi.Input.asOptionalInput<String>(adminApiKey),
      apiKey = pulumi.Input.asOptionalInput<String>(apiKey),
      apiUrl = pulumi.Input.asOptionalInput<String>(apiUrl),
      cacertFile = pulumi.Input.asOptionalInput<String>(cacertFile),
      infrastructureApiUrl = pulumi.Input.asOptionalInput<String>(infrastructureApiUrl),
      insecureSkipVerify = pulumi.Input.asOptionalInput<bool>(insecureSkipVerify),
      insightsInsertKey = pulumi.Input.asOptionalInput<String>(insightsInsertKey),
      insightsInsertUrl = pulumi.Input.asOptionalInput<String>(insightsInsertUrl),
      insightsQueryUrl = pulumi.Input.asOptionalInput<String>(insightsQueryUrl),
      nerdgraphApiUrl = pulumi.Input.asOptionalInput<String>(nerdgraphApiUrl),
      region = pulumi.Input.asOptionalInput<String>(region),
      syntheticsApiUrl = pulumi.Input.asOptionalInput<String>(syntheticsApiUrl);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      adminApiKey: map['adminApiKey'] == null ? null : pulumi.Output.create<String>(map['adminApiKey'] as String),
      apiKey: map['apiKey'] == null ? null : pulumi.Output.create<String>(map['apiKey'] as String),
      apiUrl: map['apiUrl'] == null ? null : pulumi.Output.create<String>(map['apiUrl'] as String),
      cacertFile: map['cacertFile'] == null ? null : pulumi.Output.create<String>(map['cacertFile'] as String),
      infrastructureApiUrl: map['infrastructureApiUrl'] == null ? null : pulumi.Output.create<String>(map['infrastructureApiUrl'] as String),
      insecureSkipVerify: map['insecureSkipVerify'] == null ? null : pulumi.Output.create<bool>(map['insecureSkipVerify'] as bool),
      insightsInsertKey: map['insightsInsertKey'] == null ? null : pulumi.Output.create<String>(map['insightsInsertKey'] as String),
      insightsInsertUrl: map['insightsInsertUrl'] == null ? null : pulumi.Output.create<String>(map['insightsInsertUrl'] as String),
      insightsQueryUrl: map['insightsQueryUrl'] == null ? null : pulumi.Output.create<String>(map['insightsQueryUrl'] as String),
      nerdgraphApiUrl: map['nerdgraphApiUrl'] == null ? null : pulumi.Output.create<String>(map['nerdgraphApiUrl'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      syntheticsApiUrl: map['syntheticsApiUrl'] == null ? null : pulumi.Output.create<String>(map['syntheticsApiUrl'] as String),
    );
  }
}

