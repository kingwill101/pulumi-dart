// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom static error page to be served when an error occurs.
class ErrorHandlerResponse {
  /// Error condition this handler applies to.
  final pulumi.Input<String> errorCode;
  /// MIME type of file. Defaults to text/html.
  final pulumi.Input<String> mimeType;
  /// Static file content to be served for this error.
  final pulumi.Input<String> staticFile;

  /// Creates a new [ErrorHandlerResponse].
  /// [errorCode] Error condition this handler applies to.
  /// [mimeType] MIME type of file. Defaults to text/html.
  /// [staticFile] Static file content to be served for this error.
  ErrorHandlerResponse({
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

  factory ErrorHandlerResponse.fromMap(Map<String, dynamic> map) {
    return ErrorHandlerResponse(
      errorCode: (map['errorCode'] as String).input(),
      mimeType: (map['mimeType'] as String).input(),
      staticFile: (map['staticFile'] as String).input(),
    );
  }
}

