// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encapsulates the full scoping used to reference a job.
class JobReferenceDataprocV1beta2 {
  /// Optional. The job ID, which must be unique within the project. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or hyphens (-). The maximum length is 100 characters.If not specified by the caller, the job ID will be provided by the server.
  final pulumi.Input<String>? jobId;

  /// Optional. The ID of the Google Cloud Platform project that the job belongs to. If specified, must match the request project ID.
  final pulumi.Input<String>? project;

  /// Creates a new [JobReferenceDataprocV1beta2].
  /// [jobId] Optional. The job ID, which must be unique within the project. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or hyphens (-). The maximum length is 100 characters.If not specified by the caller, the job ID will be provided by the server.
  /// [project] Optional. The ID of the Google Cloud Platform project that the job belongs to. If specified, must match the request project ID.
  JobReferenceDataprocV1beta2({this.jobId, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'jobId': ?jobId, 'project': ?project};
  }

  factory JobReferenceDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return JobReferenceDataprocV1beta2(
      jobId: (() {
        final guardedValue = map['jobId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
