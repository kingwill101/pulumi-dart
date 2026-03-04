// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_presto_config_logging_config.dart';

class JobPrestoConfig {
  /// Presto client tags to attach to this query.
  final pulumi.Input<List<String>>? clientTags;

  /// Whether to continue executing queries if a query fails. Setting to true can be useful when executing independent parallel queries. Defaults to false.
  final pulumi.Input<bool>? continueOnFailure;

  /// The runtime logging config of the job
  final pulumi.Input<JobPrestoConfigLoggingConfig>? loggingConfig;

  /// The format in which query output will be displayed. See the Presto documentation for supported output formats.
  ///
  /// * `logging_config.driver_log_levels`- (Required) The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final pulumi.Input<String>? outputFormat;

  /// A mapping of property names to values. Used to set Presto session properties Equivalent to using the --session flag in the Presto CLI.
  final pulumi.Input<Map<String, String>>? properties;

  /// The HCFS URI of the script that contains SQL queries.
  /// Conflicts with `query_list`
  final pulumi.Input<String>? queryFileUri;

  /// The list of SQL queries or statements to execute as part of the job.
  /// Conflicts with `query_file_uri`
  final pulumi.Input<List<String>>? queryLists;

  /// Creates a new [JobPrestoConfig].
  /// [clientTags] Presto client tags to attach to this query.
  /// [continueOnFailure] Whether to continue executing queries if a query fails. Setting to true can be useful when executing independent parallel queries. Defaults to false.
  /// [loggingConfig] The runtime logging config of the job
  /// [outputFormat] The format in which query output will be displayed. See the Presto documentation for supported output formats.
  /// [properties] A mapping of property names to values. Used to set Presto session properties Equivalent to using the --session flag in the Presto CLI.
  /// [queryFileUri] The HCFS URI of the script that contains SQL queries.
  /// [queryLists] The list of SQL queries or statements to execute as part of the job.
  JobPrestoConfig({
    this.clientTags,
    this.continueOnFailure,
    this.loggingConfig,
    this.outputFormat,
    this.properties,
    this.queryFileUri,
    this.queryLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientTags': ?clientTags,
      'continueOnFailure': ?continueOnFailure,
      'loggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            JobPrestoConfigLoggingConfig,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
      'outputFormat': ?outputFormat,
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryLists': ?queryLists,
    };
  }

  factory JobPrestoConfig.fromMap(Map<String, dynamic> map) {
    return JobPrestoConfig(
      clientTags: (() {
        final guardedValue = map['clientTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      continueOnFailure: (() {
        final guardedValue = map['continueOnFailure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      loggingConfig: (() {
        final guardedValue = map['loggingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobPrestoConfigLoggingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      outputFormat: (() {
        final guardedValue = map['outputFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      queryFileUri: (() {
        final guardedValue = map['queryFileUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queryLists: (() {
        final guardedValue = map['queryLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
