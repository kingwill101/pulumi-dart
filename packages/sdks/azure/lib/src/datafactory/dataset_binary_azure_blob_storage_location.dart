// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetBinaryAzureBlobStorageLocation {
  /// The container on the Azure Blob Storage Account hosting the file.
  final pulumi.Input<String> container;
  /// Is the `container` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool?>? dynamicContainerEnabled;
  /// Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool?>? dynamicFilenameEnabled;
  /// Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool?>? dynamicPathEnabled;
  /// The filename of the file in the blob container.
  final pulumi.Input<String?>? filename;
  /// The folder path to the file in the blob container.
  final pulumi.Input<String?>? path;

  /// Creates a new [DatasetBinaryAzureBlobStorageLocation].
  /// [container] The container on the Azure Blob Storage Account hosting the file.
  /// [dynamicContainerEnabled] Is the `container` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicFilenameEnabled] Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicPathEnabled] Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  /// [filename] The filename of the file in the blob container.
  /// [path] The folder path to the file in the blob container.
  const DatasetBinaryAzureBlobStorageLocation({
    required this.container,
    this.dynamicContainerEnabled,
    this.dynamicFilenameEnabled,
    this.dynamicPathEnabled,
    this.filename,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'dynamicContainerEnabled': ?dynamicContainerEnabled,
      'dynamicFilenameEnabled': ?dynamicFilenameEnabled,
      'dynamicPathEnabled': ?dynamicPathEnabled,
      'filename': ?filename,
      'path': ?path,
    };
  }

  factory DatasetBinaryAzureBlobStorageLocation.fromMap(Map<String, dynamic> map) {
    return DatasetBinaryAzureBlobStorageLocation(
      container: pulumi.Input.fromValue(map['container'] as String),
      dynamicContainerEnabled: (() { final guardedValue = map['dynamicContainerEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dynamicFilenameEnabled: (() { final guardedValue = map['dynamicFilenameEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dynamicPathEnabled: (() { final guardedValue = map['dynamicPathEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filename: (() { final guardedValue = map['filename']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
