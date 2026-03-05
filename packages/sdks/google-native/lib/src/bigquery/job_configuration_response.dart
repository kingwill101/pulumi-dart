// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_configuration_extract_response.dart';
import 'job_configuration_load_response.dart';
import 'job_configuration_query_response.dart';
import 'job_configuration_table_copy_response.dart';

class JobConfigurationResponse {
  /// [Pick one] Copies a table.
  final pulumi.Input<JobConfigurationTableCopyResponse> copy;
  /// [Optional] If set, don't actually run this job. A valid query will return a mostly empty response with some processing statistics, while an invalid query will return the same error it would if it wasn't a dry run. Behavior of non-query jobs is undefined.
  final pulumi.Input<bool> dryRun;
  /// [Pick one] Configures an extract job.
  final pulumi.Input<JobConfigurationExtractResponse> extract;
  /// [Optional] Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  final pulumi.Input<String> jobTimeoutMs;
  /// The type of the job. Can be QUERY, LOAD, EXTRACT, COPY or UNKNOWN.
  final pulumi.Input<String> jobType;
  /// The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  final pulumi.Input<Map<String, String>> labels;
  /// [Pick one] Configures a load job.
  final pulumi.Input<JobConfigurationLoadResponse> load;
  /// [Pick one] Configures a query job.
  final pulumi.Input<JobConfigurationQueryResponse> query;

  /// Creates a new [JobConfigurationResponse].
  /// [copy] [Pick one] Copies a table.
  /// [dryRun] [Optional] If set, don't actually run this job. A valid query will return a mostly empty response with some processing statistics, while an invalid query will return the same error it would if it wasn't a dry run. Behavior of non-query jobs is undefined.
  /// [extract] [Pick one] Configures an extract job.
  /// [jobTimeoutMs] [Optional] Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  /// [jobType] The type of the job. Can be QUERY, LOAD, EXTRACT, COPY or UNKNOWN.
  /// [labels] The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  /// [load] [Pick one] Configures a load job.
  /// [query] [Pick one] Configures a query job.
  JobConfigurationResponse({
    required this.copy,
    required this.dryRun,
    required this.extract,
    required this.jobTimeoutMs,
    required this.jobType,
    required this.labels,
    required this.load,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copy': pulumi.Input.mapInputValue<JobConfigurationTableCopyResponse, Map<String, dynamic>>(copy, (value) => value.toMap()),
      'dryRun': dryRun,
      'extract': pulumi.Input.mapInputValue<JobConfigurationExtractResponse, Map<String, dynamic>>(extract, (value) => value.toMap()),
      'jobTimeoutMs': jobTimeoutMs,
      'jobType': jobType,
      'labels': labels,
      'load': pulumi.Input.mapInputValue<JobConfigurationLoadResponse, Map<String, dynamic>>(load, (value) => value.toMap()),
      'query': pulumi.Input.mapInputValue<JobConfigurationQueryResponse, Map<String, dynamic>>(query, (value) => value.toMap()),
    };
  }

  factory JobConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return JobConfigurationResponse(
      copy: pulumi.Input.fromValue(JobConfigurationTableCopyResponse.fromMap((map['copy']! as Map).cast<String, dynamic>())),
      dryRun: pulumi.Input.fromValue(map['dryRun'] as bool),
      extract: pulumi.Input.fromValue(JobConfigurationExtractResponse.fromMap((map['extract']! as Map).cast<String, dynamic>())),
      jobTimeoutMs: pulumi.Input.fromValue(map['jobTimeoutMs'] as String),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      load: pulumi.Input.fromValue(JobConfigurationLoadResponse.fromMap((map['load']! as Map).cast<String, dynamic>())),
      query: pulumi.Input.fromValue(JobConfigurationQueryResponse.fromMap((map['query']! as Map).cast<String, dynamic>())),
    );
  }
}

