// ignore_for_file: unused_element, unnecessary_cast


/// Current job details of the migration item.
class CurrentJobDetailsResponse {
  /// The ARM Id of the job being executed.
  final String jobId;
  /// The job name.
  final String jobName;
  /// The start time of the job.
  final String startTime;

  /// Creates a new [CurrentJobDetailsResponse].
  /// [jobId] The ARM Id of the job being executed.
  /// [jobName] The job name.
  /// [startTime] The start time of the job.
  CurrentJobDetailsResponse({
    required this.jobId,
    required this.jobName,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'jobName': jobName,
      'startTime': startTime,
    };
  }

  factory CurrentJobDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CurrentJobDetailsResponse(
      jobId: map['jobId'] as String,
      jobName: map['jobName'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

