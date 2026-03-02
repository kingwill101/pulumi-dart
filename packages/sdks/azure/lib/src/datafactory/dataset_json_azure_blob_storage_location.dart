// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetJsonAzureBlobStorageLocation {
  /// The container on the Azure Blob Storage Account hosting the file.
  final pulumi.Input<String> container;
  /// Is the `container` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicContainerEnabled;
  /// Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicFilenameEnabled;
  /// Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicPathEnabled;
  /// The filename of the file on the web server.
  final pulumi.Input<String> filename;
  /// The folder path to the file on the web server.
  final pulumi.Input<String> path;

  /// Creates a new [DatasetJsonAzureBlobStorageLocation].
  /// [container] The container on the Azure Blob Storage Account hosting the file.
  /// [dynamicContainerEnabled] Is the `container` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicFilenameEnabled] Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicPathEnabled] Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  /// [filename] The filename of the file on the web server.
  /// [path] The folder path to the file on the web server.
  DatasetJsonAzureBlobStorageLocation({
    required this.container,
    this.dynamicContainerEnabled,
    this.dynamicFilenameEnabled,
    this.dynamicPathEnabled,
    required this.filename,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'dynamicContainerEnabled': ?dynamicContainerEnabled,
      'dynamicFilenameEnabled': ?dynamicFilenameEnabled,
      'dynamicPathEnabled': ?dynamicPathEnabled,
      'filename': filename,
      'path': path,
    };
  }

  factory DatasetJsonAzureBlobStorageLocation.fromMap(Map<String, dynamic> map) {
    return DatasetJsonAzureBlobStorageLocation(
      container: (map['container'] as String).input(),
      dynamicContainerEnabled: map['dynamicContainerEnabled'] == null ? null : (map['dynamicContainerEnabled'] as bool).input(),
      dynamicFilenameEnabled: map['dynamicFilenameEnabled'] == null ? null : (map['dynamicFilenameEnabled'] as bool).input(),
      dynamicPathEnabled: map['dynamicPathEnabled'] == null ? null : (map['dynamicPathEnabled'] as bool).input(),
      filename: (map['filename'] as String).input(),
      path: (map['path'] as String).input(),
    );
  }
}

