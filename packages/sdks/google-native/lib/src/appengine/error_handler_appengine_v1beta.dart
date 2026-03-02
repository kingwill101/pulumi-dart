// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_handler_error_code_appengine_v1beta.dart';

/// Custom static error page to be served when an error occurs.
class ErrorHandlerAppengineV1beta {
  /// Error condition this handler applies to.
  final pulumi.Input<ErrorHandlerErrorCodeAppengineV1beta>? errorCode;
  /// MIME type of file. Defaults to text/html.
  final pulumi.Input<String>? mimeType;
  /// Static file content to be served for this error.
  final pulumi.Input<String>? staticFile;

  /// Creates a new [ErrorHandlerAppengineV1beta].
  /// [errorCode] Error condition this handler applies to.
  /// [mimeType] MIME type of file. Defaults to text/html.
  /// [staticFile] Static file content to be served for this error.
  ErrorHandlerAppengineV1beta({
    this.errorCode,
    this.mimeType,
    this.staticFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?pulumi.Input.mapOptionalInputValue<ErrorHandlerErrorCodeAppengineV1beta, String>(errorCode, (value) => value.value),
      'mimeType': ?mimeType,
      'staticFile': ?staticFile,
    };
  }

  factory ErrorHandlerAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ErrorHandlerAppengineV1beta(
      errorCode: map['errorCode'] == null ? null : (ErrorHandlerErrorCodeAppengineV1beta.fromValue(map['errorCode']! as String)).input(),
      mimeType: map['mimeType'] == null ? null : (map['mimeType']! as String).input(),
      staticFile: map['staticFile'] == null ? null : (map['staticFile']! as String).input(),
    );
  }
}

