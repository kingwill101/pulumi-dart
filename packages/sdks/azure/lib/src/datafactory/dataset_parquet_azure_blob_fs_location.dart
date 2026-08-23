// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetParquetAzureBlobFsLocation {
  /// Is the `fileSystem` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicFileSystemEnabled;
  /// Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicFilenameEnabled;
  /// Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicPathEnabled;
  /// The container on the Azure Data Lake Storage Account hosting the file.
  final pulumi.Input<String>? fileSystem;
  /// The filename of the file on the Azure Data Lake Storage Account.
  final pulumi.Input<String>? filename;
  /// The folder path to the file on the Azure Data Lake Storage Account.
  final pulumi.Input<String>? path;

  /// Creates a new [DatasetParquetAzureBlobFsLocation].
  /// [dynamicFileSystemEnabled] Is the `fileSystem` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicFilenameEnabled] Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicPathEnabled] Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  /// [fileSystem] The container on the Azure Data Lake Storage Account hosting the file.
  /// [filename] The filename of the file on the Azure Data Lake Storage Account.
  /// [path] The folder path to the file on the Azure Data Lake Storage Account.
  const DatasetParquetAzureBlobFsLocation({
    this.dynamicFileSystemEnabled,
    this.dynamicFilenameEnabled,
    this.dynamicPathEnabled,
    this.fileSystem,
    this.filename,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicFileSystemEnabled': ?dynamicFileSystemEnabled,
      'dynamicFilenameEnabled': ?dynamicFilenameEnabled,
      'dynamicPathEnabled': ?dynamicPathEnabled,
      'fileSystem': ?fileSystem,
      'filename': ?filename,
      'path': ?path,
    };
  }

  factory DatasetParquetAzureBlobFsLocation.fromMap(Map<String, dynamic> map) {
    return DatasetParquetAzureBlobFsLocation(
      dynamicFileSystemEnabled: (() { final guardedValue = map['dynamicFileSystemEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dynamicFilenameEnabled: (() { final guardedValue = map['dynamicFilenameEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dynamicPathEnabled: (() { final guardedValue = map['dynamicPathEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fileSystem: (() { final guardedValue = map['fileSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filename: (() { final guardedValue = map['filename']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
