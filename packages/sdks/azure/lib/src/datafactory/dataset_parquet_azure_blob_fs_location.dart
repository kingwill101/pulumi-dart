// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetParquetAzureBlobFsLocation {
  /// Is the `file_system` using dynamic expression, function or system variables? Defaults to `false`.
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
  /// [dynamicFileSystemEnabled] Is the `file_system` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicFilenameEnabled] Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicPathEnabled] Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  /// [fileSystem] The container on the Azure Data Lake Storage Account hosting the file.
  /// [filename] The filename of the file on the Azure Data Lake Storage Account.
  /// [path] The folder path to the file on the Azure Data Lake Storage Account.
  DatasetParquetAzureBlobFsLocation({
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
      dynamicFileSystemEnabled: map['dynamicFileSystemEnabled'] == null ? null : (map['dynamicFileSystemEnabled'] as bool).input(),
      dynamicFilenameEnabled: map['dynamicFilenameEnabled'] == null ? null : (map['dynamicFilenameEnabled'] as bool).input(),
      dynamicPathEnabled: map['dynamicPathEnabled'] == null ? null : (map['dynamicPathEnabled'] as bool).input(),
      fileSystem: map['fileSystem'] == null ? null : (map['fileSystem'] as String).input(),
      filename: map['filename'] == null ? null : (map['filename'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
    );
  }
}

