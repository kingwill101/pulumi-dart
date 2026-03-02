// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_coordinate_response.dart';
import 'google_cloud_integrations_v1alpha_failure_policy_response.dart';
import 'google_cloud_integrations_v1alpha_next_task_response.dart';
import 'google_cloud_integrations_v1alpha_success_policy_response.dart';

/// The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task.
class GoogleCloudIntegrationsV1alphaTaskConfigResponse {
  /// Optional. User-provided description intended to give additional business context about the task.
  final pulumi.Input<String> description;
  /// Optional. User-provided label that is attached to this TaskConfig in the UI.
  final pulumi.Input<String> displayName;
  /// Optional. Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final pulumi.Input<String> errorCatcherId;
  /// Optional. External task type of the task
  final pulumi.Input<String> externalTaskType;
  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).
  final pulumi.Input<GoogleCloudIntegrationsV1alphaFailurePolicyResponse> failurePolicy;
  /// Optional. If set, overrides the option configured in the Task implementation class.
  final pulumi.Input<String> jsonValidationOption;
  /// Optional. The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaNextTaskResponse>> nextTasks;
  /// Optional. The policy dictating the execution of the next set of tasks for the current task.
  final pulumi.Input<String> nextTasksExecutionPolicy;
  /// Optional. The customized parameters the user can pass to this task.
  final pulumi.Input<Map<String, String>> parameters;
  /// Optional. Informs the front-end application where to draw this error catcher config on the UI.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaCoordinateResponse> position;
  /// Optional. Determines what action to take upon successful task completion.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaSuccessPolicyResponse> successPolicy;
  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).
  final pulumi.Input<GoogleCloudIntegrationsV1alphaFailurePolicyResponse> synchronousCallFailurePolicy;
  /// Optional. The name for the task.
  final pulumi.Input<String> task;
  /// Optional. The policy dictating the execution strategy of this task.
  final pulumi.Input<String> taskExecutionStrategy;
  /// The identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_id`).
  final pulumi.Input<String> taskId;
  /// Optional. Used to define task-template name if task is of type task-template
  final pulumi.Input<String> taskTemplate;

  /// Creates a new [GoogleCloudIntegrationsV1alphaTaskConfigResponse].
  /// [description] Optional. User-provided description intended to give additional business context about the task.
  /// [displayName] Optional. User-provided label that is attached to this TaskConfig in the UI.
  /// [errorCatcherId] Optional. Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  /// [externalTaskType] Optional. External task type of the task
  /// [failurePolicy] Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).
  /// [jsonValidationOption] Optional. If set, overrides the option configured in the Task implementation class.
  /// [nextTasks] Optional. The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.
  /// [nextTasksExecutionPolicy] Optional. The policy dictating the execution of the next set of tasks for the current task.
  /// [parameters] Optional. The customized parameters the user can pass to this task.
  /// [position] Optional. Informs the front-end application where to draw this error catcher config on the UI.
  /// [successPolicy] Optional. Determines what action to take upon successful task completion.
  /// [synchronousCallFailurePolicy] Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).
  /// [task] Optional. The name for the task.
  /// [taskExecutionStrategy] Optional. The policy dictating the execution strategy of this task.
  /// [taskId] The identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_id`).
  /// [taskTemplate] Optional. Used to define task-template name if task is of type task-template
  GoogleCloudIntegrationsV1alphaTaskConfigResponse({
    required this.description,
    required this.displayName,
    required this.errorCatcherId,
    required this.externalTaskType,
    required this.failurePolicy,
    required this.jsonValidationOption,
    required this.nextTasks,
    required this.nextTasksExecutionPolicy,
    required this.parameters,
    required this.position,
    required this.successPolicy,
    required this.synchronousCallFailurePolicy,
    required this.task,
    required this.taskExecutionStrategy,
    required this.taskId,
    required this.taskTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'errorCatcherId': errorCatcherId,
      'externalTaskType': externalTaskType,
      'failurePolicy': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaFailurePolicyResponse, Map<String, dynamic>>(failurePolicy, (value) => value.toMap()),
      'jsonValidationOption': jsonValidationOption,
      'nextTasks': pulumi.Input.mapInputValue<List<GoogleCloudIntegrationsV1alphaNextTaskResponse>, List<Map<String, dynamic>>>(nextTasks, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaNextTaskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nextTasksExecutionPolicy': nextTasksExecutionPolicy,
      'parameters': parameters,
      'position': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaCoordinateResponse, Map<String, dynamic>>(position, (value) => value.toMap()),
      'successPolicy': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaSuccessPolicyResponse, Map<String, dynamic>>(successPolicy, (value) => value.toMap()),
      'synchronousCallFailurePolicy': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaFailurePolicyResponse, Map<String, dynamic>>(synchronousCallFailurePolicy, (value) => value.toMap()),
      'task': task,
      'taskExecutionStrategy': taskExecutionStrategy,
      'taskId': taskId,
      'taskTemplate': taskTemplate,
    };
  }

  factory GoogleCloudIntegrationsV1alphaTaskConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaTaskConfigResponse(
      description: (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      errorCatcherId: (map['errorCatcherId'] as String).input(),
      externalTaskType: (map['externalTaskType'] as String).input(),
      failurePolicy: (GoogleCloudIntegrationsV1alphaFailurePolicyResponse.fromMap((map['failurePolicy'] as Map).cast<String, dynamic>())).input(),
      jsonValidationOption: (map['jsonValidationOption'] as String).input(),
      nextTasks: (pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaNextTaskResponse>(map['nextTasks'], (value) => GoogleCloudIntegrationsV1alphaNextTaskResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nextTasksExecutionPolicy: (map['nextTasksExecutionPolicy'] as String).input(),
      parameters: ((map['parameters'] as Map).cast<String, String>()).input(),
      position: (GoogleCloudIntegrationsV1alphaCoordinateResponse.fromMap((map['position'] as Map).cast<String, dynamic>())).input(),
      successPolicy: (GoogleCloudIntegrationsV1alphaSuccessPolicyResponse.fromMap((map['successPolicy'] as Map).cast<String, dynamic>())).input(),
      synchronousCallFailurePolicy: (GoogleCloudIntegrationsV1alphaFailurePolicyResponse.fromMap((map['synchronousCallFailurePolicy'] as Map).cast<String, dynamic>())).input(),
      task: (map['task'] as String).input(),
      taskExecutionStrategy: (map['taskExecutionStrategy'] as String).input(),
      taskId: (map['taskId'] as String).input(),
      taskTemplate: (map['taskTemplate'] as String).input(),
    );
  }
}

