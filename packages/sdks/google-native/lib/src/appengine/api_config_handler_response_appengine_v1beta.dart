// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Google Cloud Endpoints (https://cloud.google.com/endpoints) configuration for API handlers.
class ApiConfigHandlerResponseAppengineV1beta {
  /// Action to take when users access resources that require authentication. Defaults to redirect.
  final pulumi.Input<String> authFailAction;

  /// Level of login required to access this resource. Defaults to optional.
  final pulumi.Input<String> login;

  /// Path to the script from the application root directory.
  final pulumi.Input<String> script;

  /// Security (HTTPS) enforcement for this URL.
  final pulumi.Input<String> securityLevel;

  /// URL to serve the endpoint at.
  final pulumi.Input<String> url;

  /// Creates a new [ApiConfigHandlerResponseAppengineV1beta].
  /// [authFailAction] Action to take when users access resources that require authentication. Defaults to redirect.
  /// [login] Level of login required to access this resource. Defaults to optional.
  /// [script] Path to the script from the application root directory.
  /// [securityLevel] Security (HTTPS) enforcement for this URL.
  /// [url] URL to serve the endpoint at.
  ApiConfigHandlerResponseAppengineV1beta({
    required this.authFailAction,
    required this.login,
    required this.script,
    required this.securityLevel,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authFailAction': authFailAction,
      'login': login,
      'script': script,
      'securityLevel': securityLevel,
      'url': url,
    };
  }

  factory ApiConfigHandlerResponseAppengineV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApiConfigHandlerResponseAppengineV1beta(
      authFailAction: pulumi.Input.fromValue(map['authFailAction'] as String),
      login: pulumi.Input.fromValue(map['login'] as String),
      script: pulumi.Input.fromValue(map['script'] as String),
      securityLevel: pulumi.Input.fromValue(map['securityLevel'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
