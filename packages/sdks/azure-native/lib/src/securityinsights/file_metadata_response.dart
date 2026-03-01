// ignore_for_file: unused_element, unnecessary_cast


/// Represents a file.
class FileMetadataResponse {
  /// Indicates whether the file was deleted from the storage account.
  final String deleteStatus;
  /// A URI with a valid SAS token to allow uploading / downloading the file.
  final String fileContentUri;
  /// The format of the file
  final String? fileFormat;
  /// The name of the file.
  final String? fileName;
  /// The size of the file.
  final int? fileSize;

  /// Creates a new [FileMetadataResponse].
  /// [deleteStatus] Indicates whether the file was deleted from the storage account.
  /// [fileContentUri] A URI with a valid SAS token to allow uploading / downloading the file.
  /// [fileFormat] The format of the file
  /// [fileName] The name of the file.
  /// [fileSize] The size of the file.
  FileMetadataResponse({
    required this.deleteStatus,
    required this.fileContentUri,
    this.fileFormat,
    this.fileName,
    this.fileSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteStatus': deleteStatus,
      'fileContentUri': fileContentUri,
      'fileFormat': ?fileFormat,
      'fileName': ?fileName,
      'fileSize': ?fileSize,
    };
  }

  factory FileMetadataResponse.fromMap(Map<String, dynamic> map) {
    return FileMetadataResponse(
      deleteStatus: map['deleteStatus'] as String,
      fileContentUri: map['fileContentUri'] as String,
      fileFormat: map['fileFormat'] == null ? null : map['fileFormat'] as String,
      fileName: map['fileName'] == null ? null : map['fileName'] as String,
      fileSize: map['fileSize'] == null ? null : map['fileSize'] as int,
    );
  }
}

