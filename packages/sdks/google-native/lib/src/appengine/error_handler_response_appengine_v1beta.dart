// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom static error page to be served when an error occurs.
class ErrorHandlerResponseAppengineV1beta {
  /// Error condition this handler applies to.
  final pulumi.Input<String> errorCode;
  /// MIME type of file. Defaults to text/html.
  final pulumi.Input<String> mimeType;
  /// Static file content to be served for this error.
  final pulumi.Input<String> staticFile;

  /// Creates a new [ErrorHandlerResponseAppengineV1beta].
  /// [errorCode] Error condition this handler applies to.
  /// [mimeType] MIME type of file. Defaults to text/html.
  /// [staticFile] Static file content to be served for this error.
  const ErrorHandlerResponseAppengineV1beta({
    required this.errorCode,
    required this.mimeType,
    required this.staticFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'mimeType': mimeType,
      'staticFile': staticFile,
    };
  }

  factory ErrorHandlerResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ErrorHandlerResponseAppengineV1beta(
      errorCode: pulumi.Input.fromValue(map['errorCode'] as String),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
      staticFile: pulumi.Input.fromValue(map['staticFile'] as String),
    );
  }
}
