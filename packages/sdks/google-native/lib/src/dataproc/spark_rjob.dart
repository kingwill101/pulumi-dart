// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config.dart';

/// A Dataproc job for running Apache SparkR (https://spark.apache.org/docs/latest/sparkr.html) applications on YARN.
class SparkRJob {
  /// Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;

  /// Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  final pulumi.Input<List<String>>? args;

  /// Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  final pulumi.Input<List<String>>? fileUris;

  /// Optional. The runtime log config for job execution.
  final pulumi.Input<LoggingConfig>? loggingConfig;

  /// The HCFS URI of the main R file to use as the driver. Must be a .R file.
  final pulumi.Input<String> mainRFileUri;

  /// Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [SparkRJob].
  /// [archiveUris] Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  /// [fileUris] Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [mainRFileUri] The HCFS URI of the main R file to use as the driver. Must be a .R file.
  /// [properties] Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  SparkRJob({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.loggingConfig,
    required this.mainRFileUri,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'args': ?args,
      'fileUris': ?fileUris,
      'loggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            LoggingConfig,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
      'mainRFileUri': mainRFileUri,
      'properties': ?properties,
    };
  }

  factory SparkRJob.fromMap(Map<String, dynamic> map) {
    return SparkRJob(
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
      loggingConfig: (() {
        final guardedValue = map['loggingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      mainRFileUri: pulumi.Input.fromValue(map['mainRFileUri'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
