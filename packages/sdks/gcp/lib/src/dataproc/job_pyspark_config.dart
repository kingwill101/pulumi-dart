// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_pyspark_config_logging_config.dart';

class JobPysparkConfig {
  /// HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;
  /// The arguments to pass to the driver.
  final pulumi.Input<List<String>>? args;
  /// HCFS URIs of files to be copied to the working directory of Python drivers and distributed tasks. Useful for naively parallel tasks.
  final pulumi.Input<List<String>>? fileUris;
  /// HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
  final pulumi.Input<List<String>>? jarFileUris;
  /// The runtime logging config of the job
  final pulumi.Input<JobPysparkConfigLoggingConfig>? loggingConfig;
  /// The HCFS URI of the main Python file to use as the driver. Must be a .py file.
  final pulumi.Input<String> mainPythonFileUri;
  /// A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in `/etc/spark/conf/spark-defaults.conf` and classes in user code.
  ///
  /// * `logging_config.driver_log_levels`- (Required) The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final pulumi.Input<Map<String, String>>? properties;
  /// HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  final pulumi.Input<List<String>>? pythonFileUris;

  /// Creates a new [JobPysparkConfig].
  /// [archiveUris] HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] The arguments to pass to the driver.
  /// [fileUris] HCFS URIs of files to be copied to the working directory of Python drivers and distributed tasks. Useful for naively parallel tasks.
  /// [jarFileUris] HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
  /// [loggingConfig] The runtime logging config of the job
  /// [mainPythonFileUri] The HCFS URI of the main Python file to use as the driver. Must be a .py file.
  /// [properties] A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in `/etc/spark/conf/spark-defaults.conf` and classes in user code.
  /// [pythonFileUris] HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  const JobPysparkConfig({
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
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<JobPysparkConfigLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'mainPythonFileUri': mainPythonFileUri,
      'properties': ?properties,
      'pythonFileUris': ?pythonFileUris,
    };
  }

  factory JobPysparkConfig.fromMap(Map<String, dynamic> map) {
    return JobPysparkConfig(
      archiveUris: (() { final guardedValue = map['archiveUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fileUris: (() { final guardedValue = map['fileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jarFileUris: (() { final guardedValue = map['jarFileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobPysparkConfigLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mainPythonFileUri: pulumi.Input.fromValue(map['mainPythonFileUri'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pythonFileUris: (() { final guardedValue = map['pythonFileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
