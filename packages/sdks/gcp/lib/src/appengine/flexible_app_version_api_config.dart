// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionApiConfig {
  /// Action to take when users access resources that require authentication.
  /// Default value is `AUTH_FAIL_ACTION_REDIRECT`.
  /// Possible values are: `AUTH_FAIL_ACTION_REDIRECT`, `AUTH_FAIL_ACTION_UNAUTHORIZED`.
  final pulumi.Input<String?>? authFailAction;
  /// Level of login required to access this resource.
  /// Default value is `LOGIN_OPTIONAL`.
  /// Possible values are: `LOGIN_OPTIONAL`, `LOGIN_ADMIN`, `LOGIN_REQUIRED`.
  final pulumi.Input<String?>? login;
  /// Path to the script from the application root directory.
  final pulumi.Input<String> script;
  /// Security (HTTPS) enforcement for this URL.
  /// Possible values are: `SECURE_DEFAULT`, `SECURE_NEVER`, `SECURE_OPTIONAL`, `SECURE_ALWAYS`.
  final pulumi.Input<String?>? securityLevel;
  /// URL to serve the endpoint at.
  final pulumi.Input<String?>? url;

  /// Creates a new [FlexibleAppVersionApiConfig].
  /// [authFailAction] Action to take when users access resources that require authentication.
  /// [login] Level of login required to access this resource.
  /// [script] Path to the script from the application root directory.
  /// [securityLevel] Security (HTTPS) enforcement for this URL.
  /// [url] URL to serve the endpoint at.
  const FlexibleAppVersionApiConfig({
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
      authFailAction: (() { final guardedValue = map['authFailAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: pulumi.Input.fromValue(map['script'] as String),
      securityLevel: (() { final guardedValue = map['securityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
