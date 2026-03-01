// ignore_for_file: unused_element, unnecessary_cast


class DatasetBinaryHttpServerLocation {
  /// Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  final bool? dynamicFilenameEnabled;
  /// Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  final bool? dynamicPathEnabled;
  /// The filename of the file on the web server.
  final String filename;
  /// The folder path to the file on the web server.
  final String path;
  /// The base URL to the web server hosting the file.
  final String relativeUrl;

  /// Creates a new [DatasetBinaryHttpServerLocation].
  /// [dynamicFilenameEnabled] Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicPathEnabled] Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  /// [filename] The filename of the file on the web server.
  /// [path] The folder path to the file on the web server.
  /// [relativeUrl] The base URL to the web server hosting the file.
  DatasetBinaryHttpServerLocation({
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

  factory DatasetBinaryHttpServerLocation.fromMap(Map<String, dynamic> map) {
    return DatasetBinaryHttpServerLocation(
      dynamicFilenameEnabled: map['dynamicFilenameEnabled'] == null ? null : map['dynamicFilenameEnabled'] as bool,
      dynamicPathEnabled: map['dynamicPathEnabled'] == null ? null : map['dynamicPathEnabled'] as bool,
      filename: map['filename'] as String,
      path: map['path'] as String,
      relativeUrl: map['relativeUrl'] as String,
    );
  }
}

