// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a file.
class FileMetadata {
  /// The format of the file
  final pulumi.Input<String>? fileFormat;
  /// The name of the file.
  final pulumi.Input<String>? fileName;
  /// The size of the file.
  final pulumi.Input<int>? fileSize;

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
      fileFormat: map['fileFormat'] == null ? null : (map['fileFormat'] as String).input(),
      fileName: map['fileName'] == null ? null : (map['fileName'] as String).input(),
      fileSize: map['fileSize'] == null ? null : (map['fileSize'] as int).input(),
    );
  }
}

