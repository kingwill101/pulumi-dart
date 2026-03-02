// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_copy.dart';
import 'job_extract.dart';
import 'job_load.dart';
import 'job_query.dart';
import 'job_status.dart';

/// Input properties used for looking up and filtering Job resources.
class JobState {
  /// Copies a table.
  /// Structure is documented below.
  final pulumi.Input<JobCopy>? copy;
  /// (Output)
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Configures an extract job.
  /// Structure is documented below.
  final pulumi.Input<JobExtract>? extract;
  /// The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  final pulumi.Input<String>? jobId;
  /// Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  final pulumi.Input<String>? jobTimeoutMs;
  /// (Output)
  /// The type of the job.
  final pulumi.Input<String>? jobType;
  /// The labels associated with this job. You can use these to organize and group your jobs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Configures a load job.
  /// Structure is documented below.
  final pulumi.Input<JobLoad>? load;
  /// The geographic location of the job. The default value is US.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// (Output)
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Configures a query job.
  /// Structure is documented below.
  final pulumi.Input<JobQuery>? query;
  /// The reservation that job would use. User can specify a reservation to execute the job. If this field is not set, reservation is determined based on the rules defined by the reservation assignments.
  /// The expected format is `projects/{project}/locations/{location}/reservations/{reservation}`.
  final pulumi.Input<String>? reservation;
  /// The status of this job. Examine this value when polling an asynchronous job to see if the job is complete.
  /// Structure is documented below.
  final pulumi.Input<List<JobStatus>>? statuses;
  /// Email address of the user who ran the job.
  final pulumi.Input<String>? userEmail;

  /// Creates a new [JobState].
  /// [copy] Copies a table.
  /// [effectiveLabels] (Output)
  /// [extract] Configures an extract job.
  /// [jobId] The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  /// [jobTimeoutMs] Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  /// [jobType] (Output)
  /// [labels] The labels associated with this job. You can use these to organize and group your jobs.
  /// [load] Configures a load job.
  /// [location] The geographic location of the job. The default value is US.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] (Output)
  /// [query] Configures a query job.
  /// [reservation] The reservation that job would use. User can specify a reservation to execute the job. If this field is not set, reservation is determined based on the rules defined by the reservation assignments.
  /// [statuses] The status of this job. Examine this value when polling an asynchronous job to see if the job is complete.
  /// [userEmail] Email address of the user who ran the job.
  JobState({
    this.copy,
    this.effectiveLabels,
    this.extract,
    this.jobId,
    this.jobTimeoutMs,
    this.jobType,
    this.labels,
    this.load,
    this.location,
    this.project,
    this.pulumiLabels,
    this.query,
    this.reservation,
    this.statuses,
    this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copy': ?pulumi.Input.mapOptionalInputValue<JobCopy, Map<String, dynamic>>(copy, (value) => value.toMap()),
      'effectiveLabels': ?effectiveLabels,
      'extract': ?pulumi.Input.mapOptionalInputValue<JobExtract, Map<String, dynamic>>(extract, (value) => value.toMap()),
      'jobId': ?jobId,
      'jobTimeoutMs': ?jobTimeoutMs,
      'jobType': ?jobType,
      'labels': ?labels,
      'load': ?pulumi.Input.mapOptionalInputValue<JobLoad, Map<String, dynamic>>(load, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'query': ?pulumi.Input.mapOptionalInputValue<JobQuery, Map<String, dynamic>>(query, (value) => value.toMap()),
      'reservation': ?reservation,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<JobStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<JobStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userEmail': ?userEmail,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      copy: map['copy'] == null ? null : (JobCopy.fromMap((map['copy'] as Map).cast<String, dynamic>())).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      extract: map['extract'] == null ? null : (JobExtract.fromMap((map['extract'] as Map).cast<String, dynamic>())).input(),
      jobId: map['jobId'] == null ? null : (map['jobId'] as String).input(),
      jobTimeoutMs: map['jobTimeoutMs'] == null ? null : (map['jobTimeoutMs'] as String).input(),
      jobType: map['jobType'] == null ? null : (map['jobType'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      load: map['load'] == null ? null : (JobLoad.fromMap((map['load'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      query: map['query'] == null ? null : (JobQuery.fromMap((map['query'] as Map).cast<String, dynamic>())).input(),
      reservation: map['reservation'] == null ? null : (map['reservation'] as String).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<JobStatus>(map['statuses'], (value) => JobStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      userEmail: map['userEmail'] == null ? null : (map['userEmail'] as String).input(),
    );
  }
}

