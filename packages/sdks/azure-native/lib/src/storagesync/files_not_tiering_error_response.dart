// ignore_for_file: unused_element, unnecessary_cast


/// Files not tiering error object
class FilesNotTieringErrorResponse {
  /// Error code (HResult)
  final int errorCode;
  /// Count of files with this error
  final double fileCount;

  /// Creates a new [FilesNotTieringErrorResponse].
  /// [errorCode] Error code (HResult)
  /// [fileCount] Count of files with this error
  FilesNotTieringErrorResponse({
    required this.errorCode,
    required this.fileCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'fileCount': fileCount,
    };
  }

  factory FilesNotTieringErrorResponse.fromMap(Map<String, dynamic> map) {
    return FilesNotTieringErrorResponse(
      errorCode: map['errorCode'] as int,
      fileCount: map['fileCount'] as double,
    );
  }
}

