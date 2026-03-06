// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The request configuration.
class RestApiPollerRequestConfigResponse {
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

  /// Creates a new [RestApiPollerRequestConfigResponse].
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
  const RestApiPollerRequestConfigResponse({
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

  factory RestApiPollerRequestConfigResponse.fromMap(Map<String, dynamic> map) {
    return RestApiPollerRequestConfigResponse(
      apiEndpoint: pulumi.Input.fromValue(map['apiEndpoint'] as String),
      endTimeAttributeName: (() { final guardedValue = map['endTimeAttributeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPostPayloadJson: (() { final guardedValue = map['isPostPayloadJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      queryParameters: (() { final guardedValue = map['queryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      queryParametersTemplate: (() { final guardedValue = map['queryParametersTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryTimeFormat: (() { final guardedValue = map['queryTimeFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryTimeIntervalAttributeName: (() { final guardedValue = map['queryTimeIntervalAttributeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryTimeIntervalDelimiter: (() { final guardedValue = map['queryTimeIntervalDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryTimeIntervalPrepend: (() { final guardedValue = map['queryTimeIntervalPrepend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryWindowInMin: (() { final guardedValue = map['queryWindowInMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rateLimitQPS: (() { final guardedValue = map['rateLimitQPS']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retryCount: (() { final guardedValue = map['retryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startTimeAttributeName: (() { final guardedValue = map['startTimeAttributeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

