// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config_response.dart';

/// A Dataproc job for running Apache SparkR (https://spark.apache.org/docs/latest/sparkr.html) applications on YARN.
class SparkRJobResponse {
  /// Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>> archiveUris;

  /// Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  final pulumi.Input<List<String>> args;

  /// Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  final pulumi.Input<List<String>> fileUris;

  /// Optional. The runtime log config for job execution.
  final pulumi.Input<LoggingConfigResponse> loggingConfig;

  /// The HCFS URI of the main R file to use as the driver. Must be a .R file.
  final pulumi.Input<String> mainRFileUri;

  /// Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  final pulumi.Input<Map<String, String>> properties;

  /// Creates a new [SparkRJobResponse].
  /// [archiveUris] Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  /// [fileUris] Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [mainRFileUri] The HCFS URI of the main R file to use as the driver. Must be a .R file.
  /// [properties] Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  SparkRJobResponse({
    required this.archiveUris,
    required this.args,
    required this.fileUris,
    required this.loggingConfig,
    required this.mainRFileUri,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': archiveUris,
      'args': args,
      'fileUris': fileUris,
      'loggingConfig':
          pulumi.Input.mapInputValue<
            LoggingConfigResponse,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
      'mainRFileUri': mainRFileUri,
      'properties': properties,
    };
  }

  factory SparkRJobResponse.fromMap(Map<String, dynamic> map) {
    return SparkRJobResponse(
      archiveUris: pulumi.Input.fromValue(
        (map['archiveUris'] as List).cast<String>(),
      ),
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      fileUris: pulumi.Input.fromValue(
        (map['fileUris'] as List).cast<String>(),
      ),
      loggingConfig: pulumi.Input.fromValue(
        LoggingConfigResponse.fromMap(
          (map['loggingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      mainRFileUri: pulumi.Input.fromValue(map['mainRFileUri'] as String),
      properties: pulumi.Input.fromValue(
        (map['properties'] as Map).cast<String, String>(),
      ),
    );
  }
}
