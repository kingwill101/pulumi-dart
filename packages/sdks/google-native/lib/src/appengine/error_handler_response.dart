// ignore_for_file: unused_element, unnecessary_cast


/// Custom static error page to be served when an error occurs.
class ErrorHandlerResponse {
  /// Error condition this handler applies to.
  final String errorCode;
  /// MIME type of file. Defaults to text/html.
  final String mimeType;
  /// Static file content to be served for this error.
  final String staticFile;

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
      errorCode: map['errorCode'] as String,
      mimeType: map['mimeType'] as String,
      staticFile: map['staticFile'] as String,
    );
  }
}

