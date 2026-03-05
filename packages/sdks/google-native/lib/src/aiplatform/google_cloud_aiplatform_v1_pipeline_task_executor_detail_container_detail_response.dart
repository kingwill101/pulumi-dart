// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The detail of a container execution. It contains the job names of the lifecycle of a container execution.
class GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetailResponse {
  /// The names of the previously failed CustomJob for the main container executions. The list includes the all attempts in chronological order.
  final pulumi.Input<List<String>> failedMainJobs;
  /// The names of the previously failed CustomJob for the pre-caching-check container executions. This job will be available if the PipelineJob.pipeline_spec specifies the `pre_caching_check` hook in the lifecycle events. The list includes the all attempts in chronological order.
  final pulumi.Input<List<String>> failedPreCachingCheckJobs;
  /// The name of the CustomJob for the main container execution.
  final pulumi.Input<String> mainJob;
  /// The name of the CustomJob for the pre-caching-check container execution. This job will be available if the PipelineJob.pipeline_spec specifies the `pre_caching_check` hook in the lifecycle events.
  final pulumi.Input<String> preCachingCheckJob;

  /// Creates a new [GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetailResponse].
  /// [failedMainJobs] The names of the previously failed CustomJob for the main container executions. The list includes the all attempts in chronological order.
  /// [failedPreCachingCheckJobs] The names of the previously failed CustomJob for the pre-caching-check container executions. This job will be available if the PipelineJob.pipeline_spec specifies the `pre_caching_check` hook in the lifecycle events. The list includes the all attempts in chronological order.
  /// [mainJob] The name of the CustomJob for the main container execution.
  /// [preCachingCheckJob] The name of the CustomJob for the pre-caching-check container execution. This job will be available if the PipelineJob.pipeline_spec specifies the `pre_caching_check` hook in the lifecycle events.
  GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetailResponse({
    required this.failedMainJobs,
    required this.failedPreCachingCheckJobs,
    required this.mainJob,
    required this.preCachingCheckJob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedMainJobs': failedMainJobs,
      'failedPreCachingCheckJobs': failedPreCachingCheckJobs,
      'mainJob': mainJob,
      'preCachingCheckJob': preCachingCheckJob,
    };
  }

  factory GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetailResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetailResponse(
      failedMainJobs: pulumi.Input.fromValue((map['failedMainJobs'] as List).cast<String>()),
      failedPreCachingCheckJobs: pulumi.Input.fromValue((map['failedPreCachingCheckJobs'] as List).cast<String>()),
      mainJob: pulumi.Input.fromValue(map['mainJob'] as String),
      preCachingCheckJob: pulumi.Input.fromValue(map['preCachingCheckJob'] as String),
    );
  }
}

