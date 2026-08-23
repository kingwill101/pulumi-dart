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
  const FileMetadataResponse({
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
      deleteStatus: pulumi.Input.fromValue(map['deleteStatus'] as String),
      fileContentUri: pulumi.Input.fromValue(map['fileContentUri'] as String),
      fileFormat: (() { final guardedValue = map['fileFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileName: (() { final guardedValue = map['fileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSize: (() { final guardedValue = map['fileSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
