// ignore_for_file: unused_element, unnecessary_cast

import 'job_configuration_response.dart';
import 'job_reference_response.dart';
import 'job_statistics_response.dart';
import 'job_status_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// [Required] Describes the job configuration.
  final JobConfigurationResponse configuration;

  /// A hash of this resource.
  final String etag;

  /// If set, it provides the reason why a Job was created. If not set, it should be treated as the default: REQUESTED. This feature is not yet available. Jobs will always be created.
  final dynamic jobCreationReason;

  /// [Optional] Reference describing the unique-per-user name of the job.
  final JobReferenceResponse jobReference;

  /// The type of the resource.
  final String kind;

  /// A URL that can be used to access this resource again.
  final String selfLink;

  /// Information about the job, including starting time and ending time of the job.
  final JobStatisticsResponse statistics;

  /// The status of this job. Examine this value when polling an asynchronous job to see if the job is complete.
  final JobStatusResponse status;

  /// Email address of the user who ran the job.
  final String userEmail;

  /// Creates a new [GetJobResult].
  /// [configuration] [Required] Describes the job configuration.
  /// [etag] A hash of this resource.
  /// [jobCreationReason] If set, it provides the reason why a Job was created. If not set, it should be treated as the default: REQUESTED. This feature is not yet available. Jobs will always be created.
  /// [jobReference] [Optional] Reference describing the unique-per-user name of the job.
  /// [kind] The type of the resource.
  /// [selfLink] A URL that can be used to access this resource again.
  /// [statistics] Information about the job, including starting time and ending time of the job.
  /// [status] The status of this job. Examine this value when polling an asynchronous job to see if the job is complete.
  /// [userEmail] Email address of the user who ran the job.
  GetJobResult({
    required this.configuration,
    required this.etag,
    required this.jobCreationReason,
    required this.jobReference,
    required this.kind,
    required this.selfLink,
    required this.statistics,
    required this.status,
    required this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration.toMap(),
      'etag': etag,
      'jobCreationReason': jobCreationReason,
      'jobReference': jobReference.toMap(),
      'kind': kind,
      'selfLink': selfLink,
      'statistics': statistics.toMap(),
      'status': status.toMap(),
      'userEmail': userEmail,
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      configuration: JobConfigurationResponse.fromMap(
        (map['configuration']! as Map).cast<String, dynamic>(),
      ),
      etag: map['etag'] as String,
      jobCreationReason: map['jobCreationReason'],
      jobReference: JobReferenceResponse.fromMap(
        (map['jobReference']! as Map).cast<String, dynamic>(),
      ),
      kind: map['kind'] as String,
      selfLink: map['selfLink'] as String,
      statistics: JobStatisticsResponse.fromMap(
        (map['statistics']! as Map).cast<String, dynamic>(),
      ),
      status: JobStatusResponse.fromMap(
        (map['status']! as Map).cast<String, dynamic>(),
      ),
      userEmail: map['userEmail'] as String,
    );
  }
}
