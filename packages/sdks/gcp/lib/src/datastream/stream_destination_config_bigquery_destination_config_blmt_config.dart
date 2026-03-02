// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamDestinationConfigBigqueryDestinationConfigBlmtConfig {
  /// The Cloud Storage bucket name.
  final pulumi.Input<String> bucket;
  /// The bigquery connection. Format: `{project}.{location}.{name}`
  final pulumi.Input<String> connectionName;
  /// The file format.
  final pulumi.Input<String> fileFormat;
  /// The root path inside the Cloud Storage bucket.
  final pulumi.Input<String>? rootPath;
  /// The table format.
  final pulumi.Input<String> tableFormat;

  /// Creates a new [StreamDestinationConfigBigqueryDestinationConfigBlmtConfig].
  /// [bucket] The Cloud Storage bucket name.
  /// [connectionName] The bigquery connection. Format: `{project}.{location}.{name}`
  /// [fileFormat] The file format.
  /// [rootPath] The root path inside the Cloud Storage bucket.
  /// [tableFormat] The table format.
  StreamDestinationConfigBigqueryDestinationConfigBlmtConfig({
    required this.bucket,
    required this.connectionName,
    required this.fileFormat,
    this.rootPath,
    required this.tableFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'connectionName': connectionName,
      'fileFormat': fileFormat,
      'rootPath': ?rootPath,
      'tableFormat': tableFormat,
    };
  }

  factory StreamDestinationConfigBigqueryDestinationConfigBlmtConfig.fromMap(Map<String, dynamic> map) {
    return StreamDestinationConfigBigqueryDestinationConfigBlmtConfig(
      bucket: (map['bucket'] as String).input(),
      connectionName: (map['connectionName'] as String).input(),
      fileFormat: (map['fileFormat'] as String).input(),
      rootPath: map['rootPath'] == null ? null : (map['rootPath'] as String).input(),
      tableFormat: (map['tableFormat'] as String).input(),
    );
  }
}

