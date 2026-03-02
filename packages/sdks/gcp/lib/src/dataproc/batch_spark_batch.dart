// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BatchSparkBatch {
  /// HCFS URIs of archives to be extracted into the working directory of each executor.
  /// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;
  /// The arguments to pass to the driver. Do not include arguments that can be set as batch
  /// properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
  final pulumi.Input<List<String>>? args;
  /// HCFS URIs of files to be placed in the working directory of each executor.
  final pulumi.Input<List<String>>? fileUris;
  /// HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.
  final pulumi.Input<List<String>>? jarFileUris;
  /// The name of the driver main class. The jar file that contains the class must be in the
  /// classpath or specified in jarFileUris.
  final pulumi.Input<String>? mainClass;
  /// The HCFS URI of the jar file that contains the main class.
  final pulumi.Input<String>? mainJarFileUri;

  /// Creates a new [BatchSparkBatch].
  /// [archiveUris] HCFS URIs of archives to be extracted into the working directory of each executor.
  /// [args] The arguments to pass to the driver. Do not include arguments that can be set as batch
  /// [fileUris] HCFS URIs of files to be placed in the working directory of each executor.
  /// [jarFileUris] HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.
  /// [mainClass] The name of the driver main class. The jar file that contains the class must be in the
  /// [mainJarFileUri] The HCFS URI of the jar file that contains the main class.
  BatchSparkBatch({
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

  factory BatchSparkBatch.fromMap(Map<String, dynamic> map) {
    return BatchSparkBatch(
      archiveUris: map['archiveUris'] == null ? null : ((map['archiveUris'] as List).cast<String>()).input(),
      args: map['args'] == null ? null : ((map['args'] as List).cast<String>()).input(),
      fileUris: map['fileUris'] == null ? null : ((map['fileUris'] as List).cast<String>()).input(),
      jarFileUris: map['jarFileUris'] == null ? null : ((map['jarFileUris'] as List).cast<String>()).input(),
      mainClass: map['mainClass'] == null ? null : (map['mainClass'] as String).input(),
      mainJarFileUri: map['mainJarFileUri'] == null ? null : (map['mainJarFileUri'] as String).input(),
    );
  }
}

