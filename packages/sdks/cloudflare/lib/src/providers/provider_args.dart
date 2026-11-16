// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// The API key for operations. Alternatively, can be configured using the `CLOUDFLARE_API_KEY` environment variable. API keys are [now considered legacy by Cloudflare](https://developers.cloudflare.com/fundamentals/api/get-started/keys/#limitations), API tokens should be used instead. Must provide only one of `apiKey`, `apiToken`, `apiUserServiceKey`.
  final pulumi.Input<String?>? apiKey;
  /// The API Token for operations. Alternatively, can be configured using the `CLOUDFLARE_API_TOKEN` environment variable. Must provide only one of `apiKey`, `apiToken`, `apiUserServiceKey`.
  final pulumi.Input<String?>? apiToken;
  /// A special Cloudflare API key good for a restricted set of endpoints. Alternatively, can be configured using the `CLOUDFLARE_API_USER_SERVICE_KEY` environment variable. Must provide only one of `apiKey`, `apiToken`, `apiUserServiceKey`.
  final pulumi.Input<String?>? apiUserServiceKey;
  /// Value to override the default HTTP client base URL. Alternatively, can be configured using the `baseUrl` environment variable.
  final pulumi.Input<String?>? baseUrl;
  /// A registered Cloudflare email address. Alternatively, can be configured using the `CLOUDFLARE_EMAIL` environment variable. Required when using `apiKey`. Conflicts with `apiToken`.
  final pulumi.Input<String?>? email;
  /// A value appended to the HTTP User Agent sent with every API call, used to identify the tool making the request. Defaults to `pulumi/&lt;version&gt;`. Set it to a value of your own to identify your traffic differently, or to the empty string to remove the Pulumi identifier entirely. Alternatively, can be configured using the `CLOUDFLARE_USER_AGENT_OPERATOR_SUFFIX` environment variable.
  final pulumi.Input<String?>? userAgentOperatorSuffix;

  /// Creates a new [ProviderArgs].
  /// [apiKey] The API key for operations. Alternatively, can be configured using the `CLOUDFLARE_API_KEY` environment variable. API keys are [now considered legacy by Cloudflare](https://developers.cloudflare.com/fundamentals/api/get-started/keys/#limitations), API tokens should be used instead. Must provide only one of `apiKey`, `apiToken`, `apiUserServiceKey`.
  /// [apiToken] The API Token for operations. Alternatively, can be configured using the `CLOUDFLARE_API_TOKEN` environment variable. Must provide only one of `apiKey`, `apiToken`, `apiUserServiceKey`.
  /// [apiUserServiceKey] A special Cloudflare API key good for a restricted set of endpoints. Alternatively, can be configured using the `CLOUDFLARE_API_USER_SERVICE_KEY` environment variable. Must provide only one of `apiKey`, `apiToken`, `apiUserServiceKey`.
  /// [baseUrl] Value to override the default HTTP client base URL. Alternatively, can be configured using the `baseUrl` environment variable.
  /// [email] A registered Cloudflare email address. Alternatively, can be configured using the `CLOUDFLARE_EMAIL` environment variable. Required when using `apiKey`. Conflicts with `apiToken`.
  /// [userAgentOperatorSuffix] A value appended to the HTTP User Agent sent with every API call, used to identify the tool making the request. Defaults to `pulumi/&lt;version&gt;`. Set it to a value of your own to identify your traffic differently, or to the empty string to remove the Pulumi identifier entirely. Alternatively, can be configured using the `CLOUDFLARE_USER_AGENT_OPERATOR_SUFFIX` environment variable.
  const ProviderArgs({
    this.apiKey,
    this.apiToken,
    this.apiUserServiceKey,
    this.baseUrl,
    this.email,
    this.userAgentOperatorSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'apiToken': ?apiToken,
      'apiUserServiceKey': ?apiUserServiceKey,
      'baseUrl': ?baseUrl,
      'email': ?email,
      'userAgentOperatorSuffix': ?userAgentOperatorSuffix,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiToken: (() { final guardedValue = map['apiToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiUserServiceKey: (() { final guardedValue = map['apiUserServiceKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baseUrl: (() { final guardedValue = map['baseUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAgentOperatorSuffix: (() { final guardedValue = map['userAgentOperatorSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
