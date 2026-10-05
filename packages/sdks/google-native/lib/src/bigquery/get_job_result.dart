// ignore_for_file: unused_element, unnecessary_cast

import 'job_configuration_response.dart';
import 'job_reference_response.dart';
import 'job_statistics_response.dart';
import 'job_status_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// [Required] Describes the job configuration.
  final JobConfigurationResponse? configuration;
  /// A hash of this resource.
  final String? etag;
  /// If set, it provides the reason why a Job was created. If not set, it should be treated as the default: REQUESTED. This feature is not yet available. Jobs will always be created.
  final dynamic jobCreationReason;
  /// [Optional] Reference describing the unique-per-user name of the job.
  final JobReferenceResponse? jobReference;
  /// The type of the resource.
  final String? kind;
  /// A URL that can be used to access this resource again.
  final String? selfLink;
  /// Information about the job, including starting time and ending time of the job.
  final JobStatisticsResponse? statistics;
  /// The status of this job. Examine this value when polling an asynchronous job to see if the job is complete.
  final JobStatusResponse? status;
  /// Email address of the user who ran the job.
  final String? userEmail;

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
  const GetJobResult({
    this.configuration,
    this.etag,
    this.jobCreationReason,
    this.jobReference,
    this.kind,
    this.selfLink,
    this.statistics,
    this.status,
    this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration?.toMap(),
      'etag': ?etag,
      'jobCreationReason': ?jobCreationReason,
      'jobReference': ?jobReference?.toMap(),
      'kind': ?kind,
      'selfLink': ?selfLink,
      'statistics': ?statistics?.toMap(),
      'status': ?status?.toMap(),
      'userEmail': ?userEmail,
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return JobConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jobCreationReason: (() { final guardedValue = map['jobCreationReason']; if (guardedValue == null) return null; return guardedValue; })(),
      jobReference: (() { final guardedValue = map['jobReference']; if (guardedValue == null) return null; return JobReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statistics: (() { final guardedValue = map['statistics']; if (guardedValue == null) return null; return JobStatisticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return JobStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      userEmail: (() { final guardedValue = map['userEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
