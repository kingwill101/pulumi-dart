// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication with session cookie.
class SessionAuthModelResponse {
  /// HTTP request headers to session service endpoint.
  final pulumi.Input<Map<String, String>>? headers;
  /// Indicating whether API key is set in HTTP POST payload.
  final pulumi.Input<bool>? isPostPayloadJson;
  /// The password attribute name.
  final pulumi.Input<Map<String, String>> password;
  /// Query parameters to session service endpoint.
  final pulumi.Input<dynamic>? queryParameters;
  /// Session id attribute name from HTTP response header.
  final pulumi.Input<String>? sessionIdName;
  /// HTTP request URL to session service endpoint.
  final pulumi.Input<String>? sessionLoginRequestUri;
  /// Session timeout in minutes.
  final pulumi.Input<int>? sessionTimeoutInMinutes;
  /// Type of paging
  /// Expected value is 'Session'.
  final pulumi.Input<String> type;
  /// The user name attribute key value.
  final pulumi.Input<Map<String, String>> userName;

  /// Creates a new [SessionAuthModelResponse].
  /// [headers] HTTP request headers to session service endpoint.
  /// [isPostPayloadJson] Indicating whether API key is set in HTTP POST payload.
  /// [password] The password attribute name.
  /// [queryParameters] Query parameters to session service endpoint.
  /// [sessionIdName] Session id attribute name from HTTP response header.
  /// [sessionLoginRequestUri] HTTP request URL to session service endpoint.
  /// [sessionTimeoutInMinutes] Session timeout in minutes.
  /// [type] Type of paging
  /// [userName] The user name attribute key value.
  SessionAuthModelResponse({
    this.headers,
    this.isPostPayloadJson,
    required this.password,
    this.queryParameters,
    this.sessionIdName,
    this.sessionLoginRequestUri,
    this.sessionTimeoutInMinutes,
    required this.type,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers,
      'isPostPayloadJson': ?isPostPayloadJson,
      'password': password,
      'queryParameters': ?queryParameters,
      'sessionIdName': ?sessionIdName,
      'sessionLoginRequestUri': ?sessionLoginRequestUri,
      'sessionTimeoutInMinutes': ?sessionTimeoutInMinutes,
      'type': type,
      'userName': userName,
    };
  }

  factory SessionAuthModelResponse.fromMap(Map<String, dynamic> map) {
    return SessionAuthModelResponse(
      headers: map['headers'] == null ? null : ((map['headers'] as Map).cast<String, String>()).input(),
      isPostPayloadJson: map['isPostPayloadJson'] == null ? null : (map['isPostPayloadJson'] as bool).input(),
      password: ((map['password'] as Map).cast<String, String>()).input(),
      queryParameters: map['queryParameters'] == null ? null : (map['queryParameters']).input(),
      sessionIdName: map['sessionIdName'] == null ? null : (map['sessionIdName'] as String).input(),
      sessionLoginRequestUri: map['sessionLoginRequestUri'] == null ? null : (map['sessionLoginRequestUri'] as String).input(),
      sessionTimeoutInMinutes: map['sessionTimeoutInMinutes'] == null ? null : (map['sessionTimeoutInMinutes'] as int).input(),
      type: (map['type'] as String).input(),
      userName: ((map['userName'] as Map).cast<String, String>()).input(),
    );
  }
}

