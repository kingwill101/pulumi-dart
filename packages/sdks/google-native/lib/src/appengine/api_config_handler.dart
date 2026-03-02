// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_config_handler_auth_fail_action.dart';
import 'api_config_handler_login.dart';
import 'api_config_handler_security_level.dart';

/// Google Cloud Endpoints (https://cloud.google.com/endpoints) configuration for API handlers.
class ApiConfigHandler {
  /// Action to take when users access resources that require authentication. Defaults to redirect.
  final pulumi.Input<ApiConfigHandlerAuthFailAction>? authFailAction;
  /// Level of login required to access this resource. Defaults to optional.
  final pulumi.Input<ApiConfigHandlerLogin>? login;
  /// Path to the script from the application root directory.
  final pulumi.Input<String>? script;
  /// Security (HTTPS) enforcement for this URL.
  final pulumi.Input<ApiConfigHandlerSecurityLevel>? securityLevel;
  /// URL to serve the endpoint at.
  final pulumi.Input<String>? url;

  /// Creates a new [ApiConfigHandler].
  /// [authFailAction] Action to take when users access resources that require authentication. Defaults to redirect.
  /// [login] Level of login required to access this resource. Defaults to optional.
  /// [script] Path to the script from the application root directory.
  /// [securityLevel] Security (HTTPS) enforcement for this URL.
  /// [url] URL to serve the endpoint at.
  ApiConfigHandler({
    this.authFailAction,
    this.login,
    this.script,
    this.securityLevel,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authFailAction': ?pulumi.Input.mapOptionalInputValue<ApiConfigHandlerAuthFailAction, String>(authFailAction, (value) => value.value),
      'login': ?pulumi.Input.mapOptionalInputValue<ApiConfigHandlerLogin, String>(login, (value) => value.value),
      'script': ?script,
      'securityLevel': ?pulumi.Input.mapOptionalInputValue<ApiConfigHandlerSecurityLevel, String>(securityLevel, (value) => value.value),
      'url': ?url,
    };
  }

  factory ApiConfigHandler.fromMap(Map<String, dynamic> map) {
    return ApiConfigHandler(
      authFailAction: map['authFailAction'] == null ? null : (ApiConfigHandlerAuthFailAction.fromValue(map['authFailAction'] as String)).input(),
      login: map['login'] == null ? null : (ApiConfigHandlerLogin.fromValue(map['login'] as String)).input(),
      script: map['script'] == null ? null : (map['script'] as String).input(),
      securityLevel: map['securityLevel'] == null ? null : (ApiConfigHandlerSecurityLevel.fromValue(map['securityLevel'] as String)).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

