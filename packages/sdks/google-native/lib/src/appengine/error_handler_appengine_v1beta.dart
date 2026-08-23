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
  const ErrorHandlerAppengineV1beta({
    this.errorCode,
    this.mimeType,
    this.staticFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?pulumi.Input.mapOptionalInputValue<ErrorHandlerErrorCodeAppengineV1beta, String>(errorCode, (value) => value.wireValue),
      'mimeType': ?mimeType,
      'staticFile': ?staticFile,
    };
  }

  factory ErrorHandlerAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ErrorHandlerAppengineV1beta(
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorHandlerErrorCodeAppengineV1beta.fromValue(guardedValue as String)); })(),
      mimeType: (() { final guardedValue = map['mimeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticFile: (() { final guardedValue = map['staticFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
