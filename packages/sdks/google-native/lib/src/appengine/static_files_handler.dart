// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files. Static file handlers describe which files in the application directory are static files, and which URLs serve them.
class StaticFilesHandler {
  /// Whether files should also be uploaded as code data. By default, files declared in static file handlers are uploaded as static data and are only served to end users; they cannot be read by the application. If enabled, uploads are charged against both your code and static data storage resource quotas.
  final pulumi.Input<bool>? applicationReadable;
  /// Time a static file served by this handler should be cached by web proxies and browsers.
  final pulumi.Input<String>? expiration;
  /// HTTP headers to use for all responses from these URLs.
  final pulumi.Input<Map<String, String>>? httpHeaders;
  /// MIME type used to serve all files served by this handler.Defaults to file-specific MIME types, which are derived from each file's filename extension.
  final pulumi.Input<String>? mimeType;
  /// Path to the static files matched by the URL pattern, from the application root directory. The path can refer to text matched in groupings in the URL pattern.
  final pulumi.Input<String>? path;
  /// Whether this handler should match the request if the file referenced by the handler does not exist.
  final pulumi.Input<bool>? requireMatchingFile;
  /// Regular expression that matches the file paths for all files that should be referenced by this handler.
  final pulumi.Input<String>? uploadPathRegex;

  /// Creates a new [StaticFilesHandler].
  /// [applicationReadable] Whether files should also be uploaded as code data. By default, files declared in static file handlers are uploaded as static data and are only served to end users; they cannot be read by the application. If enabled, uploads are charged against both your code and static data storage resource quotas.
  /// [expiration] Time a static file served by this handler should be cached by web proxies and browsers.
  /// [httpHeaders] HTTP headers to use for all responses from these URLs.
  /// [mimeType] MIME type used to serve all files served by this handler.Defaults to file-specific MIME types, which are derived from each file's filename extension.
  /// [path] Path to the static files matched by the URL pattern, from the application root directory. The path can refer to text matched in groupings in the URL pattern.
  /// [requireMatchingFile] Whether this handler should match the request if the file referenced by the handler does not exist.
  /// [uploadPathRegex] Regular expression that matches the file paths for all files that should be referenced by this handler.
  StaticFilesHandler({
    this.applicationReadable,
    this.expiration,
    this.httpHeaders,
    this.mimeType,
    this.path,
    this.requireMatchingFile,
    this.uploadPathRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationReadable': ?applicationReadable,
      'expiration': ?expiration,
      'httpHeaders': ?httpHeaders,
      'mimeType': ?mimeType,
      'path': ?path,
      'requireMatchingFile': ?requireMatchingFile,
      'uploadPathRegex': ?uploadPathRegex,
    };
  }

  factory StaticFilesHandler.fromMap(Map<String, dynamic> map) {
    return StaticFilesHandler(
      applicationReadable: (() { final guardedValue = map['applicationReadable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpHeaders: (() { final guardedValue = map['httpHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mimeType: (() { final guardedValue = map['mimeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireMatchingFile: (() { final guardedValue = map['requireMatchingFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      uploadPathRegex: (() { final guardedValue = map['uploadPathRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

