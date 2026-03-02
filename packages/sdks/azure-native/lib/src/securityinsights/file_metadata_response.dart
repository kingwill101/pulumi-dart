// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a file.
class FileMetadataResponse {
  /// Indicates whether the file was deleted from the storage account.
  final pulumi.Input<String> deleteStatus;
  /// A URI with a valid SAS token to allow uploading / downloading the file.
  final pulumi.Input<String> fileContentUri;
  /// The format of the file
  final pulumi.Input<String>? fileFormat;
  /// The name of the file.
  final pulumi.Input<String>? fileName;
  /// The size of the file.
  final pulumi.Input<int>? fileSize;

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
      deleteStatus: (map['deleteStatus'] as String).input(),
      fileContentUri: (map['fileContentUri'] as String).input(),
      fileFormat: map['fileFormat'] == null ? null : (map['fileFormat']! as String).input(),
      fileName: map['fileName'] == null ? null : (map['fileName']! as String).input(),
      fileSize: map['fileSize'] == null ? null : (map['fileSize']! as int).input(),
    );
  }
}

