// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_endpoint_handler_appengine_v1beta.dart';
import 'script_handler_appengine_v1beta.dart';
import 'static_files_handler_appengine_v1beta.dart';
import 'url_map_auth_fail_action_appengine_v1beta.dart';
import 'url_map_login_appengine_v1beta.dart';
import 'url_map_redirect_http_response_code_appengine_v1beta.dart';
import 'url_map_security_level_appengine_v1beta.dart';

/// URL pattern and description of how the URL should be handled. App Engine can handle URLs by executing application code or by serving static files uploaded with the version, such as images, CSS, or JavaScript.
class UrlMapAppengineV1beta {
  /// Uses API Endpoints to handle requests.
  final pulumi.Input<ApiEndpointHandlerAppengineV1beta>? apiEndpoint;
  /// Action to take when users access resources that require authentication. Defaults to redirect.
  final pulumi.Input<UrlMapAuthFailActionAppengineV1beta>? authFailAction;
  /// Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.
  final pulumi.Input<UrlMapLoginAppengineV1beta>? login;
  /// 30x code to use when performing redirects for the secure field. Defaults to 302.
  final pulumi.Input<UrlMapRedirectHttpResponseCodeAppengineV1beta>? redirectHttpResponseCode;
  /// Executes a script to handle the requests that match this URL pattern. Only the auto value is supported for Node.js in the App Engine standard environment, for example "script": "auto".
  final pulumi.Input<ScriptHandlerAppengineV1beta>? script;
  /// Security (HTTPS) enforcement for this URL.
  final pulumi.Input<UrlMapSecurityLevelAppengineV1beta>? securityLevel;
  /// Returns the contents of a file, such as an image, as the response.
  final pulumi.Input<StaticFilesHandlerAppengineV1beta>? staticFiles;
  /// URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings. All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path.
  final pulumi.Input<String>? urlRegex;

  /// Creates a new [UrlMapAppengineV1beta].
  /// [apiEndpoint] Uses API Endpoints to handle requests.
  /// [authFailAction] Action to take when users access resources that require authentication. Defaults to redirect.
  /// [login] Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.
  /// [redirectHttpResponseCode] 30x code to use when performing redirects for the secure field. Defaults to 302.
  /// [script] Executes a script to handle the requests that match this URL pattern. Only the auto value is supported for Node.js in the App Engine standard environment, for example "script": "auto".
  /// [securityLevel] Security (HTTPS) enforcement for this URL.
  /// [staticFiles] Returns the contents of a file, such as an image, as the response.
  /// [urlRegex] URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings. All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path.
  const UrlMapAppengineV1beta({
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
      'apiEndpoint': ?pulumi.Input.mapOptionalInputValue<ApiEndpointHandlerAppengineV1beta, Map<String, dynamic>>(apiEndpoint, (value) => value.toMap()),
      'authFailAction': ?pulumi.Input.mapOptionalInputValue<UrlMapAuthFailActionAppengineV1beta, String>(authFailAction, (value) => value.wireValue),
      'login': ?pulumi.Input.mapOptionalInputValue<UrlMapLoginAppengineV1beta, String>(login, (value) => value.wireValue),
      'redirectHttpResponseCode': ?pulumi.Input.mapOptionalInputValue<UrlMapRedirectHttpResponseCodeAppengineV1beta, String>(redirectHttpResponseCode, (value) => value.wireValue),
      'script': ?pulumi.Input.mapOptionalInputValue<ScriptHandlerAppengineV1beta, Map<String, dynamic>>(script, (value) => value.toMap()),
      'securityLevel': ?pulumi.Input.mapOptionalInputValue<UrlMapSecurityLevelAppengineV1beta, String>(securityLevel, (value) => value.wireValue),
      'staticFiles': ?pulumi.Input.mapOptionalInputValue<StaticFilesHandlerAppengineV1beta, Map<String, dynamic>>(staticFiles, (value) => value.toMap()),
      'urlRegex': ?urlRegex,
    };
  }

  factory UrlMapAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return UrlMapAppengineV1beta(
      apiEndpoint: (() { final guardedValue = map['apiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiEndpointHandlerAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authFailAction: (() { final guardedValue = map['authFailAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UrlMapAuthFailActionAppengineV1beta.fromValue(guardedValue as String)); })(),
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UrlMapLoginAppengineV1beta.fromValue(guardedValue as String)); })(),
      redirectHttpResponseCode: (() { final guardedValue = map['redirectHttpResponseCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UrlMapRedirectHttpResponseCodeAppengineV1beta.fromValue(guardedValue as String)); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScriptHandlerAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityLevel: (() { final guardedValue = map['securityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UrlMapSecurityLevelAppengineV1beta.fromValue(guardedValue as String)); })(),
      staticFiles: (() { final guardedValue = map['staticFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StaticFilesHandlerAppengineV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      urlRegex: (() { final guardedValue = map['urlRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
