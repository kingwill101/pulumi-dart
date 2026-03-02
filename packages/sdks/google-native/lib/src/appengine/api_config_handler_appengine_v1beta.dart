// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_config_handler_auth_fail_action_appengine_v1beta.dart';
import 'api_config_handler_login_appengine_v1beta.dart';
import 'api_config_handler_security_level_appengine_v1beta.dart';

/// Google Cloud Endpoints (https://cloud.google.com/endpoints) configuration for API handlers.
class ApiConfigHandlerAppengineV1beta {
  /// Action to take when users access resources that require authentication. Defaults to redirect.
  final pulumi.Input<ApiConfigHandlerAuthFailActionAppengineV1beta>? authFailAction;
  /// Level of login required to access this resource. Defaults to optional.
  final pulumi.Input<ApiConfigHandlerLoginAppengineV1beta>? login;
  /// Path to the script from the application root directory.
  final pulumi.Input<String>? script;
  /// Security (HTTPS) enforcement for this URL.
  final pulumi.Input<ApiConfigHandlerSecurityLevelAppengineV1beta>? securityLevel;
  /// URL to serve the endpoint at.
  final pulumi.Input<String>? url;

  /// Creates a new [ApiConfigHandlerAppengineV1beta].
  /// [authFailAction] Action to take when users access resources that require authentication. Defaults to redirect.
  /// [login] Level of login required to access this resource. Defaults to optional.
  /// [script] Path to the script from the application root directory.
  /// [securityLevel] Security (HTTPS) enforcement for this URL.
  /// [url] URL to serve the endpoint at.
  ApiConfigHandlerAppengineV1beta({
    this.authFailAction,
    this.login,
    this.script,
    this.securityLevel,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authFailAction': ?pulumi.Input.mapOptionalInputValue<ApiConfigHandlerAuthFailActionAppengineV1beta, String>(authFailAction, (value) => value.value),
      'login': ?pulumi.Input.mapOptionalInputValue<ApiConfigHandlerLoginAppengineV1beta, String>(login, (value) => value.value),
      'script': ?script,
      'securityLevel': ?pulumi.Input.mapOptionalInputValue<ApiConfigHandlerSecurityLevelAppengineV1beta, String>(securityLevel, (value) => value.value),
      'url': ?url,
    };
  }

  factory ApiConfigHandlerAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ApiConfigHandlerAppengineV1beta(
      authFailAction: map['authFailAction'] == null ? null : (ApiConfigHandlerAuthFailActionAppengineV1beta.fromValue(map['authFailAction'] as String)).input(),
      login: map['login'] == null ? null : (ApiConfigHandlerLoginAppengineV1beta.fromValue(map['login'] as String)).input(),
      script: map['script'] == null ? null : (map['script'] as String).input(),
      securityLevel: map['securityLevel'] == null ? null : (ApiConfigHandlerSecurityLevelAppengineV1beta.fromValue(map['securityLevel'] as String)).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

