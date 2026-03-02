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
      apiEndpoint: map['apiEndpoint'] == null ? null : (map['apiEndpoint'] as String).input(),
      httpRetryMax: map['httpRetryMax'] == null ? null : (map['httpRetryMax'] as int).input(),
      httpRetryWaitMax: map['httpRetryWaitMax'] == null ? null : (map['httpRetryWaitMax'] as double).input(),
      httpRetryWaitMin: map['httpRetryWaitMin'] == null ? null : (map['httpRetryWaitMin'] as double).input(),
      requestsPerSecond: map['requestsPerSecond'] == null ? null : (map['requestsPerSecond'] as double).input(),
      spacesAccessId: map['spacesAccessId'] == null ? null : (map['spacesAccessId'] as String).input(),
      spacesEndpoint: map['spacesEndpoint'] == null ? null : (map['spacesEndpoint'] as String).input(),
      spacesSecretKey: map['spacesSecretKey'] == null ? null : (map['spacesSecretKey'] as String).input(),
      token: map['token'] == null ? null : (map['token'] as String).input(),
    );
  }
}

