// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// Access token to authenticate with Pulumi Cloud. Optional: if unset, the provider uses the `PULUMI_ACCESS_TOKEN` environment variable, then the access token of the account you're logged in to with `pulumi login`.
  final pulumi.Input<String?>? accessToken;
  /// Optional override of Pulumi Cloud API endpoint.
  final pulumi.Input<String?>? apiUrl;

  /// Creates a new [ProviderArgs].
  /// [accessToken] Access token to authenticate with Pulumi Cloud. Optional: if unset, the provider uses the `PULUMI_ACCESS_TOKEN` environment variable, then the access token of the account you're logged in to with `pulumi login`.
  /// [apiUrl] Optional override of Pulumi Cloud API endpoint.
  ProviderArgs({
    this.accessToken,
    pulumi.Input<String?>? apiUrl,
  }) : apiUrl = apiUrl ?? pulumi.Input.fromValue('https://api.pulumi.com');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'apiUrl': ?apiUrl,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiUrl: (() { final guardedValue = map['apiUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
