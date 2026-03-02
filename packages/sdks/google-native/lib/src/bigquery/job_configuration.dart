// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_configuration_extract.dart';
import 'job_configuration_load.dart';
import 'job_configuration_query.dart';
import 'job_configuration_table_copy.dart';

class JobConfiguration {
  /// [Pick one] Copies a table.
  final pulumi.Input<JobConfigurationTableCopy>? copy;
  /// [Optional] If set, don't actually run this job. A valid query will return a mostly empty response with some processing statistics, while an invalid query will return the same error it would if it wasn't a dry run. Behavior of non-query jobs is undefined.
  final pulumi.Input<bool>? dryRun;
  /// [Pick one] Configures an extract job.
  final pulumi.Input<JobConfigurationExtract>? extract;
  /// [Optional] Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  final pulumi.Input<String>? jobTimeoutMs;
  /// The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  final pulumi.Input<Map<String, String>>? labels;
  /// [Pick one] Configures a load job.
  final pulumi.Input<JobConfigurationLoad>? load;
  /// [Pick one] Configures a query job.
  final pulumi.Input<JobConfigurationQuery>? query;

  /// Creates a new [JobConfiguration].
  /// [copy] [Pick one] Copies a table.
  /// [dryRun] [Optional] If set, don't actually run this job. A valid query will return a mostly empty response with some processing statistics, while an invalid query will return the same error it would if it wasn't a dry run. Behavior of non-query jobs is undefined.
  /// [extract] [Pick one] Configures an extract job.
  /// [jobTimeoutMs] [Optional] Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  /// [labels] The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  /// [load] [Pick one] Configures a load job.
  /// [query] [Pick one] Configures a query job.
  JobConfiguration({
    this.copy,
    this.dryRun,
    this.extract,
    this.jobTimeoutMs,
    this.labels,
    this.load,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copy': ?pulumi.Input.mapOptionalInputValue<JobConfigurationTableCopy, Map<String, dynamic>>(copy, (value) => value.toMap()),
      'dryRun': ?dryRun,
      'extract': ?pulumi.Input.mapOptionalInputValue<JobConfigurationExtract, Map<String, dynamic>>(extract, (value) => value.toMap()),
      'jobTimeoutMs': ?jobTimeoutMs,
      'labels': ?labels,
      'load': ?pulumi.Input.mapOptionalInputValue<JobConfigurationLoad, Map<String, dynamic>>(load, (value) => value.toMap()),
      'query': ?pulumi.Input.mapOptionalInputValue<JobConfigurationQuery, Map<String, dynamic>>(query, (value) => value.toMap()),
    };
  }

  factory JobConfiguration.fromMap(Map<String, dynamic> map) {
    return JobConfiguration(
      copy: map['copy'] == null ? null : (JobConfigurationTableCopy.fromMap((map['copy']! as Map).cast<String, dynamic>())).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      extract: map['extract'] == null ? null : (JobConfigurationExtract.fromMap((map['extract']! as Map).cast<String, dynamic>())).input(),
      jobTimeoutMs: map['jobTimeoutMs'] == null ? null : (map['jobTimeoutMs']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      load: map['load'] == null ? null : (JobConfigurationLoad.fromMap((map['load']! as Map).cast<String, dynamic>())).input(),
      query: map['query'] == null ? null : (JobConfigurationQuery.fromMap((map['query']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

