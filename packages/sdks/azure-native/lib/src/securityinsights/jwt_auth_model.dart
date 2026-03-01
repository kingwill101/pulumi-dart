// ignore_for_file: unused_element, unnecessary_cast


/// Model for API authentication with JWT. Simple exchange between user name + password to access token.
class JwtAuthModel {
  /// The custom headers we want to add once we send request to token endpoint.
  final Map<String, String>? headers;
  /// Flag indicating whether we want to send the user name and password to token endpoint in the headers.
  final bool? isCredentialsInHeaders;
  /// Flag indicating whether the body request is JSON (header Content-Type = application/json), meaning its a Form URL encoded request (header Content-Type = application/x-www-form-urlencoded).
  final bool? isJsonRequest;
  /// The password
  final Map<String, String> password;
  /// The custom query parameter we want to add once we send request to token endpoint.
  final Map<String, String>? queryParameters;
  /// Request timeout in seconds.
  final int? requestTimeoutInSeconds;
  /// Token endpoint to request JWT
  final String tokenEndpoint;
  /// Type of paging
  /// Expected value is 'JwtToken'.
  final String type;
  /// The user name. If user name and password sent in header request we only need to populate the `value` property with the user name (Same as basic auth). If user name and password sent in body request we need to specify the `Key` and `Value`.
  final Map<String, String> userName;

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
    this.isJsonRequest,
    required this.password,
    this.queryParameters,
    this.requestTimeoutInSeconds,
    required this.tokenEndpoint,
    required this.type,
    required this.userName,
  });

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
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, String>(),
      isCredentialsInHeaders: map['isCredentialsInHeaders'] == null ? null : map['isCredentialsInHeaders'] as bool,
      isJsonRequest: map['isJsonRequest'] == null ? null : map['isJsonRequest'] as bool,
      password: (map['password'] as Map).cast<String, String>(),
      queryParameters: map['queryParameters'] == null ? null : (map['queryParameters'] as Map).cast<String, String>(),
      requestTimeoutInSeconds: map['requestTimeoutInSeconds'] == null ? null : map['requestTimeoutInSeconds'] as int,
      tokenEndpoint: map['tokenEndpoint'] as String,
      type: map['type'] as String,
      userName: (map['userName'] as Map).cast<String, String>(),
    );
  }
}

