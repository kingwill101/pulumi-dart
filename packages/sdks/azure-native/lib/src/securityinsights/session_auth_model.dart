// ignore_for_file: unused_element, unnecessary_cast


/// Model for API authentication with session cookie.
class SessionAuthModel {
  /// HTTP request headers to session service endpoint.
  final Map<String, String>? headers;
  /// Indicating whether API key is set in HTTP POST payload.
  final bool? isPostPayloadJson;
  /// The password attribute name.
  final Map<String, String> password;
  /// Query parameters to session service endpoint.
  final dynamic queryParameters;
  /// Session id attribute name from HTTP response header.
  final String? sessionIdName;
  /// HTTP request URL to session service endpoint.
  final String? sessionLoginRequestUri;
  /// Session timeout in minutes.
  final int? sessionTimeoutInMinutes;
  /// Type of paging
  /// Expected value is 'Session'.
  final String type;
  /// The user name attribute key value.
  final Map<String, String> userName;

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
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, String>(),
      isPostPayloadJson: map['isPostPayloadJson'] == null ? null : map['isPostPayloadJson'] as bool,
      password: (map['password'] as Map).cast<String, String>(),
      queryParameters: map['queryParameters'] == null ? null : map['queryParameters'],
      sessionIdName: map['sessionIdName'] == null ? null : map['sessionIdName'] as String,
      sessionLoginRequestUri: map['sessionLoginRequestUri'] == null ? null : map['sessionLoginRequestUri'] as String,
      sessionTimeoutInMinutes: map['sessionTimeoutInMinutes'] == null ? null : map['sessionTimeoutInMinutes'] as int,
      type: map['type'] as String,
      userName: (map['userName'] as Map).cast<String, String>(),
    );
  }
}

