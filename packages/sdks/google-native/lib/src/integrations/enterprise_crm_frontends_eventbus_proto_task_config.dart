// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_coordinate.dart';
import 'enterprise_crm_eventbus_proto_failure_policy.dart';
import 'enterprise_crm_eventbus_proto_next_task.dart';
import 'enterprise_crm_eventbus_proto_success_policy.dart';
import 'enterprise_crm_eventbus_proto_task_alert_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_rollback_strategy.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config_external_task_type.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config_json_validation_option.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config_next_tasks_execution_policy.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config_task_execution_strategy.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config_task_type.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_entity.dart';

/// The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task.
class EnterpriseCrmFrontendsEventbusProtoTaskConfig {
  /// Alert configurations on error rate, warning rate, number of runs, durations, etc.
  final pulumi.Input<List<EnterpriseCrmEventbusProtoTaskAlertConfig>>? alertConfigs;
  /// Auto-generated.
  final pulumi.Input<String>? createTime;
  /// The creator's email address. Auto-generated from the user's email.
  final pulumi.Input<String>? creatorEmail;
  /// User-provided description intended to give more business context about the task.
  final pulumi.Input<String>? description;
  /// If this config contains a TypedTask, allow validation to succeed if an input is read from the output of another TypedTask whose output type is declared as a superclass of the requested input type. For instance, if the previous task declares an output of type Message, any task with this flag enabled will pass validation when attempting to read any proto Message type from the resultant Event parameter.
  final pulumi.Input<bool>? disableStrictTypeValidation;
  /// Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final pulumi.Input<String>? errorCatcherId;
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType>? externalTaskType;
  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).
  final pulumi.Input<EnterpriseCrmEventbusProtoFailurePolicy>? failurePolicy;
  /// The number of edges leading into this TaskConfig.
  final pulumi.Input<int>? incomingEdgeCount;
  /// If set, overrides the option configured in the Task implementation class.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption>? jsonValidationOption;
  /// User-provided label that is attached to this TaskConfig in the UI.
  final pulumi.Input<String>? label;
  /// Auto-generated.
  final pulumi.Input<String>? lastModifiedTime;
  /// The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.
  final pulumi.Input<List<EnterpriseCrmEventbusProtoNextTask>>? nextTasks;
  /// The policy dictating the execution of the next set of tasks for the current task.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoTaskConfigNextTasksExecutionPolicy>? nextTasksExecutionPolicy;
  /// The customized parameters the user can pass to this task.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Optional. Informs the front-end application where to draw this task config on the UI.
  final pulumi.Input<EnterpriseCrmEventbusProtoCoordinate>? position;
  /// Optional. Standard filter expression evaluated before execution. Independent of other conditions and tasks. Can be used to enable rollout. e.g. "rollout(5)" will only allow 5% of incoming traffic to task.
  final pulumi.Input<String>? precondition;
  /// Optional. User-provided label that is attached to precondition in the UI.
  final pulumi.Input<String>? preconditionLabel;
  /// Optional. Contains information about what needs to be done upon failure (either a permanent error or after it has been retried too many times).
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoRollbackStrategy>? rollbackStrategy;
  /// Determines what action to take upon successful task completion.
  final pulumi.Input<EnterpriseCrmEventbusProtoSuccessPolicy>? successPolicy;
  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).
  final pulumi.Input<EnterpriseCrmEventbusProtoFailurePolicy>? synchronousCallFailurePolicy;
  /// Copy of the task entity that this task config is an instance of.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoTaskEntity>? taskEntity;
  /// The policy dictating the execution strategy of this task.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskExecutionStrategy>? taskExecutionStrategy;
  /// The name for the task.
  final pulumi.Input<String>? taskName;
  /// REQUIRED: the identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_number`).
  final pulumi.Input<String>? taskNumber;
  /// A string template that allows user to configure task parameters (with either literal default values or tokens which will be resolved at execution time) for the task. It will eventually replace the old "parameters" field.
  final pulumi.Input<String>? taskSpec;
  /// Used to define task-template name if task is of type task-template
  final pulumi.Input<String>? taskTemplateName;
  /// Defines the type of the task
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType>? taskType;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoTaskConfig].
  /// [alertConfigs] Alert configurations on error rate, warning rate, number of runs, durations, etc.
  /// [createTime] Auto-generated.
  /// [creatorEmail] The creator's email address. Auto-generated from the user's email.
  /// [description] User-provided description intended to give more business context about the task.
  /// [disableStrictTypeValidation] If this config contains a TypedTask, allow validation to succeed if an input is read from the output of another TypedTask whose output type is declared as a superclass of the requested input type. For instance, if the previous task declares an output of type Message, any task with this flag enabled will pass validation when attempting to read any proto Message type from the resultant Event parameter.
  /// [errorCatcherId] Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  /// [externalTaskType] Optional.
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
  EnterpriseCrmFrontendsEventbusProtoTaskConfig({
    this.alertConfigs,
    this.createTime,
    this.creatorEmail,
    this.description,
    this.disableStrictTypeValidation,
    this.errorCatcherId,
    this.externalTaskType,
    this.failurePolicy,
    this.incomingEdgeCount,
    this.jsonValidationOption,
    this.label,
    this.lastModifiedTime,
    this.nextTasks,
    this.nextTasksExecutionPolicy,
    this.parameters,
    this.position,
    this.precondition,
    this.preconditionLabel,
    this.rollbackStrategy,
    this.successPolicy,
    this.synchronousCallFailurePolicy,
    this.taskEntity,
    this.taskExecutionStrategy,
    this.taskName,
    this.taskNumber,
    this.taskSpec,
    this.taskTemplateName,
    this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfigs': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmEventbusProtoTaskAlertConfig>, List<Map<String, dynamic>>>(alertConfigs, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoTaskAlertConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'creatorEmail': ?creatorEmail,
      'description': ?description,
      'disableStrictTypeValidation': ?disableStrictTypeValidation,
      'errorCatcherId': ?errorCatcherId,
      'externalTaskType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType, String>(externalTaskType, (value) => value.value),
      'failurePolicy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoFailurePolicy, Map<String, dynamic>>(failurePolicy, (value) => value.toMap()),
      'incomingEdgeCount': ?incomingEdgeCount,
      'jsonValidationOption': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption, String>(jsonValidationOption, (value) => value.value),
      'label': ?label,
      'lastModifiedTime': ?lastModifiedTime,
      'nextTasks': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmEventbusProtoNextTask>, List<Map<String, dynamic>>>(nextTasks, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoNextTask, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nextTasksExecutionPolicy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoTaskConfigNextTasksExecutionPolicy, String>(nextTasksExecutionPolicy, (value) => value.value),
      'parameters': ?parameters,
      'position': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoCoordinate, Map<String, dynamic>>(position, (value) => value.toMap()),
      'precondition': ?precondition,
      'preconditionLabel': ?preconditionLabel,
      'rollbackStrategy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoRollbackStrategy, Map<String, dynamic>>(rollbackStrategy, (value) => value.toMap()),
      'successPolicy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoSuccessPolicy, Map<String, dynamic>>(successPolicy, (value) => value.toMap()),
      'synchronousCallFailurePolicy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoFailurePolicy, Map<String, dynamic>>(synchronousCallFailurePolicy, (value) => value.toMap()),
      'taskEntity': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoTaskEntity, Map<String, dynamic>>(taskEntity, (value) => value.toMap()),
      'taskExecutionStrategy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskExecutionStrategy, String>(taskExecutionStrategy, (value) => value.value),
      'taskName': ?taskName,
      'taskNumber': ?taskNumber,
      'taskSpec': ?taskSpec,
      'taskTemplateName': ?taskTemplateName,
      'taskType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType, String>(taskType, (value) => value.value),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoTaskConfig.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoTaskConfig(
      alertConfigs: map['alertConfigs'] == null ? null : (pulumi.Input.decodeList<EnterpriseCrmEventbusProtoTaskAlertConfig>(map['alertConfigs'], (value) => EnterpriseCrmEventbusProtoTaskAlertConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      creatorEmail: map['creatorEmail'] == null ? null : (map['creatorEmail'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disableStrictTypeValidation: map['disableStrictTypeValidation'] == null ? null : (map['disableStrictTypeValidation'] as bool).input(),
      errorCatcherId: map['errorCatcherId'] == null ? null : (map['errorCatcherId'] as String).input(),
      externalTaskType: map['externalTaskType'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType.fromValue(map['externalTaskType'] as String)).input(),
      failurePolicy: map['failurePolicy'] == null ? null : (EnterpriseCrmEventbusProtoFailurePolicy.fromMap((map['failurePolicy'] as Map).cast<String, dynamic>())).input(),
      incomingEdgeCount: map['incomingEdgeCount'] == null ? null : (map['incomingEdgeCount'] as int).input(),
      jsonValidationOption: map['jsonValidationOption'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption.fromValue(map['jsonValidationOption'] as String)).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      nextTasks: map['nextTasks'] == null ? null : (pulumi.Input.decodeList<EnterpriseCrmEventbusProtoNextTask>(map['nextTasks'], (value) => EnterpriseCrmEventbusProtoNextTask.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nextTasksExecutionPolicy: map['nextTasksExecutionPolicy'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoTaskConfigNextTasksExecutionPolicy.fromValue(map['nextTasksExecutionPolicy'] as String)).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      position: map['position'] == null ? null : (EnterpriseCrmEventbusProtoCoordinate.fromMap((map['position'] as Map).cast<String, dynamic>())).input(),
      precondition: map['precondition'] == null ? null : (map['precondition'] as String).input(),
      preconditionLabel: map['preconditionLabel'] == null ? null : (map['preconditionLabel'] as String).input(),
      rollbackStrategy: map['rollbackStrategy'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoRollbackStrategy.fromMap((map['rollbackStrategy'] as Map).cast<String, dynamic>())).input(),
      successPolicy: map['successPolicy'] == null ? null : (EnterpriseCrmEventbusProtoSuccessPolicy.fromMap((map['successPolicy'] as Map).cast<String, dynamic>())).input(),
      synchronousCallFailurePolicy: map['synchronousCallFailurePolicy'] == null ? null : (EnterpriseCrmEventbusProtoFailurePolicy.fromMap((map['synchronousCallFailurePolicy'] as Map).cast<String, dynamic>())).input(),
      taskEntity: map['taskEntity'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoTaskEntity.fromMap((map['taskEntity'] as Map).cast<String, dynamic>())).input(),
      taskExecutionStrategy: map['taskExecutionStrategy'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskExecutionStrategy.fromValue(map['taskExecutionStrategy'] as String)).input(),
      taskName: map['taskName'] == null ? null : (map['taskName'] as String).input(),
      taskNumber: map['taskNumber'] == null ? null : (map['taskNumber'] as String).input(),
      taskSpec: map['taskSpec'] == null ? null : (map['taskSpec'] as String).input(),
      taskTemplateName: map['taskTemplateName'] == null ? null : (map['taskTemplateName'] as String).input(),
      taskType: map['taskType'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType.fromValue(map['taskType'] as String)).input(),
    );
  }
}

