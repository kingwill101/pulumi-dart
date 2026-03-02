// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The request configuration.
class RestApiPollerRequestConfig {
  /// The API endpoint.
  final pulumi.Input<String> apiEndpoint;
  /// The query parameter name which the remote server expect to end query. This property goes hand to hand with `startTimeAttributeName`
  final pulumi.Input<String>? endTimeAttributeName;
  /// The header for the request for the remote server.
  final pulumi.Input<Map<String, String>>? headers;
  /// The HTTP method, default value GET.
  final pulumi.Input<String>? httpMethod;
  /// Flag to indicate if HTTP POST payload is in JSON format (vs form-urlencoded).
  final pulumi.Input<bool>? isPostPayloadJson;
  /// The HTTP query parameters to RESTful API.
  final pulumi.Input<dynamic>? queryParameters;
  /// the query parameters template. Defines the query parameters template to use when passing query parameters in advanced scenarios.
  final pulumi.Input<String>? queryParametersTemplate;
  /// The query time format. A remote server can have a query to pull data from range 'start' to 'end'. This property indicate what is the expected time format the remote server know to parse.
  final pulumi.Input<String>? queryTimeFormat;
  /// The query parameter name which we need to send the server for query logs in time interval. Should be defined with `queryTimeIntervalPrepend` and `queryTimeIntervalDelimiter`
  final pulumi.Input<String>? queryTimeIntervalAttributeName;
  /// The delimiter string between 2 QueryTimeFormat in the query parameter `queryTimeIntervalAttributeName`.
  final pulumi.Input<String>? queryTimeIntervalDelimiter;
  /// The string prepend to the value of the query parameter in `queryTimeIntervalAttributeName`.
  final pulumi.Input<String>? queryTimeIntervalPrepend;
  /// The query window in minutes for the request.
  final pulumi.Input<int>? queryWindowInMin;
  /// The Rate limit queries per second for the request..
  final pulumi.Input<int>? rateLimitQPS;
  /// The retry count.
  final pulumi.Input<int>? retryCount;
  /// The query parameter name which the remote server expect to start query. This property goes hand to hand with `endTimeAttributeName`.
  final pulumi.Input<String>? startTimeAttributeName;
  /// The timeout in seconds.
  final pulumi.Input<int>? timeoutInSeconds;

  /// Creates a new [RestApiPollerRequestConfig].
  /// [apiEndpoint] The API endpoint.
  /// [endTimeAttributeName] The query parameter name which the remote server expect to end query. This property goes hand to hand with `startTimeAttributeName`
  /// [headers] The header for the request for the remote server.
  /// [httpMethod] The HTTP method, default value GET.
  /// [isPostPayloadJson] Flag to indicate if HTTP POST payload is in JSON format (vs form-urlencoded).
  /// [queryParameters] The HTTP query parameters to RESTful API.
  /// [queryParametersTemplate] the query parameters template. Defines the query parameters template to use when passing query parameters in advanced scenarios.
  /// [queryTimeFormat] The query time format. A remote server can have a query to pull data from range 'start' to 'end'. This property indicate what is the expected time format the remote server know to parse.
  /// [queryTimeIntervalAttributeName] The query parameter name which we need to send the server for query logs in time interval. Should be defined with `queryTimeIntervalPrepend` and `queryTimeIntervalDelimiter`
  /// [queryTimeIntervalDelimiter] The delimiter string between 2 QueryTimeFormat in the query parameter `queryTimeIntervalAttributeName`.
  /// [queryTimeIntervalPrepend] The string prepend to the value of the query parameter in `queryTimeIntervalAttributeName`.
  /// [queryWindowInMin] The query window in minutes for the request.
  /// [rateLimitQPS] The Rate limit queries per second for the request..
  /// [retryCount] The retry count.
  /// [startTimeAttributeName] The query parameter name which the remote server expect to start query. This property goes hand to hand with `endTimeAttributeName`.
  /// [timeoutInSeconds] The timeout in seconds.
  RestApiPollerRequestConfig({
    required this.apiEndpoint,
    this.endTimeAttributeName,
    this.headers,
    this.httpMethod,
    this.isPostPayloadJson,
    this.queryParameters,
    this.queryParametersTemplate,
    this.queryTimeFormat,
    this.queryTimeIntervalAttributeName,
    this.queryTimeIntervalDelimiter,
    this.queryTimeIntervalPrepend,
    this.queryWindowInMin,
    this.rateLimitQPS,
    this.retryCount,
    this.startTimeAttributeName,
    this.timeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoint': apiEndpoint,
      'endTimeAttributeName': ?endTimeAttributeName,
      'headers': ?headers,
      'httpMethod': ?httpMethod,
      'isPostPayloadJson': ?isPostPayloadJson,
      'queryParameters': ?queryParameters,
      'queryParametersTemplate': ?queryParametersTemplate,
      'queryTimeFormat': ?queryTimeFormat,
      'queryTimeIntervalAttributeName': ?queryTimeIntervalAttributeName,
      'queryTimeIntervalDelimiter': ?queryTimeIntervalDelimiter,
      'queryTimeIntervalPrepend': ?queryTimeIntervalPrepend,
      'queryWindowInMin': ?queryWindowInMin,
      'rateLimitQPS': ?rateLimitQPS,
      'retryCount': ?retryCount,
      'startTimeAttributeName': ?startTimeAttributeName,
      'timeoutInSeconds': ?timeoutInSeconds,
    };
  }

  factory RestApiPollerRequestConfig.fromMap(Map<String, dynamic> map) {
    return RestApiPollerRequestConfig(
      apiEndpoint: (map['apiEndpoint'] as String).input(),
      endTimeAttributeName: map['endTimeAttributeName'] == null ? null : (map['endTimeAttributeName'] as String).input(),
      headers: map['headers'] == null ? null : ((map['headers'] as Map).cast<String, String>()).input(),
      httpMethod: map['httpMethod'] == null ? null : (map['httpMethod'] as String).input(),
      isPostPayloadJson: map['isPostPayloadJson'] == null ? null : (map['isPostPayloadJson'] as bool).input(),
      queryParameters: map['queryParameters'] == null ? null : (map['queryParameters']).input(),
      queryParametersTemplate: map['queryParametersTemplate'] == null ? null : (map['queryParametersTemplate'] as String).input(),
      queryTimeFormat: map['queryTimeFormat'] == null ? null : (map['queryTimeFormat'] as String).input(),
      queryTimeIntervalAttributeName: map['queryTimeIntervalAttributeName'] == null ? null : (map['queryTimeIntervalAttributeName'] as String).input(),
      queryTimeIntervalDelimiter: map['queryTimeIntervalDelimiter'] == null ? null : (map['queryTimeIntervalDelimiter'] as String).input(),
      queryTimeIntervalPrepend: map['queryTimeIntervalPrepend'] == null ? null : (map['queryTimeIntervalPrepend'] as String).input(),
      queryWindowInMin: map['queryWindowInMin'] == null ? null : (map['queryWindowInMin'] as int).input(),
      rateLimitQPS: map['rateLimitQPS'] == null ? null : (map['rateLimitQPS'] as int).input(),
      retryCount: map['retryCount'] == null ? null : (map['retryCount'] as int).input(),
      startTimeAttributeName: map['startTimeAttributeName'] == null ? null : (map['startTimeAttributeName'] as String).input(),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : (map['timeoutInSeconds'] as int).input(),
    );
  }
}

