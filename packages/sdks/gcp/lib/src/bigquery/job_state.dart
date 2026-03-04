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
      'copy':
          ?pulumi.Input.mapOptionalInputValue<JobCopy, Map<String, dynamic>>(
            copy,
            (value) => value.toMap(),
          ),
      'effectiveLabels': ?effectiveLabels,
      'extract':
          ?pulumi.Input.mapOptionalInputValue<JobExtract, Map<String, dynamic>>(
            extract,
            (value) => value.toMap(),
          ),
      'jobId': ?jobId,
      'jobTimeoutMs': ?jobTimeoutMs,
      'jobType': ?jobType,
      'labels': ?labels,
      'load':
          ?pulumi.Input.mapOptionalInputValue<JobLoad, Map<String, dynamic>>(
            load,
            (value) => value.toMap(),
          ),
      'location': ?location,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'query':
          ?pulumi.Input.mapOptionalInputValue<JobQuery, Map<String, dynamic>>(
            query,
            (value) => value.toMap(),
          ),
      'reservation': ?reservation,
      'statuses':
          ?pulumi.Input.mapOptionalInputValue<
            List<JobStatus>,
            List<Map<String, dynamic>>
          >(
            statuses,
            (value) => pulumi.Input.encodeList<JobStatus, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'userEmail': ?userEmail,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      copy: (() {
        final guardedValue = map['copy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobCopy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      extract: (() {
        final guardedValue = map['extract'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobExtract.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      jobId: (() {
        final guardedValue = map['jobId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jobTimeoutMs: (() {
        final guardedValue = map['jobTimeoutMs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jobType: (() {
        final guardedValue = map['jobType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      load: (() {
        final guardedValue = map['load'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobLoad.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      query: (() {
        final guardedValue = map['query'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobQuery.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      reservation: (() {
        final guardedValue = map['reservation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statuses: (() {
        final guardedValue = map['statuses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<JobStatus>(
            guardedValue,
            (value) =>
                JobStatus.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      userEmail: (() {
        final guardedValue = map['userEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
