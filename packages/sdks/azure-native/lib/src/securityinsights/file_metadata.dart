// ignore_for_file: unused_element, unnecessary_cast


/// Represents a file.
class FileMetadata {
  /// The format of the file
  final String? fileFormat;
  /// The name of the file.
  final String? fileName;
  /// The size of the file.
  final int? fileSize;

  /// Creates a new [FileMetadata].
  /// [fileFormat] The format of the file
  /// [fileName] The name of the file.
  /// [fileSize] The size of the file.
  FileMetadata({
    this.fileFormat,
    this.fileName,
    this.fileSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileFormat': ?fileFormat,
      'fileName': ?fileName,
      'fileSize': ?fileSize,
    };
  }

  factory FileMetadata.fromMap(Map<String, dynamic> map) {
    return FileMetadata(
      fileFormat: map['fileFormat'] == null ? null : map['fileFormat'] as String,
      fileName: map['fileName'] == null ? null : map['fileName'] as String,
      fileSize: map['fileSize'] == null ? null : map['fileSize'] as int,
    );
  }
}

