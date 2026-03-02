// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_execution_response.dart';
import 'google_cloud_aiplatform_v1beta1_pipeline_task_detail_pipeline_task_status_response.dart';
import 'google_cloud_aiplatform_v1beta1_pipeline_task_executor_detail_response.dart';
import 'google_rpc_status_response_aiplatform_v1beta1.dart';

/// The runtime detail of a task execution.
class GoogleCloudAiplatformV1beta1PipelineTaskDetailResponse {
  /// Task create time.
  final pulumi.Input<String> createTime;
  /// Task end time.
  final pulumi.Input<String> endTime;
  /// The error that occurred during task execution. Only populated when the task's state is FAILED or CANCELLED.
  final pulumi.Input<GoogleRpcStatusResponseAiplatformV1beta1> error;
  /// The execution metadata of the task.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ExecutionResponse> execution;
  /// The detailed execution info.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailResponse> executorDetail;
  /// The runtime input artifacts of the task.
  final pulumi.Input<Map<String, String>> inputs;
  /// The runtime output artifacts of the task.
  final pulumi.Input<Map<String, String>> outputs;
  /// The id of the parent task if the task is within a component scope. Empty if the task is at the root level.
  final pulumi.Input<String> parentTaskId;
  /// A list of task status. This field keeps a record of task status evolving over time.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse>> pipelineTaskStatus;
  /// Task start time.
  final pulumi.Input<String> startTime;
  /// State of the task.
  final pulumi.Input<String> state;
  /// The system generated ID of the task.
  final pulumi.Input<String> taskId;
  /// The user specified name of the task that is defined in pipeline_spec.
  final pulumi.Input<String> taskName;

  /// Creates a new [GoogleCloudAiplatformV1beta1PipelineTaskDetailResponse].
  /// [createTime] Task create time.
  /// [endTime] Task end time.
  /// [error] The error that occurred during task execution. Only populated when the task's state is FAILED or CANCELLED.
  /// [execution] The execution metadata of the task.
  /// [executorDetail] The detailed execution info.
  /// [inputs] The runtime input artifacts of the task.
  /// [outputs] The runtime output artifacts of the task.
  /// [parentTaskId] The id of the parent task if the task is within a component scope. Empty if the task is at the root level.
  /// [pipelineTaskStatus] A list of task status. This field keeps a record of task status evolving over time.
  /// [startTime] Task start time.
  /// [state] State of the task.
  /// [taskId] The system generated ID of the task.
  /// [taskName] The user specified name of the task that is defined in pipeline_spec.
  GoogleCloudAiplatformV1beta1PipelineTaskDetailResponse({
    required this.createTime,
    required this.endTime,
    required this.error,
    required this.execution,
    required this.executorDetail,
    required this.inputs,
    required this.outputs,
    required this.parentTaskId,
    required this.pipelineTaskStatus,
    required this.startTime,
    required this.state,
    required this.taskId,
    required this.taskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'endTime': endTime,
      'error': pulumi.Input.mapInputValue<GoogleRpcStatusResponseAiplatformV1beta1, Map<String, dynamic>>(error, (value) => value.toMap()),
      'execution': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1ExecutionResponse, Map<String, dynamic>>(execution, (value) => value.toMap()),
      'executorDetail': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailResponse, Map<String, dynamic>>(executorDetail, (value) => value.toMap()),
      'inputs': inputs,
      'outputs': outputs,
      'parentTaskId': parentTaskId,
      'pipelineTaskStatus': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse>, List<Map<String, dynamic>>>(pipelineTaskStatus, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTime': startTime,
      'state': state,
      'taskId': taskId,
      'taskName': taskName,
    };
  }

  factory GoogleCloudAiplatformV1beta1PipelineTaskDetailResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PipelineTaskDetailResponse(
      createTime: (map['createTime'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      error: (GoogleRpcStatusResponseAiplatformV1beta1.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      execution: (GoogleCloudAiplatformV1beta1ExecutionResponse.fromMap((map['execution'] as Map).cast<String, dynamic>())).input(),
      executorDetail: (GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailResponse.fromMap((map['executorDetail'] as Map).cast<String, dynamic>())).input(),
      inputs: ((map['inputs'] as Map).cast<String, String>()).input(),
      outputs: ((map['outputs'] as Map).cast<String, String>()).input(),
      parentTaskId: (map['parentTaskId'] as String).input(),
      pipelineTaskStatus: (pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse>(map['pipelineTaskStatus'], (value) => GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startTime: (map['startTime'] as String).input(),
      state: (map['state'] as String).input(),
      taskId: (map['taskId'] as String).input(),
      taskName: (map['taskName'] as String).input(),
    );
  }
}

