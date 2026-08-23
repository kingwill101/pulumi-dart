// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_coordinate_response.dart';
import 'enterprise_crm_eventbus_proto_failure_policy_response.dart';
import 'enterprise_crm_eventbus_proto_next_task_response.dart';
import 'enterprise_crm_eventbus_proto_success_policy_response.dart';
import 'enterprise_crm_eventbus_proto_task_alert_config_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_rollback_strategy_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_entity_response.dart';

/// The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task.
class EnterpriseCrmFrontendsEventbusProtoTaskConfigResponse {
  /// Alert configurations on error rate, warning rate, number of runs, durations, etc.
  final pulumi.Input<List<EnterpriseCrmEventbusProtoTaskAlertConfigResponse>> alertConfigs;
  /// Auto-generated.
  final pulumi.Input<String> createTime;
  /// The creator's email address. Auto-generated from the user's email.
  final pulumi.Input<String> creatorEmail;
  /// User-provided description intended to give more business context about the task.
  final pulumi.Input<String> description;
  /// If this config contains a TypedTask, allow validation to succeed if an input is read from the output of another TypedTask whose output type is declared as a superclass of the requested input type. For instance, if the previous task declares an output of type Message, any task with this flag enabled will pass validation when attempting to read any proto Message type from the resultant Event parameter.
  final pulumi.Input<bool> disableStrictTypeValidation;
  /// Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final pulumi.Input<String> errorCatcherId;
  final pulumi.Input<String> externalTaskType;
  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).
  final pulumi.Input<EnterpriseCrmEventbusProtoFailurePolicyResponse> failurePolicy;
  /// The number of edges leading into this TaskConfig.
  final pulumi.Input<int> incomingEdgeCount;
  /// If set, overrides the option configured in the Task implementation class.
  final pulumi.Input<String> jsonValidationOption;
  /// User-provided label that is attached to this TaskConfig in the UI.
  final pulumi.Input<String> label;
  /// Auto-generated.
  final pulumi.Input<String> lastModifiedTime;
  /// The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.
  final pulumi.Input<List<EnterpriseCrmEventbusProtoNextTaskResponse>> nextTasks;
  /// The policy dictating the execution of the next set of tasks for the current task.
  final pulumi.Input<String> nextTasksExecutionPolicy;
  /// The customized parameters the user can pass to this task.
  final pulumi.Input<Map<String, String>> parameters;
  /// Optional. Informs the front-end application where to draw this task config on the UI.
  final pulumi.Input<EnterpriseCrmEventbusProtoCoordinateResponse> position;
  /// Optional. Standard filter expression evaluated before execution. Independent of other conditions and tasks. Can be used to enable rollout. e.g. "rollout(5)" will only allow 5% of incoming traffic to task.
  final pulumi.Input<String> precondition;
  /// Optional. User-provided label that is attached to precondition in the UI.
  final pulumi.Input<String> preconditionLabel;
  /// Optional. Contains information about what needs to be done upon failure (either a permanent error or after it has been retried too many times).
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoRollbackStrategyResponse> rollbackStrategy;
  /// Determines what action to take upon successful task completion.
  final pulumi.Input<EnterpriseCrmEventbusProtoSuccessPolicyResponse> successPolicy;
  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).
  final pulumi.Input<EnterpriseCrmEventbusProtoFailurePolicyResponse> synchronousCallFailurePolicy;
  /// Copy of the task entity that this task config is an instance of.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse> taskEntity;
  /// The policy dictating the execution strategy of this task.
  final pulumi.Input<String> taskExecutionStrategy;
  /// The name for the task.
  final pulumi.Input<String> taskName;
  /// REQUIRED: the identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_number`).
  final pulumi.Input<String> taskNumber;
  /// A string template that allows user to configure task parameters (with either literal default values or tokens which will be resolved at execution time) for the task. It will eventually replace the old "parameters" field.
  final pulumi.Input<String> taskSpec;
  /// Used to define task-template name if task is of type task-template
  final pulumi.Input<String> taskTemplateName;
  /// Defines the type of the task
  final pulumi.Input<String> taskType;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoTaskConfigResponse].
  /// [alertConfigs] Alert configurations on error rate, warning rate, number of runs, durations, etc.
  /// [createTime] Auto-generated.
  /// [creatorEmail] The creator's email address. Auto-generated from the user's email.
  /// [description] User-provided description intended to give more business context about the task.
  /// [disableStrictTypeValidation] If this config contains a TypedTask, allow validation to succeed if an input is read from the output of another TypedTask whose output type is declared as a superclass of the requested input type. For instance, if the previous task declares an output of type Message, any task with this flag enabled will pass validation when attempting to read any proto Message type from the resultant Event parameter.
  /// [errorCatcherId] Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  /// [externalTaskType] Required.
  /// [failurePolicy] Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).
  /// [incomingEdgeCount] The number of edges leading into this TaskConfig.
  /// [jsonValidationOption] If set, overrides the option configured in the Task implementation class.
  /// [label] User-provided label that is attached to this TaskConfig in the UI.
  /// [lastModifiedTime] Auto-generated.
  /// [nextTasks] The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.
  /// [nextTasksExecutionPolicy] The policy dictating the execution of the next set of tasks for the current task.
  /// [parameters] The customized parameters the user can pass to this task.
  /// [position] Optional. Informs the front-end application where to draw this task config on the UI.
  /// [precondition] Optional. Standard filter expression evaluated before execution. Independent of other conditions and tasks. Can be used to enable rollout. e.g. "rollout(5)" will only allow 5% of incoming traffic to task.
  /// [preconditionLabel] Optional. User-provided label that is attached to precondition in the UI.
  /// [rollbackStrategy] Optional. Contains information about what needs to be done upon failure (either a permanent error or after it has been retried too many times).
  /// [successPolicy] Determines what action to take upon successful task completion.
  /// [synchronousCallFailurePolicy] Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).
  /// [taskEntity] Copy of the task entity that this task config is an instance of.
  /// [taskExecutionStrategy] The policy dictating the execution strategy of this task.
  /// [taskName] The name for the task.
  /// [taskNumber] REQUIRED: the identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_number`).
  /// [taskSpec] A string template that allows user to configure task parameters (with either literal default values or tokens which will be resolved at execution time) for the task. It will eventually replace the old "parameters" field.
  /// [taskTemplateName] Used to define task-template name if task is of type task-template
  /// [taskType] Defines the type of the task
  const EnterpriseCrmFrontendsEventbusProtoTaskConfigResponse({
    required this.alertConfigs,
    required this.createTime,
    required this.creatorEmail,
    required this.description,
    required this.disableStrictTypeValidation,
    required this.errorCatcherId,
    required this.externalTaskType,
    required this.failurePolicy,
    required this.incomingEdgeCount,
    required this.jsonValidationOption,
    required this.label,
    required this.lastModifiedTime,
    required this.nextTasks,
    required this.nextTasksExecutionPolicy,
    required this.parameters,
    required this.position,
    required this.precondition,
    required this.preconditionLabel,
    required this.rollbackStrategy,
    required this.successPolicy,
    required this.synchronousCallFailurePolicy,
    required this.taskEntity,
    required this.taskExecutionStrategy,
    required this.taskName,
    required this.taskNumber,
    required this.taskSpec,
    required this.taskTemplateName,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfigs': pulumi.Input.mapInputValue<List<EnterpriseCrmEventbusProtoTaskAlertConfigResponse>, List<Map<String, dynamic>>>(alertConfigs, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoTaskAlertConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': createTime,
      'creatorEmail': creatorEmail,
      'description': description,
      'disableStrictTypeValidation': disableStrictTypeValidation,
      'errorCatcherId': errorCatcherId,
      'externalTaskType': externalTaskType,
      'failurePolicy': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoFailurePolicyResponse, Map<String, dynamic>>(failurePolicy, (value) => value.toMap()),
      'incomingEdgeCount': incomingEdgeCount,
      'jsonValidationOption': jsonValidationOption,
      'label': label,
      'lastModifiedTime': lastModifiedTime,
      'nextTasks': pulumi.Input.mapInputValue<List<EnterpriseCrmEventbusProtoNextTaskResponse>, List<Map<String, dynamic>>>(nextTasks, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoNextTaskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nextTasksExecutionPolicy': nextTasksExecutionPolicy,
      'parameters': parameters,
      'position': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoCoordinateResponse, Map<String, dynamic>>(position, (value) => value.toMap()),
      'precondition': precondition,
      'preconditionLabel': preconditionLabel,
      'rollbackStrategy': pulumi.Input.mapInputValue<EnterpriseCrmFrontendsEventbusProtoRollbackStrategyResponse, Map<String, dynamic>>(rollbackStrategy, (value) => value.toMap()),
      'successPolicy': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoSuccessPolicyResponse, Map<String, dynamic>>(successPolicy, (value) => value.toMap()),
      'synchronousCallFailurePolicy': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoFailurePolicyResponse, Map<String, dynamic>>(synchronousCallFailurePolicy, (value) => value.toMap()),
      'taskEntity': pulumi.Input.mapInputValue<EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse, Map<String, dynamic>>(taskEntity, (value) => value.toMap()),
      'taskExecutionStrategy': taskExecutionStrategy,
      'taskName': taskName,
      'taskNumber': taskNumber,
      'taskSpec': taskSpec,
      'taskTemplateName': taskTemplateName,
      'taskType': taskType,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoTaskConfigResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoTaskConfigResponse(
      alertConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmEventbusProtoTaskAlertConfigResponse>(map['alertConfigs']!, (value) => EnterpriseCrmEventbusProtoTaskAlertConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      creatorEmail: pulumi.Input.fromValue(map['creatorEmail'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      disableStrictTypeValidation: pulumi.Input.fromValue(map['disableStrictTypeValidation'] as bool),
      errorCatcherId: pulumi.Input.fromValue(map['errorCatcherId'] as String),
      externalTaskType: pulumi.Input.fromValue(map['externalTaskType'] as String),
      failurePolicy: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoFailurePolicyResponse.fromMap((map['failurePolicy']! as Map).cast<String, dynamic>())),
      incomingEdgeCount: pulumi.Input.fromValue(map['incomingEdgeCount'] as int),
      jsonValidationOption: pulumi.Input.fromValue(map['jsonValidationOption'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      lastModifiedTime: pulumi.Input.fromValue(map['lastModifiedTime'] as String),
      nextTasks: pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmEventbusProtoNextTaskResponse>(map['nextTasks']!, (value) => EnterpriseCrmEventbusProtoNextTaskResponse.fromMap((value as Map).cast<String, dynamic>()))),
      nextTasksExecutionPolicy: pulumi.Input.fromValue(map['nextTasksExecutionPolicy'] as String),
      parameters: pulumi.Input.fromValue((map['parameters'] as Map).cast<String, String>()),
      position: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoCoordinateResponse.fromMap((map['position']! as Map).cast<String, dynamic>())),
      precondition: pulumi.Input.fromValue(map['precondition'] as String),
      preconditionLabel: pulumi.Input.fromValue(map['preconditionLabel'] as String),
      rollbackStrategy: pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoRollbackStrategyResponse.fromMap((map['rollbackStrategy']! as Map).cast<String, dynamic>())),
      successPolicy: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoSuccessPolicyResponse.fromMap((map['successPolicy']! as Map).cast<String, dynamic>())),
      synchronousCallFailurePolicy: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoFailurePolicyResponse.fromMap((map['synchronousCallFailurePolicy']! as Map).cast<String, dynamic>())),
      taskEntity: pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse.fromMap((map['taskEntity']! as Map).cast<String, dynamic>())),
      taskExecutionStrategy: pulumi.Input.fromValue(map['taskExecutionStrategy'] as String),
      taskName: pulumi.Input.fromValue(map['taskName'] as String),
      taskNumber: pulumi.Input.fromValue(map['taskNumber'] as String),
      taskSpec: pulumi.Input.fromValue(map['taskSpec'] as String),
      taskTemplateName: pulumi.Input.fromValue(map['taskTemplateName'] as String),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
