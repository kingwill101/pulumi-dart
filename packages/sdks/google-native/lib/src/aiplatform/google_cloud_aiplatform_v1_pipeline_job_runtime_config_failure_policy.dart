/// Represents the failure policy of a pipeline. Currently, the default of a pipeline is that the pipeline will continue to run until no more tasks can be executed, also known as PIPELINE_FAILURE_POLICY_FAIL_SLOW. However, if a pipeline is set to PIPELINE_FAILURE_POLICY_FAIL_FAST, it will stop scheduling any new tasks when a task has failed. Any scheduled tasks will continue to completion.
enum GoogleCloudAiplatformV1PipelineJobRuntimeConfigFailurePolicy {
  pipelineFailurePolicyUnspecified("PIPELINE_FAILURE_POLICY_UNSPECIFIED"),
  pipelineFailurePolicyFailSlow("PIPELINE_FAILURE_POLICY_FAIL_SLOW"),
  pipelineFailurePolicyFailFast("PIPELINE_FAILURE_POLICY_FAIL_FAST");

  const GoogleCloudAiplatformV1PipelineJobRuntimeConfigFailurePolicy(this.wireValue);
  final String wireValue;

  static GoogleCloudAiplatformV1PipelineJobRuntimeConfigFailurePolicy fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1PipelineJobRuntimeConfigFailurePolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1PipelineJobRuntimeConfigFailurePolicy value: $value');
  }
}

