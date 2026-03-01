// ignore_for_file: unused_element, unnecessary_cast

import 'job_configuration_extract.dart';
import 'job_configuration_load.dart';
import 'job_configuration_query.dart';
import 'job_configuration_table_copy.dart';

class JobConfiguration {
  /// [Pick one] Copies a table.
  final JobConfigurationTableCopy? copy;
  /// [Optional] If set, don't actually run this job. A valid query will return a mostly empty response with some processing statistics, while an invalid query will return the same error it would if it wasn't a dry run. Behavior of non-query jobs is undefined.
  final bool? dryRun;
  /// [Pick one] Configures an extract job.
  final JobConfigurationExtract? extract;
  /// [Optional] Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  final String? jobTimeoutMs;
  /// The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  final Map<String, String>? labels;
  /// [Pick one] Configures a load job.
  final JobConfigurationLoad? load;
  /// [Pick one] Configures a query job.
  final JobConfigurationQuery? query;

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
      'copy': ?copy == null ? null : copy!.toMap(),
      'dryRun': ?dryRun,
      'extract': ?extract == null ? null : extract!.toMap(),
      'jobTimeoutMs': ?jobTimeoutMs,
      'labels': ?labels,
      'load': ?load == null ? null : load!.toMap(),
      'query': ?query == null ? null : query!.toMap(),
    };
  }

  factory JobConfiguration.fromMap(Map<String, dynamic> map) {
    return JobConfiguration(
      copy: map['copy'] == null ? null : JobConfigurationTableCopy.fromMap((map['copy'] as Map).cast<String, dynamic>()),
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      extract: map['extract'] == null ? null : JobConfigurationExtract.fromMap((map['extract'] as Map).cast<String, dynamic>()),
      jobTimeoutMs: map['jobTimeoutMs'] == null ? null : map['jobTimeoutMs'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      load: map['load'] == null ? null : JobConfigurationLoad.fromMap((map['load'] as Map).cast<String, dynamic>()),
      query: map['query'] == null ? null : JobConfigurationQuery.fromMap((map['query'] as Map).cast<String, dynamic>()),
    );
  }
}

