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
    pulumi.Output<JobCopy>? copy,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<JobExtract>? extract,
    pulumi.Output<String>? jobId,
    pulumi.Output<String>? jobTimeoutMs,
    pulumi.Output<String>? jobType,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<JobLoad>? load,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<JobQuery>? query,
    pulumi.Output<String>? reservation,
    pulumi.Output<List<JobStatus>>? statuses,
    pulumi.Output<String>? userEmail,
  }) :
      copy = pulumi.Input.asOptionalInput<JobCopy>(copy),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      extract = pulumi.Input.asOptionalInput<JobExtract>(extract),
      jobId = pulumi.Input.asOptionalInput<String>(jobId),
      jobTimeoutMs = pulumi.Input.asOptionalInput<String>(jobTimeoutMs),
      jobType = pulumi.Input.asOptionalInput<String>(jobType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      load = pulumi.Input.asOptionalInput<JobLoad>(load),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      query = pulumi.Input.asOptionalInput<JobQuery>(query),
      reservation = pulumi.Input.asOptionalInput<String>(reservation),
      statuses = pulumi.Input.asOptionalInput<List<JobStatus>>(statuses),
      userEmail = pulumi.Input.asOptionalInput<String>(userEmail);

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
      copy: map['copy'] == null ? null : pulumi.Output.create<JobCopy>(JobCopy.fromMap((map['copy'] as Map).cast<String, dynamic>())),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      extract: map['extract'] == null ? null : pulumi.Output.create<JobExtract>(JobExtract.fromMap((map['extract'] as Map).cast<String, dynamic>())),
      jobId: map['jobId'] == null ? null : pulumi.Output.create<String>(map['jobId'] as String),
      jobTimeoutMs: map['jobTimeoutMs'] == null ? null : pulumi.Output.create<String>(map['jobTimeoutMs'] as String),
      jobType: map['jobType'] == null ? null : pulumi.Output.create<String>(map['jobType'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      load: map['load'] == null ? null : pulumi.Output.create<JobLoad>(JobLoad.fromMap((map['load'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      query: map['query'] == null ? null : pulumi.Output.create<JobQuery>(JobQuery.fromMap((map['query'] as Map).cast<String, dynamic>())),
      reservation: map['reservation'] == null ? null : pulumi.Output.create<String>(map['reservation'] as String),
      statuses: map['statuses'] == null ? null : pulumi.Output.create<List<JobStatus>>(pulumi.Input.decodeList<JobStatus>(map['statuses'], (value) => JobStatus.fromMap((value as Map).cast<String, dynamic>()))),
      userEmail: map['userEmail'] == null ? null : pulumi.Output.create<String>(map['userEmail'] as String),
    );
  }
}

