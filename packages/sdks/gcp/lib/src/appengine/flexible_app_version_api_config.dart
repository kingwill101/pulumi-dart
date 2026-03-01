// ignore_for_file: unused_element, unnecessary_cast


class FlexibleAppVersionApiConfig {
  /// Action to take when users access resources that require authentication.
  /// Default value is `AUTH_FAIL_ACTION_REDIRECT`.
  /// Possible values are: `AUTH_FAIL_ACTION_REDIRECT`, `AUTH_FAIL_ACTION_UNAUTHORIZED`.
  final String? authFailAction;
  /// Level of login required to access this resource.
  /// Default value is `LOGIN_OPTIONAL`.
  /// Possible values are: `LOGIN_OPTIONAL`, `LOGIN_ADMIN`, `LOGIN_REQUIRED`.
  final String? login;
  /// Path to the script from the application root directory.
  final String script;
  /// Security (HTTPS) enforcement for this URL.
  /// Possible values are: `SECURE_DEFAULT`, `SECURE_NEVER`, `SECURE_OPTIONAL`, `SECURE_ALWAYS`.
  final String? securityLevel;
  /// URL to serve the endpoint at.
  final String? url;

  /// Creates a new [FlexibleAppVersionApiConfig].
  /// [authFailAction] Action to take when users access resources that require authentication.
  /// [login] Level of login required to access this resource.
  /// [script] Path to the script from the application root directory.
  /// [securityLevel] Security (HTTPS) enforcement for this URL.
  /// [url] URL to serve the endpoint at.
  FlexibleAppVersionApiConfig({
    this.authFailAction,
    this.login,
    required this.script,
    this.securityLevel,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authFailAction': ?authFailAction,
      'login': ?login,
      'script': script,
      'securityLevel': ?securityLevel,
      'url': ?url,
    };
  }

  factory FlexibleAppVersionApiConfig.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionApiConfig(
      authFailAction: map['authFailAction'] == null ? null : map['authFailAction'] as String,
      login: map['login'] == null ? null : map['login'] as String,
      script: map['script'] as String,
      securityLevel: map['securityLevel'] == null ? null : map['securityLevel'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

