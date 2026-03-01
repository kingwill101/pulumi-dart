// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// Access Token to authenticate with Pulumi Cloud.
  final pulumi.Input<String>? accessToken;
  /// Optional override of Pulumi Cloud API endpoint.
  final pulumi.Input<String>? apiUrl;

  /// Creates a new [ProviderArgs].
  /// [accessToken] Access Token to authenticate with Pulumi Cloud.
  /// [apiUrl] Optional override of Pulumi Cloud API endpoint.
  ProviderArgs({
    pulumi.Output<String>? accessToken,
    pulumi.Output<String>? apiUrl,
  }) :
      accessToken = pulumi.Input.asOptionalInput<String>(accessToken),
      apiUrl = pulumi.Input.asOptionalInput<String>(apiUrl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'apiUrl': ?apiUrl,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      accessToken: map['accessToken'] == null ? null : pulumi.Output.create<String>(map['accessToken'] as String),
      apiUrl: map['apiUrl'] == null ? null : pulumi.Output.create<String>(map['apiUrl'] as String),
    );
  }
}

