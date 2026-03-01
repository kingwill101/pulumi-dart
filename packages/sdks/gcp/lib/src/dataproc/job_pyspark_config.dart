// ignore_for_file: unused_element, unnecessary_cast

import 'job_pyspark_config_logging_config.dart';

class JobPysparkConfig {
  /// HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String>? archiveUris;
  /// The arguments to pass to the driver.
  final List<String>? args;
  /// HCFS URIs of files to be copied to the working directory of Python drivers and distributed tasks. Useful for naively parallel tasks.
  final List<String>? fileUris;
  /// HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
  final List<String>? jarFileUris;
  /// The runtime logging config of the job
  final JobPysparkConfigLoggingConfig? loggingConfig;
  /// The HCFS URI of the main Python file to use as the driver. Must be a .py file.
  final String mainPythonFileUri;
  /// A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in `/etc/spark/conf/spark-defaults.conf` and classes in user code.
  ///
  /// * `logging_config.driver_log_levels`- (Required) The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final Map<String, String>? properties;
  /// HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  final List<String>? pythonFileUris;

  /// Creates a new [JobPysparkConfig].
  /// [archiveUris] HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] The arguments to pass to the driver.
  /// [fileUris] HCFS URIs of files to be copied to the working directory of Python drivers and distributed tasks. Useful for naively parallel tasks.
  /// [jarFileUris] HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
  /// [loggingConfig] The runtime logging config of the job
  /// [mainPythonFileUri] The HCFS URI of the main Python file to use as the driver. Must be a .py file.
  /// [properties] A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in `/etc/spark/conf/spark-defaults.conf` and classes in user code.
  /// [pythonFileUris] HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  JobPysparkConfig({
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
      'loggingConfig': ?loggingConfig == null ? null : loggingConfig!.toMap(),
      'mainPythonFileUri': mainPythonFileUri,
      'properties': ?properties,
      'pythonFileUris': ?pythonFileUris,
    };
  }

  factory JobPysparkConfig.fromMap(Map<String, dynamic> map) {
    return JobPysparkConfig(
      archiveUris: map['archiveUris'] == null ? null : (map['archiveUris'] as List).cast<String>(),
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      fileUris: map['fileUris'] == null ? null : (map['fileUris'] as List).cast<String>(),
      jarFileUris: map['jarFileUris'] == null ? null : (map['jarFileUris'] as List).cast<String>(),
      loggingConfig: map['loggingConfig'] == null ? null : JobPysparkConfigLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
      mainPythonFileUri: map['mainPythonFileUri'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      pythonFileUris: map['pythonFileUris'] == null ? null : (map['pythonFileUris'] as List).cast<String>(),
    );
  }
}

