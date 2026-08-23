// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_coordinate.dart';
import 'google_cloud_integrations_v1alpha_failure_policy.dart';
import 'google_cloud_integrations_v1alpha_next_task.dart';
import 'google_cloud_integrations_v1alpha_success_policy.dart';
import 'google_cloud_integrations_v1alpha_task_config_external_task_type.dart';
import 'google_cloud_integrations_v1alpha_task_config_json_validation_option.dart';
import 'google_cloud_integrations_v1alpha_task_config_next_tasks_execution_policy.dart';
import 'google_cloud_integrations_v1alpha_task_config_task_execution_strategy.dart';

/// The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task.
class GoogleCloudIntegrationsV1alphaTaskConfig {
  /// Optional. User-provided description intended to give additional business context about the task.
  final pulumi.Input<String>? description;
  /// Optional. User-provided label that is attached to this TaskConfig in the UI.
  final pulumi.Input<String>? displayName;
  /// Optional. Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final pulumi.Input<String>? errorCatcherId;
  /// Optional. External task type of the task
  final pulumi.Input<GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType>? externalTaskType;
  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).
  final pulumi.Input<GoogleCloudIntegrationsV1alphaFailurePolicy>? failurePolicy;
  /// Optional. If set, overrides the option configured in the Task implementation class.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaTaskConfigJsonValidationOption>? jsonValidationOption;
  /// Optional. The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaNextTask>>? nextTasks;
  /// Optional. The policy dictating the execution of the next set of tasks for the current task.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaTaskConfigNextTasksExecutionPolicy>? nextTasksExecutionPolicy;
  /// Optional. The customized parameters the user can pass to this task.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Optional. Informs the front-end application where to draw this error catcher config on the UI.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaCoordinate>? position;
  /// Optional. Determines what action to take upon successful task completion.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaSuccessPolicy>? successPolicy;
  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).
  final pulumi.Input<GoogleCloudIntegrationsV1alphaFailurePolicy>? synchronousCallFailurePolicy;
  /// Optional. The name for the task.
  final pulumi.Input<String>? task;
  /// Optional. The policy dictating the execution strategy of this task.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaTaskConfigTaskExecutionStrategy>? taskExecutionStrategy;
  /// The identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_id`).
  final pulumi.Input<String> taskId;
  /// Optional. Used to define task-template name if task is of type task-template
  final pulumi.Input<String>? taskTemplate;

  /// Creates a new [GoogleCloudIntegrationsV1alphaTaskConfig].
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
  const GoogleCloudIntegrationsV1alphaTaskConfig({
    this.description,
    this.displayName,
    this.errorCatcherId,
    this.externalTaskType,
    this.failurePolicy,
    this.jsonValidationOption,
    this.nextTasks,
    this.nextTasksExecutionPolicy,
    this.parameters,
    this.position,
    this.successPolicy,
    this.synchronousCallFailurePolicy,
    this.task,
    this.taskExecutionStrategy,
    required this.taskId,
    this.taskTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'errorCatcherId': ?errorCatcherId,
      'externalTaskType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType, String>(externalTaskType, (value) => value.wireValue),
      'failurePolicy': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaFailurePolicy, Map<String, dynamic>>(failurePolicy, (value) => value.toMap()),
      'jsonValidationOption': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaTaskConfigJsonValidationOption, String>(jsonValidationOption, (value) => value.wireValue),
      'nextTasks': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIntegrationsV1alphaNextTask>, List<Map<String, dynamic>>>(nextTasks, (value) => pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaNextTask, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nextTasksExecutionPolicy': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaTaskConfigNextTasksExecutionPolicy, String>(nextTasksExecutionPolicy, (value) => value.wireValue),
      'parameters': ?parameters,
      'position': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaCoordinate, Map<String, dynamic>>(position, (value) => value.toMap()),
      'successPolicy': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaSuccessPolicy, Map<String, dynamic>>(successPolicy, (value) => value.toMap()),
      'synchronousCallFailurePolicy': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaFailurePolicy, Map<String, dynamic>>(synchronousCallFailurePolicy, (value) => value.toMap()),
      'task': ?task,
      'taskExecutionStrategy': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaTaskConfigTaskExecutionStrategy, String>(taskExecutionStrategy, (value) => value.wireValue),
      'taskId': taskId,
      'taskTemplate': ?taskTemplate,
    };
  }

  factory GoogleCloudIntegrationsV1alphaTaskConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaTaskConfig(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorCatcherId: (() { final guardedValue = map['errorCatcherId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalTaskType: (() { final guardedValue = map['externalTaskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType.fromValue(guardedValue as String)); })(),
      failurePolicy: (() { final guardedValue = map['failurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaFailurePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jsonValidationOption: (() { final guardedValue = map['jsonValidationOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaTaskConfigJsonValidationOption.fromValue(guardedValue as String)); })(),
      nextTasks: (() { final guardedValue = map['nextTasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaNextTask>(guardedValue, (value) => GoogleCloudIntegrationsV1alphaNextTask.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nextTasksExecutionPolicy: (() { final guardedValue = map['nextTasksExecutionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaTaskConfigNextTasksExecutionPolicy.fromValue(guardedValue as String)); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      position: (() { final guardedValue = map['position']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaCoordinate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      successPolicy: (() { final guardedValue = map['successPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaSuccessPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      synchronousCallFailurePolicy: (() { final guardedValue = map['synchronousCallFailurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaFailurePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      task: (() { final guardedValue = map['task']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskExecutionStrategy: (() { final guardedValue = map['taskExecutionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaTaskConfigTaskExecutionStrategy.fromValue(guardedValue as String)); })(),
      taskId: pulumi.Input.fromValue(map['taskId'] as String),
      taskTemplate: (() { final guardedValue = map['taskTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
