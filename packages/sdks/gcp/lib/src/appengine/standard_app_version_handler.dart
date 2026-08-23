// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_app_version_handler_script.dart';
import 'standard_app_version_handler_static_files.dart';

class StandardAppVersionHandler {
  /// Actions to take when the user is not logged in.
  /// Possible values are: `AUTH_FAIL_ACTION_REDIRECT`, `AUTH_FAIL_ACTION_UNAUTHORIZED`.
  final pulumi.Input<String>? authFailAction;
  /// Methods to restrict access to a URL based on login status.
  /// Possible values are: `LOGIN_OPTIONAL`, `LOGIN_ADMIN`, `LOGIN_REQUIRED`.
  final pulumi.Input<String>? login;
  /// 30x code to use when performing redirects for the secure field.
  /// Possible values are: `REDIRECT_HTTP_RESPONSE_CODE_301`, `REDIRECT_HTTP_RESPONSE_CODE_302`, `REDIRECT_HTTP_RESPONSE_CODE_303`, `REDIRECT_HTTP_RESPONSE_CODE_307`.
  final pulumi.Input<String>? redirectHttpResponseCode;
  /// Executes a script to handle the requests that match this URL pattern.
  /// Only the auto value is supported for Node.js in the App Engine standard environment, for example "script:" "auto".
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionHandlerScript>? script;
  /// Security (HTTPS) enforcement for this URL.
  /// Possible values are: `SECURE_DEFAULT`, `SECURE_NEVER`, `SECURE_OPTIONAL`, `SECURE_ALWAYS`.
  final pulumi.Input<String>? securityLevel;
  /// Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files. Static file handlers describe which files in the application directory are static files, and which URLs serve them.
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionHandlerStaticFiles>? staticFiles;
  /// URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings.
  /// All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path.
  final pulumi.Input<String>? urlRegex;

  /// Creates a new [StandardAppVersionHandler].
  /// [authFailAction] Actions to take when the user is not logged in.
  /// [login] Methods to restrict access to a URL based on login status.
  /// [redirectHttpResponseCode] 30x code to use when performing redirects for the secure field.
  /// [script] Executes a script to handle the requests that match this URL pattern.
  /// [securityLevel] Security (HTTPS) enforcement for this URL.
  /// [staticFiles] Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files. Static file handlers describe which files in the application directory are static files, and which URLs serve them.
  /// [urlRegex] URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings.
  const StandardAppVersionHandler({
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
      'authFailAction': ?authFailAction,
      'login': ?login,
      'redirectHttpResponseCode': ?redirectHttpResponseCode,
      'script': ?pulumi.Input.mapOptionalInputValue<StandardAppVersionHandlerScript, Map<String, dynamic>>(script, (value) => value.toMap()),
      'securityLevel': ?securityLevel,
      'staticFiles': ?pulumi.Input.mapOptionalInputValue<StandardAppVersionHandlerStaticFiles, Map<String, dynamic>>(staticFiles, (value) => value.toMap()),
      'urlRegex': ?urlRegex,
    };
  }

  factory StandardAppVersionHandler.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionHandler(
      authFailAction: (() { final guardedValue = map['authFailAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectHttpResponseCode: (() { final guardedValue = map['redirectHttpResponseCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardAppVersionHandlerScript.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityLevel: (() { final guardedValue = map['securityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticFiles: (() { final guardedValue = map['staticFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardAppVersionHandlerStaticFiles.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      urlRegex: (() { final guardedValue = map['urlRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
