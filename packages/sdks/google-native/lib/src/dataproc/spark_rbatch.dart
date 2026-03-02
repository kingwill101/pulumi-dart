// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A configuration for running an Apache SparkR (https://spark.apache.org/docs/latest/sparkr.html) batch workload.
class SparkRBatch {
  /// Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;
  /// Optional. The arguments to pass to the Spark driver. Do not include arguments that can be set as batch properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
  final pulumi.Input<List<String>>? args;
  /// Optional. HCFS URIs of files to be placed in the working directory of each executor.
  final pulumi.Input<List<String>>? fileUris;
  /// The HCFS URI of the main R file to use as the driver. Must be a .R or .r file.
  final pulumi.Input<String> mainRFileUri;

  /// Creates a new [SparkRBatch].
  /// [archiveUris] Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] Optional. The arguments to pass to the Spark driver. Do not include arguments that can be set as batch properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
  /// [fileUris] Optional. HCFS URIs of files to be placed in the working directory of each executor.
  /// [mainRFileUri] The HCFS URI of the main R file to use as the driver. Must be a .R or .r file.
  SparkRBatch({
    this.archiveUris,
    this.args,
    this.fileUris,
    required this.mainRFileUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'args': ?args,
      'fileUris': ?fileUris,
      'mainRFileUri': mainRFileUri,
    };
  }

  factory SparkRBatch.fromMap(Map<String, dynamic> map) {
    return SparkRBatch(
      archiveUris: map['archiveUris'] == null ? null : ((map['archiveUris'] as List).cast<String>()).input(),
      args: map['args'] == null ? null : ((map['args'] as List).cast<String>()).input(),
      fileUris: map['fileUris'] == null ? null : ((map['fileUris'] as List).cast<String>()).input(),
      mainRFileUri: (map['mainRFileUri'] as String).input(),
    );
  }
}

