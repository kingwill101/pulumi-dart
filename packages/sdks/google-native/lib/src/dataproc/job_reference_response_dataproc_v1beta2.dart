// ignore_for_file: unused_element, unnecessary_cast


/// Encapsulates the full scoping used to reference a job.
class JobReferenceResponseDataprocV1beta2 {
  /// Optional. The job ID, which must be unique within the project. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or hyphens (-). The maximum length is 100 characters.If not specified by the caller, the job ID will be provided by the server.
  final String jobId;
  /// Optional. The ID of the Google Cloud Platform project that the job belongs to. If specified, must match the request project ID.
  final String project;

  /// Creates a new [JobReferenceResponseDataprocV1beta2].
  /// [jobId] Optional. The job ID, which must be unique within the project. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or hyphens (-). The maximum length is 100 characters.If not specified by the caller, the job ID will be provided by the server.
  /// [project] Optional. The ID of the Google Cloud Platform project that the job belongs to. If specified, must match the request project ID.
  JobReferenceResponseDataprocV1beta2({
    required this.jobId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'project': project,
    };
  }

  factory JobReferenceResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return JobReferenceResponseDataprocV1beta2(
      jobId: map['jobId'] as String,
      project: map['project'] as String,
    );
  }
}

