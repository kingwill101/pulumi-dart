// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BatchSparkRBatch {
  /// HCFS URIs of archives to be extracted into the working directory of each executor.
  /// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;
  /// The arguments to pass to the driver. Do not include arguments that can be set as batch
  /// properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
  final pulumi.Input<List<String>>? args;
  /// HCFS URIs of files to be placed in the working directory of each executor.
  final pulumi.Input<List<String>>? fileUris;
  /// The HCFS URI of the main R file to use as the driver. Must be a .R or .r file.
  final pulumi.Input<String>? mainRFileUri;

  /// Creates a new [BatchSparkRBatch].
  /// [archiveUris] HCFS URIs of archives to be extracted into the working directory of each executor.
  /// [args] The arguments to pass to the driver. Do not include arguments that can be set as batch
  /// [fileUris] HCFS URIs of files to be placed in the working directory of each executor.
  /// [mainRFileUri] The HCFS URI of the main R file to use as the driver. Must be a .R or .r file.
  const BatchSparkRBatch({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.mainRFileUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'args': ?args,
      'fileUris': ?fileUris,
      'mainRFileUri': ?mainRFileUri,
    };
  }

  factory BatchSparkRBatch.fromMap(Map<String, dynamic> map) {
    return BatchSparkRBatch(
      archiveUris: (() { final guardedValue = map['archiveUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fileUris: (() { final guardedValue = map['fileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mainRFileUri: (() { final guardedValue = map['mainRFileUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

