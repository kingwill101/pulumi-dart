// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A configuration for running an Apache Spark (https://spark.apache.org/) batch workload.
class SparkBatch {
  /// Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;

  /// Optional. The arguments to pass to the driver. Do not include arguments that can be set as batch properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
  final pulumi.Input<List<String>>? args;

  /// Optional. HCFS URIs of files to be placed in the working directory of each executor.
  final pulumi.Input<List<String>>? fileUris;

  /// Optional. HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.
  final pulumi.Input<List<String>>? jarFileUris;

  /// Optional. The name of the driver main class. The jar file that contains the class must be in the classpath or specified in jar_file_uris.
  final pulumi.Input<String>? mainClass;

  /// Optional. The HCFS URI of the jar file that contains the main class.
  final pulumi.Input<String>? mainJarFileUri;

  /// Creates a new [SparkBatch].
  /// [archiveUris] Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] Optional. The arguments to pass to the driver. Do not include arguments that can be set as batch properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
  /// [fileUris] Optional. HCFS URIs of files to be placed in the working directory of each executor.
  /// [jarFileUris] Optional. HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.
  /// [mainClass] Optional. The name of the driver main class. The jar file that contains the class must be in the classpath or specified in jar_file_uris.
  /// [mainJarFileUri] Optional. The HCFS URI of the jar file that contains the main class.
  SparkBatch({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.mainClass,
    this.mainJarFileUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'args': ?args,
      'fileUris': ?fileUris,
      'jarFileUris': ?jarFileUris,
      'mainClass': ?mainClass,
      'mainJarFileUri': ?mainJarFileUri,
    };
  }

  factory SparkBatch.fromMap(Map<String, dynamic> map) {
    return SparkBatch(
      archiveUris: (() {
        final guardedValue = map['archiveUris'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      args: (() {
        final guardedValue = map['args'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      fileUris: (() {
        final guardedValue = map['fileUris'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      jarFileUris: (() {
        final guardedValue = map['jarFileUris'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      mainClass: (() {
        final guardedValue = map['mainClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mainJarFileUri: (() {
        final guardedValue = map['mainJarFileUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
