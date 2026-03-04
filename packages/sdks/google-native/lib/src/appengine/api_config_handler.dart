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
      'authFailAction':
          ?pulumi.Input.mapOptionalInputValue<
            ApiConfigHandlerAuthFailAction,
            String
          >(authFailAction, (value) => value.wireValue),
      'login':
          ?pulumi.Input.mapOptionalInputValue<ApiConfigHandlerLogin, String>(
            login,
            (value) => value.wireValue,
          ),
      'script': ?script,
      'securityLevel':
          ?pulumi.Input.mapOptionalInputValue<
            ApiConfigHandlerSecurityLevel,
            String
          >(securityLevel, (value) => value.wireValue),
      'url': ?url,
    };
  }

  factory ApiConfigHandler.fromMap(Map<String, dynamic> map) {
    return ApiConfigHandler(
      authFailAction: (() {
        final guardedValue = map['authFailAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApiConfigHandlerAuthFailAction.fromValue(guardedValue as String),
        );
      })(),
      login: (() {
        final guardedValue = map['login'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApiConfigHandlerLogin.fromValue(guardedValue as String),
        );
      })(),
      script: (() {
        final guardedValue = map['script'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityLevel: (() {
        final guardedValue = map['securityLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApiConfigHandlerSecurityLevel.fromValue(guardedValue as String),
        );
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
