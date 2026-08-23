// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_pig_config_logging_config.dart';

class JobPigConfig {
  /// Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries. Defaults to false.
  final pulumi.Input<bool>? continueOnFailure;
  /// HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  ///
  /// * `logging_config.driver_log_levels`- (Required) The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final pulumi.Input<List<String>>? jarFileUris;
  /// The runtime logging config of the job
  final pulumi.Input<JobPigConfigLoggingConfig>? loggingConfig;
  /// A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in `/etc/hadoop/conf/*-site.xml`, `/etc/pig/conf/pig.properties`, and classes in user code.
  final pulumi.Input<Map<String, String>>? properties;
  /// HCFS URI of file containing Hive script to execute as the job.
  /// Conflicts with `queryList`
  final pulumi.Input<String>? queryFileUri;
  /// The list of Hive queries or statements to execute as part of the job.
  /// Conflicts with `queryFileUri`
  final pulumi.Input<List<String>>? queryLists;
  /// Mapping of query variable names to values (equivalent to the Pig command: `name=[value]`).
  final pulumi.Input<Map<String, String>>? scriptVariables;

  /// Creates a new [JobPigConfig].
  /// [continueOnFailure] Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries. Defaults to false.
  /// [jarFileUris] HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
  /// [loggingConfig] The runtime logging config of the job
  /// [properties] A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in `/etc/hadoop/conf/*-site.xml`, `/etc/pig/conf/pig.properties`, and classes in user code.
  /// [queryFileUri] HCFS URI of file containing Hive script to execute as the job.
  /// [queryLists] The list of Hive queries or statements to execute as part of the job.
  /// [scriptVariables] Mapping of query variable names to values (equivalent to the Pig command: `name=[value]`).
  const JobPigConfig({
    this.continueOnFailure,
    this.jarFileUris,
    this.loggingConfig,
    this.properties,
    this.queryFileUri,
    this.queryLists,
    this.scriptVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueOnFailure': ?continueOnFailure,
      'jarFileUris': ?jarFileUris,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<JobPigConfigLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryLists': ?queryLists,
      'scriptVariables': ?scriptVariables,
    };
  }

  factory JobPigConfig.fromMap(Map<String, dynamic> map) {
    return JobPigConfig(
      continueOnFailure: (() { final guardedValue = map['continueOnFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jarFileUris: (() { final guardedValue = map['jarFileUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobPigConfigLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      queryFileUri: (() { final guardedValue = map['queryFileUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryLists: (() { final guardedValue = map['queryLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scriptVariables: (() { final guardedValue = map['scriptVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
