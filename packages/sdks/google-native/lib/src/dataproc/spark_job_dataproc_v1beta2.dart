// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config_dataproc_v1beta2.dart';

/// A Dataproc job for running Apache Spark (http://spark.apache.org/) applications on YARN. The specification of the main method to call to drive the job. Specify either the jar file that contains the main class or the main class name. To pass both a main jar and a main class in that jar, add the jar to CommonJob.jar_file_uris, and then specify the main class name in main_class.
class SparkJobDataprocV1beta2 {
  /// Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;
  /// Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  final pulumi.Input<List<String>>? args;
  /// Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  final pulumi.Input<List<String>>? fileUris;
  /// Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks.
  final pulumi.Input<List<String>>? jarFileUris;
  /// Optional. The runtime log config for job execution.
  final pulumi.Input<LoggingConfigDataprocV1beta2>? loggingConfig;
  /// The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar_file_uris.
  final pulumi.Input<String>? mainClass;
  /// The HCFS URI of the jar file that contains the main class.
  final pulumi.Input<String>? mainJarFileUri;
  /// Optional. A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [SparkJobDataprocV1beta2].
  /// [archiveUris] Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  /// [fileUris] Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  /// [jarFileUris] Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [mainClass] The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar_file_uris.
  /// [mainJarFileUri] The HCFS URI of the jar file that contains the main class.
  /// [properties] Optional. A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  SparkJobDataprocV1beta2({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.loggingConfig,
    this.mainClass,
    this.mainJarFileUri,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'args': ?args,
      'fileUris': ?fileUris,
      'jarFileUris': ?jarFileUris,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<LoggingConfigDataprocV1beta2, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'mainClass': ?mainClass,
      'mainJarFileUri': ?mainJarFileUri,
      'properties': ?properties,
    };
  }

  factory SparkJobDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return SparkJobDataprocV1beta2(
      archiveUris: map['archiveUris'] == null ? null : ((map['archiveUris'] as List).cast<String>()).input(),
      args: map['args'] == null ? null : ((map['args'] as List).cast<String>()).input(),
      fileUris: map['fileUris'] == null ? null : ((map['fileUris'] as List).cast<String>()).input(),
      jarFileUris: map['jarFileUris'] == null ? null : ((map['jarFileUris'] as List).cast<String>()).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (LoggingConfigDataprocV1beta2.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())).input(),
      mainClass: map['mainClass'] == null ? null : (map['mainClass'] as String).input(),
      mainJarFileUri: map['mainJarFileUri'] == null ? null : (map['mainJarFileUri'] as String).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
    );
  }
}

