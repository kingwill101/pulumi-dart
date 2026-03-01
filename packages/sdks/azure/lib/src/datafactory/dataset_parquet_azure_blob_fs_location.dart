// ignore_for_file: unused_element, unnecessary_cast


class DatasetParquetAzureBlobFsLocation {
  /// Is the `file_system` using dynamic expression, function or system variables? Defaults to `false`.
  final bool? dynamicFileSystemEnabled;
  /// Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  final bool? dynamicFilenameEnabled;
  /// Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  final bool? dynamicPathEnabled;
  /// The container on the Azure Data Lake Storage Account hosting the file.
  final String? fileSystem;
  /// The filename of the file on the Azure Data Lake Storage Account.
  final String? filename;
  /// The folder path to the file on the Azure Data Lake Storage Account.
  final String? path;

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
      dynamicFileSystemEnabled: map['dynamicFileSystemEnabled'] == null ? null : map['dynamicFileSystemEnabled'] as bool,
      dynamicFilenameEnabled: map['dynamicFilenameEnabled'] == null ? null : map['dynamicFilenameEnabled'] as bool,
      dynamicPathEnabled: map['dynamicPathEnabled'] == null ? null : map['dynamicPathEnabled'] as bool,
      fileSystem: map['fileSystem'] == null ? null : map['fileSystem'] as String,
      filename: map['filename'] == null ? null : map['filename'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

