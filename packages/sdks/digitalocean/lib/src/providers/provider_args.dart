// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// The URL to use for the DigitalOcean API.
  final pulumi.Input<String>? apiEndpoint;
  /// The maximum number of retries on a failed API request.
  final pulumi.Input<int>? httpRetryMax;
  /// The maximum wait time (in seconds) between failed API requests.
  final pulumi.Input<double>? httpRetryWaitMax;
  /// The minimum wait time (in seconds) between failed API requests.
  final pulumi.Input<double>? httpRetryWaitMin;
  /// The rate of requests per second to limit the HTTP client.
  final pulumi.Input<double>? requestsPerSecond;
  /// The access key ID for Spaces API operations.
  final pulumi.Input<String>? spacesAccessId;
  /// The URL to use for the DigitalOcean Spaces API.
  final pulumi.Input<String>? spacesEndpoint;
  /// The secret access key for Spaces API operations.
  final pulumi.Input<String>? spacesSecretKey;
  /// The token key for API operations.
  final pulumi.Input<String>? token;

  /// Creates a new [ProviderArgs].
  /// [apiEndpoint] The URL to use for the DigitalOcean API.
  /// [httpRetryMax] The maximum number of retries on a failed API request.
  /// [httpRetryWaitMax] The maximum wait time (in seconds) between failed API requests.
  /// [httpRetryWaitMin] The minimum wait time (in seconds) between failed API requests.
  /// [requestsPerSecond] The rate of requests per second to limit the HTTP client.
  /// [spacesAccessId] The access key ID for Spaces API operations.
  /// [spacesEndpoint] The URL to use for the DigitalOcean Spaces API.
  /// [spacesSecretKey] The secret access key for Spaces API operations.
  /// [token] The token key for API operations.
  ProviderArgs({
    this.apiEndpoint,
    this.httpRetryMax,
    this.httpRetryWaitMax,
    this.httpRetryWaitMin,
    this.requestsPerSecond,
    this.spacesAccessId,
    this.spacesEndpoint,
    this.spacesSecretKey,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoint': ?apiEndpoint,
      'httpRetryMax': ?httpRetryMax,
      'httpRetryWaitMax': ?httpRetryWaitMax,
      'httpRetryWaitMin': ?httpRetryWaitMin,
      'requestsPerSecond': ?requestsPerSecond,
      'spacesAccessId': ?spacesAccessId,
      'spacesEndpoint': ?spacesEndpoint,
      'spacesSecretKey': ?spacesSecretKey,
      'token': ?token,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      apiEndpoint: (() { final guardedValue = map['apiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpRetryMax: (() { final guardedValue = map['httpRetryMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpRetryWaitMax: (() { final guardedValue = map['httpRetryWaitMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      httpRetryWaitMin: (() { final guardedValue = map['httpRetryWaitMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      requestsPerSecond: (() { final guardedValue = map['requestsPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      spacesAccessId: (() { final guardedValue = map['spacesAccessId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spacesEndpoint: (() { final guardedValue = map['spacesEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spacesSecretKey: (() { final guardedValue = map['spacesSecretKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

