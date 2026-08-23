// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_job_spark_rjob_logging_config.dart';

class WorkflowTemplateJobSparkRJob {
  /// HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;
  /// The arguments to pass to the driver. Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  final pulumi.Input<List<String>>? args;
  /// HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  final pulumi.Input<List<String>>? fileUris;
  /// The runtime log config for job execution.
  final pulumi.Input<WorkflowTemplateJobSparkRJobLoggingConfig>? loggingConfig;
  /// Required. The HCFS URI of the main R file to use as the driver. Must be a .R file.
  final pulumi.Input<String> mainRFileUri;
  /// A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [WorkflowTemplateJobSparkRJob].
  /// [archiveUris] HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] The arguments to pass to the driver. Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  /// [fileUris] HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  /// [loggingConfig] The runtime log config for job execution.
  /// [mainRFileUri] Required. The HCFS URI of the main R file to use as the driver. Must be a .R file.
  /// [properties] A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  const WorkflowTemplateJobSparkRJob({
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
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplateJobSparkRJobLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'mainRFileUri': mainRFileUri,
      'properties': ?properties,
    };
  }

  factory WorkflowTemplateJobSparkRJob.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobSparkRJob(
      archiveUris: (() { final guardedValue = map['archiveUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fileUris: (() { final guardedValue = map['fileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplateJobSparkRJobLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mainRFileUri: pulumi.Input.fromValue(map['mainRFileUri'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
