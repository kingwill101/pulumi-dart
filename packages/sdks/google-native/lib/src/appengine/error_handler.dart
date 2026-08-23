// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_handler_error_code.dart';

/// Custom static error page to be served when an error occurs.
class ErrorHandler {
  /// Error condition this handler applies to.
  final pulumi.Input<ErrorHandlerErrorCode>? errorCode;
  /// MIME type of file. Defaults to text/html.
  final pulumi.Input<String>? mimeType;
  /// Static file content to be served for this error.
  final pulumi.Input<String>? staticFile;

  /// Creates a new [ErrorHandler].
  /// [errorCode] Error condition this handler applies to.
  /// [mimeType] MIME type of file. Defaults to text/html.
  /// [staticFile] Static file content to be served for this error.
  const ErrorHandler({
    this.errorCode,
    this.mimeType,
    this.staticFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?pulumi.Input.mapOptionalInputValue<ErrorHandlerErrorCode, String>(errorCode, (value) => value.wireValue),
      'mimeType': ?mimeType,
      'staticFile': ?staticFile,
    };
  }

  factory ErrorHandler.fromMap(Map<String, dynamic> map) {
    return ErrorHandler(
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorHandlerErrorCode.fromValue(guardedValue as String)); })(),
      mimeType: (() { final guardedValue = map['mimeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticFile: (() { final guardedValue = map['staticFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
