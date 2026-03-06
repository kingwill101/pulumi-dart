// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetBinarySftpServerLocation {
  /// Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicFilenameEnabled;
  /// Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicPathEnabled;
  /// The filename of the file on the SFTP server.
  final pulumi.Input<String> filename;
  /// The folder path to the file on the SFTP server.
  final pulumi.Input<String> path;

  /// Creates a new [DatasetBinarySftpServerLocation].
  /// [dynamicFilenameEnabled] Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicPathEnabled] Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  /// [filename] The filename of the file on the SFTP server.
  /// [path] The folder path to the file on the SFTP server.
  const DatasetBinarySftpServerLocation({
    this.dynamicFilenameEnabled,
    this.dynamicPathEnabled,
    required this.filename,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicFilenameEnabled': ?dynamicFilenameEnabled,
      'dynamicPathEnabled': ?dynamicPathEnabled,
      'filename': filename,
      'path': path,
    };
  }

  factory DatasetBinarySftpServerLocation.fromMap(Map<String, dynamic> map) {
    return DatasetBinarySftpServerLocation(
      dynamicFilenameEnabled: (() { final guardedValue = map['dynamicFilenameEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dynamicPathEnabled: (() { final guardedValue = map['dynamicPathEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filename: pulumi.Input.fromValue(map['filename'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

