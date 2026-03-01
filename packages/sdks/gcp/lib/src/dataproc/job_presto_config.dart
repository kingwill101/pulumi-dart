// ignore_for_file: unused_element, unnecessary_cast

import 'job_presto_config_logging_config.dart';

class JobPrestoConfig {
  /// Presto client tags to attach to this query.
  final List<String>? clientTags;
  /// Whether to continue executing queries if a query fails. Setting to true can be useful when executing independent parallel queries. Defaults to false.
  final bool? continueOnFailure;
  /// The runtime logging config of the job
  final JobPrestoConfigLoggingConfig? loggingConfig;
  /// The format in which query output will be displayed. See the Presto documentation for supported output formats.
  ///
  /// * `logging_config.driver_log_levels`- (Required) The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final String? outputFormat;
  /// A mapping of property names to values. Used to set Presto session properties Equivalent to using the --session flag in the Presto CLI.
  final Map<String, String>? properties;
  /// The HCFS URI of the script that contains SQL queries.
  /// Conflicts with `query_list`
  final String? queryFileUri;
  /// The list of SQL queries or statements to execute as part of the job.
  /// Conflicts with `query_file_uri`
  final List<String>? queryLists;

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
      'loggingConfig': ?loggingConfig == null ? null : loggingConfig!.toMap(),
      'outputFormat': ?outputFormat,
      'properties': ?properties,
      'queryFileUri': ?queryFileUri,
      'queryLists': ?queryLists,
    };
  }

  factory JobPrestoConfig.fromMap(Map<String, dynamic> map) {
    return JobPrestoConfig(
      clientTags: map['clientTags'] == null ? null : (map['clientTags'] as List).cast<String>(),
      continueOnFailure: map['continueOnFailure'] == null ? null : map['continueOnFailure'] as bool,
      loggingConfig: map['loggingConfig'] == null ? null : JobPrestoConfigLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
      outputFormat: map['outputFormat'] == null ? null : map['outputFormat'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      queryFileUri: map['queryFileUri'] == null ? null : map['queryFileUri'] as String,
      queryLists: map['queryLists'] == null ? null : (map['queryLists'] as List).cast<String>(),
    );
  }
}

