// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication with JWT. Simple exchange between user name + password to access token.
class JwtAuthModel {
  /// The custom headers we want to add once we send request to token endpoint.
  final pulumi.Input<Map<String, String>?>? headers;
  /// Flag indicating whether we want to send the user name and password to token endpoint in the headers.
  final pulumi.Input<bool?>? isCredentialsInHeaders;
  /// Flag indicating whether the body request is JSON (header Content-Type = application/json), meaning its a Form URL encoded request (header Content-Type = application/x-www-form-urlencoded).
  final pulumi.Input<bool?>? isJsonRequest;
  /// The password
  final pulumi.Input<Map<String, String>> password;
  /// The custom query parameter we want to add once we send request to token endpoint.
  final pulumi.Input<Map<String, String>?>? queryParameters;
  /// Request timeout in seconds.
  final pulumi.Input<int?>? requestTimeoutInSeconds;
  /// Token endpoint to request JWT
  final pulumi.Input<String> tokenEndpoint;
  /// Type of paging
  /// Expected value is 'JwtToken'.
  final pulumi.Input<String> type;
  /// The user name. If user name and password sent in header request we only need to populate the `value` property with the user name (Same as basic auth). If user name and password sent in body request we need to specify the `Key` and `Value`.
  final pulumi.Input<Map<String, String>> userName;

  /// Creates a new [JwtAuthModel].
  /// [headers] The custom headers we want to add once we send request to token endpoint.
  /// [isCredentialsInHeaders] Flag indicating whether we want to send the user name and password to token endpoint in the headers.
  /// [isJsonRequest] Flag indicating whether the body request is JSON (header Content-Type = application/json), meaning its a Form URL encoded request (header Content-Type = application/x-www-form-urlencoded).
  /// [password] The password
  /// [queryParameters] The custom query parameter we want to add once we send request to token endpoint.
  /// [requestTimeoutInSeconds] Request timeout in seconds.
  /// [tokenEndpoint] Token endpoint to request JWT
  /// [type] Type of paging
  /// [userName] The user name. If user name and password sent in header request we only need to populate the `value` property with the user name (Same as basic auth). If user name and password sent in body request we need to specify the `Key` and `Value`.
  JwtAuthModel({
    this.headers,
    this.isCredentialsInHeaders,
    pulumi.Input<bool?>? isJsonRequest,
    required this.password,
    this.queryParameters,
    pulumi.Input<int?>? requestTimeoutInSeconds,
    required this.tokenEndpoint,
    required this.type,
    required this.userName,
  }) : isJsonRequest = isJsonRequest ?? pulumi.Input.fromValue(false), requestTimeoutInSeconds = requestTimeoutInSeconds ?? pulumi.Input.fromValue(100);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers,
      'isCredentialsInHeaders': ?isCredentialsInHeaders,
      'isJsonRequest': ?isJsonRequest,
      'password': password,
      'queryParameters': ?queryParameters,
      'requestTimeoutInSeconds': ?requestTimeoutInSeconds,
      'tokenEndpoint': tokenEndpoint,
      'type': type,
      'userName': userName,
    };
  }

  factory JwtAuthModel.fromMap(Map<String, dynamic> map) {
    return JwtAuthModel(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      isCredentialsInHeaders: (() { final guardedValue = map['isCredentialsInHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isJsonRequest: (() { final guardedValue = map['isJsonRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      password: pulumi.Input.fromValue((map['password'] as Map).cast<String, String>()),
      queryParameters: (() { final guardedValue = map['queryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      requestTimeoutInSeconds: (() { final guardedValue = map['requestTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tokenEndpoint: pulumi.Input.fromValue(map['tokenEndpoint'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: pulumi.Input.fromValue((map['userName'] as Map).cast<String, String>()),
    );
  }
}
