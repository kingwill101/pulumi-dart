// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_spark_config_logging_config.dart';

class JobSparkConfig {
  /// HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip.
  final pulumi.Input<List<String>>? archiveUris;
  /// The arguments to pass to the driver.
  final pulumi.Input<List<String>>? args;
  /// HCFS URIs of files to be copied to the working directory of Spark drivers and distributed tasks. Useful for naively parallel tasks.
  final pulumi.Input<List<String>>? fileUris;
  /// HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks.
  final pulumi.Input<List<String>>? jarFileUris;
  /// The runtime logging config of the job
  final pulumi.Input<JobSparkConfigLoggingConfig>? loggingConfig;
  /// The class containing the main method of the driver. Must be in a
  /// provided jar or jar that is already on the classpath. Conflicts with `mainJarFileUri`
  final pulumi.Input<String>? mainClass;
  /// The HCFS URI of jar file containing
  /// the driver jar. Conflicts with `mainClass`
  final pulumi.Input<String>? mainJarFileUri;
  /// A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in `/etc/spark/conf/spark-defaults.conf` and classes in user code.
  ///
  /// * `logging_config.driver_log_levels`- (Required) The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [JobSparkConfig].
  /// [archiveUris] HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] The arguments to pass to the driver.
  /// [fileUris] HCFS URIs of files to be copied to the working directory of Spark drivers and distributed tasks. Useful for naively parallel tasks.
  /// [jarFileUris] HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks.
  /// [loggingConfig] The runtime logging config of the job
  /// [mainClass] The class containing the main method of the driver. Must be in a
  /// [mainJarFileUri] The HCFS URI of jar file containing
  /// [properties] A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in `/etc/spark/conf/spark-defaults.conf` and classes in user code.
  const JobSparkConfig({
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
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<JobSparkConfigLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'mainClass': ?mainClass,
      'mainJarFileUri': ?mainJarFileUri,
      'properties': ?properties,
    };
  }

  factory JobSparkConfig.fromMap(Map<String, dynamic> map) {
    return JobSparkConfig(
      archiveUris: (() { final guardedValue = map['archiveUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fileUris: (() { final guardedValue = map['fileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jarFileUris: (() { final guardedValue = map['jarFileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobSparkConfigLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mainClass: (() { final guardedValue = map['mainClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mainJarFileUri: (() { final guardedValue = map['mainJarFileUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
