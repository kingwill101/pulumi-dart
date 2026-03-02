// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetJsonHttpServerLocation {
  /// Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicFilenameEnabled;
  /// Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicPathEnabled;
  /// The filename of the file on the web server.
  final pulumi.Input<String> filename;
  /// The folder path to the file on the web server.
  final pulumi.Input<String> path;
  /// The base URL to the web server hosting the file.
  final pulumi.Input<String> relativeUrl;

  /// Creates a new [DatasetJsonHttpServerLocation].
  /// [dynamicFilenameEnabled] Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicPathEnabled] Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  /// [filename] The filename of the file on the web server.
  /// [path] The folder path to the file on the web server.
  /// [relativeUrl] The base URL to the web server hosting the file.
  DatasetJsonHttpServerLocation({
    this.dynamicFilenameEnabled,
    this.dynamicPathEnabled,
    required this.filename,
    required this.path,
    required this.relativeUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicFilenameEnabled': ?dynamicFilenameEnabled,
      'dynamicPathEnabled': ?dynamicPathEnabled,
      'filename': filename,
      'path': path,
      'relativeUrl': relativeUrl,
    };
  }

  factory DatasetJsonHttpServerLocation.fromMap(Map<String, dynamic> map) {
    return DatasetJsonHttpServerLocation(
      dynamicFilenameEnabled: map['dynamicFilenameEnabled'] == null ? null : (map['dynamicFilenameEnabled']! as bool).input(),
      dynamicPathEnabled: map['dynamicPathEnabled'] == null ? null : (map['dynamicPathEnabled']! as bool).input(),
      filename: (map['filename'] as String).input(),
      path: (map['path'] as String).input(),
      relativeUrl: (map['relativeUrl'] as String).input(),
    );
  }
}

