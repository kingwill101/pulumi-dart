// ignore_for_file: unused_element, unnecessary_cast


/// The detailed info for a custom job executor.
class GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailCustomJobDetailResponse {
  /// The names of the previously failed CustomJob. The list includes the all attempts in chronological order.
  final List<String> failedJobs;
  /// The name of the CustomJob.
  final String job;

  /// Creates a new [GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailCustomJobDetailResponse].
  /// [failedJobs] The names of the previously failed CustomJob. The list includes the all attempts in chronological order.
  /// [job] The name of the CustomJob.
  GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailCustomJobDetailResponse({
    required this.failedJobs,
    required this.job,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedJobs': failedJobs,
      'job': job,
    };
  }

  factory GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailCustomJobDetailResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailCustomJobDetailResponse(
      failedJobs: (map['failedJobs'] as List).cast<String>(),
      job: map['job'] as String,
    );
  }
}

