// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_endpoint_handler.dart';
import 'script_handler.dart';
import 'static_files_handler.dart';
import 'url_map_auth_fail_action.dart';
import 'url_map_login.dart';
import 'url_map_redirect_http_response_code.dart';
import 'url_map_security_level.dart';

/// URL pattern and description of how the URL should be handled. App Engine can handle URLs by executing application code or by serving static files uploaded with the version, such as images, CSS, or JavaScript.
class UrlMap {
  /// Uses API Endpoints to handle requests.
  final pulumi.Input<ApiEndpointHandler>? apiEndpoint;
  /// Action to take when users access resources that require authentication. Defaults to redirect.
  final pulumi.Input<UrlMapAuthFailAction>? authFailAction;
  /// Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.
  final pulumi.Input<UrlMapLogin>? login;
  /// 30x code to use when performing redirects for the secure field. Defaults to 302.
  final pulumi.Input<UrlMapRedirectHttpResponseCode>? redirectHttpResponseCode;
  /// Executes a script to handle the requests that match this URL pattern. Only the auto value is supported for Node.js in the App Engine standard environment, for example "script": "auto".
  final pulumi.Input<ScriptHandler>? script;
  /// Security (HTTPS) enforcement for this URL.
  final pulumi.Input<UrlMapSecurityLevel>? securityLevel;
  /// Returns the contents of a file, such as an image, as the response.
  final pulumi.Input<StaticFilesHandler>? staticFiles;
  /// URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings. All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path.
  final pulumi.Input<String>? urlRegex;

  /// Creates a new [UrlMap].
  /// [apiEndpoint] Uses API Endpoints to handle requests.
  /// [authFailAction] Action to take when users access resources that require authentication. Defaults to redirect.
  /// [login] Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.
  /// [redirectHttpResponseCode] 30x code to use when performing redirects for the secure field. Defaults to 302.
  /// [script] Executes a script to handle the requests that match this URL pattern. Only the auto value is supported for Node.js in the App Engine standard environment, for example "script": "auto".
  /// [securityLevel] Security (HTTPS) enforcement for this URL.
  /// [staticFiles] Returns the contents of a file, such as an image, as the response.
  /// [urlRegex] URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings. All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path.
  UrlMap({
    this.apiEndpoint,
    this.authFailAction,
    this.login,
    this.redirectHttpResponseCode,
    this.script,
    this.securityLevel,
    this.staticFiles,
    this.urlRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoint': ?pulumi.Input.mapOptionalInputValue<ApiEndpointHandler, Map<String, dynamic>>(apiEndpoint, (value) => value.toMap()),
      'authFailAction': ?pulumi.Input.mapOptionalInputValue<UrlMapAuthFailAction, String>(authFailAction, (value) => value.value),
      'login': ?pulumi.Input.mapOptionalInputValue<UrlMapLogin, String>(login, (value) => value.value),
      'redirectHttpResponseCode': ?pulumi.Input.mapOptionalInputValue<UrlMapRedirectHttpResponseCode, String>(redirectHttpResponseCode, (value) => value.value),
      'script': ?pulumi.Input.mapOptionalInputValue<ScriptHandler, Map<String, dynamic>>(script, (value) => value.toMap()),
      'securityLevel': ?pulumi.Input.mapOptionalInputValue<UrlMapSecurityLevel, String>(securityLevel, (value) => value.value),
      'staticFiles': ?pulumi.Input.mapOptionalInputValue<StaticFilesHandler, Map<String, dynamic>>(staticFiles, (value) => value.toMap()),
      'urlRegex': ?urlRegex,
    };
  }

  factory UrlMap.fromMap(Map<String, dynamic> map) {
    return UrlMap(
      apiEndpoint: map['apiEndpoint'] == null ? null : (ApiEndpointHandler.fromMap((map['apiEndpoint'] as Map).cast<String, dynamic>())).input(),
      authFailAction: map['authFailAction'] == null ? null : (UrlMapAuthFailAction.fromValue(map['authFailAction'] as String)).input(),
      login: map['login'] == null ? null : (UrlMapLogin.fromValue(map['login'] as String)).input(),
      redirectHttpResponseCode: map['redirectHttpResponseCode'] == null ? null : (UrlMapRedirectHttpResponseCode.fromValue(map['redirectHttpResponseCode'] as String)).input(),
      script: map['script'] == null ? null : (ScriptHandler.fromMap((map['script'] as Map).cast<String, dynamic>())).input(),
      securityLevel: map['securityLevel'] == null ? null : (UrlMapSecurityLevel.fromValue(map['securityLevel'] as String)).input(),
      staticFiles: map['staticFiles'] == null ? null : (StaticFilesHandler.fromMap((map['staticFiles'] as Map).cast<String, dynamic>())).input(),
      urlRegex: map['urlRegex'] == null ? null : (map['urlRegex'] as String).input(),
    );
  }
}

