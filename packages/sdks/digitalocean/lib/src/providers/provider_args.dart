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
    pulumi.Output<String>? apiEndpoint,
    pulumi.Output<int>? httpRetryMax,
    pulumi.Output<double>? httpRetryWaitMax,
    pulumi.Output<double>? httpRetryWaitMin,
    pulumi.Output<double>? requestsPerSecond,
    pulumi.Output<String>? spacesAccessId,
    pulumi.Output<String>? spacesEndpoint,
    pulumi.Output<String>? spacesSecretKey,
    pulumi.Output<String>? token,
  }) :
      apiEndpoint = pulumi.Input.asOptionalInput<String>(apiEndpoint),
      httpRetryMax = pulumi.Input.asOptionalInput<int>(httpRetryMax),
      httpRetryWaitMax = pulumi.Input.asOptionalInput<double>(httpRetryWaitMax),
      httpRetryWaitMin = pulumi.Input.asOptionalInput<double>(httpRetryWaitMin),
      requestsPerSecond = pulumi.Input.asOptionalInput<double>(requestsPerSecond),
      spacesAccessId = pulumi.Input.asOptionalInput<String>(spacesAccessId),
      spacesEndpoint = pulumi.Input.asOptionalInput<String>(spacesEndpoint),
      spacesSecretKey = pulumi.Input.asOptionalInput<String>(spacesSecretKey),
      token = pulumi.Input.asOptionalInput<String>(token);

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
      apiEndpoint: map['apiEndpoint'] == null ? null : pulumi.Output.create<String>(map['apiEndpoint'] as String),
      httpRetryMax: map['httpRetryMax'] == null ? null : pulumi.Output.create<int>(map['httpRetryMax'] as int),
      httpRetryWaitMax: map['httpRetryWaitMax'] == null ? null : pulumi.Output.create<double>(map['httpRetryWaitMax'] as double),
      httpRetryWaitMin: map['httpRetryWaitMin'] == null ? null : pulumi.Output.create<double>(map['httpRetryWaitMin'] as double),
      requestsPerSecond: map['requestsPerSecond'] == null ? null : pulumi.Output.create<double>(map['requestsPerSecond'] as double),
      spacesAccessId: map['spacesAccessId'] == null ? null : pulumi.Output.create<String>(map['spacesAccessId'] as String),
      spacesEndpoint: map['spacesEndpoint'] == null ? null : pulumi.Output.create<String>(map['spacesEndpoint'] as String),
      spacesSecretKey: map['spacesSecretKey'] == null ? null : pulumi.Output.create<String>(map['spacesSecretKey'] as String),
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
    );
  }
}

