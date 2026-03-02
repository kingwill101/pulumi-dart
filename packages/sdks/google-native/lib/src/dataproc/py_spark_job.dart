// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config.dart';

/// A Dataproc job for running Apache PySpark (https://spark.apache.org/docs/0.9.0/python-programming-guide.html) applications on YARN.
class PySparkJob {
  /// Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;
  /// Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  final pulumi.Input<List<String>>? args;
  /// Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  final pulumi.Input<List<String>>? fileUris;
  /// Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
  final pulumi.Input<List<String>>? jarFileUris;
  /// Optional. The runtime log config for job execution.
  final pulumi.Input<LoggingConfig>? loggingConfig;
  /// The HCFS URI of the main Python file to use as the driver. Must be a .py file.
  final pulumi.Input<String> mainPythonFileUri;
  /// Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  final pulumi.Input<Map<String, String>>? properties;
  /// Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  final pulumi.Input<List<String>>? pythonFileUris;

  /// Creates a new [PySparkJob].
  /// [archiveUris] Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  /// [fileUris] Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  /// [jarFileUris] Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
  /// [loggingConfig] Optional. The runtime log config for job execution.
  /// [mainPythonFileUri] The HCFS URI of the main Python file to use as the driver. Must be a .py file.
  /// [properties] Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Dataproc API might be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  /// [pythonFileUris] Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  PySparkJob({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.loggingConfig,
    required this.mainPythonFileUri,
    this.properties,
    this.pythonFileUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'args': ?args,
      'fileUris': ?fileUris,
      'jarFileUris': ?jarFileUris,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<LoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'mainPythonFileUri': mainPythonFileUri,
      'properties': ?properties,
      'pythonFileUris': ?pythonFileUris,
    };
  }

  factory PySparkJob.fromMap(Map<String, dynamic> map) {
    return PySparkJob(
      archiveUris: map['archiveUris'] == null ? null : ((map['archiveUris']! as List).cast<String>()).input(),
      args: map['args'] == null ? null : ((map['args']! as List).cast<String>()).input(),
      fileUris: map['fileUris'] == null ? null : ((map['fileUris']! as List).cast<String>()).input(),
      jarFileUris: map['jarFileUris'] == null ? null : ((map['jarFileUris']! as List).cast<String>()).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (LoggingConfig.fromMap((map['loggingConfig']! as Map).cast<String, dynamic>())).input(),
      mainPythonFileUri: (map['mainPythonFileUri'] as String).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      pythonFileUris: map['pythonFileUris'] == null ? null : ((map['pythonFileUris']! as List).cast<String>()).input(),
    );
  }
}

