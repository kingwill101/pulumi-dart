// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication with session cookie.
class SessionAuthModel {
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

  /// Creates a new [SessionAuthModel].
  /// [headers] HTTP request headers to session service endpoint.
  /// [isPostPayloadJson] Indicating whether API key is set in HTTP POST payload.
  /// [password] The password attribute name.
  /// [queryParameters] Query parameters to session service endpoint.
  /// [sessionIdName] Session id attribute name from HTTP response header.
  /// [sessionLoginRequestUri] HTTP request URL to session service endpoint.
  /// [sessionTimeoutInMinutes] Session timeout in minutes.
  /// [type] Type of paging
  /// [userName] The user name attribute key value.
  SessionAuthModel({
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

  factory SessionAuthModel.fromMap(Map<String, dynamic> map) {
    return SessionAuthModel(
      headers: (() {
        final guardedValue = map['headers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      isPostPayloadJson: (() {
        final guardedValue = map['isPostPayloadJson'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      password: pulumi.Input.fromValue(
        (map['password'] as Map).cast<String, String>(),
      ),
      queryParameters: (() {
        final guardedValue = map['queryParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sessionIdName: (() {
        final guardedValue = map['sessionIdName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionLoginRequestUri: (() {
        final guardedValue = map['sessionLoginRequestUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionTimeoutInMinutes: (() {
        final guardedValue = map['sessionTimeoutInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: pulumi.Input.fromValue(
        (map['userName'] as Map).cast<String, String>(),
      ),
    );
  }
}
