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
      'externalTaskType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType, String>(externalTaskType, (value) => value.wireValue),
      'failurePolicy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoFailurePolicy, Map<String, dynamic>>(failurePolicy, (value) => value.toMap()),
      'incomingEdgeCount': ?incomingEdgeCount,
      'jsonValidationOption': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption, String>(jsonValidationOption, (value) => value.wireValue),
      'label': ?label,
      'lastModifiedTime': ?lastModifiedTime,
      'nextTasks': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmEventbusProtoNextTask>, List<Map<String, dynamic>>>(nextTasks, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoNextTask, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nextTasksExecutionPolicy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoTaskConfigNextTasksExecutionPolicy, String>(nextTasksExecutionPolicy, (value) => value.wireValue),
      'parameters': ?parameters,
      'position': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoCoordinate, Map<String, dynamic>>(position, (value) => value.toMap()),
      'precondition': ?precondition,
      'preconditionLabel': ?preconditionLabel,
      'rollbackStrategy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoRollbackStrategy, Map<String, dynamic>>(rollbackStrategy, (value) => value.toMap()),
      'successPolicy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoSuccessPolicy, Map<String, dynamic>>(successPolicy, (value) => value.toMap()),
      'synchronousCallFailurePolicy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoFailurePolicy, Map<String, dynamic>>(synchronousCallFailurePolicy, (value) => value.toMap()),
      'taskEntity': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoTaskEntity, Map<String, dynamic>>(taskEntity, (value) => value.toMap()),
      'taskExecutionStrategy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskExecutionStrategy, String>(taskExecutionStrategy, (value) => value.wireValue),
      'taskName': ?taskName,
      'taskNumber': ?taskNumber,
      'taskSpec': ?taskSpec,
      'taskTemplateName': ?taskTemplateName,
      'taskType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType, String>(taskType, (value) => value.wireValue),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoTaskConfig.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoTaskConfig(
      alertConfigs: (() { final guardedValue = map['alertConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmEventbusProtoTaskAlertConfig>(guardedValue, (value) => EnterpriseCrmEventbusProtoTaskAlertConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creatorEmail: (() { final guardedValue = map['creatorEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableStrictTypeValidation: (() { final guardedValue = map['disableStrictTypeValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      errorCatcherId: (() { final guardedValue = map['errorCatcherId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalTaskType: (() { final guardedValue = map['externalTaskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType.fromValue(guardedValue as String)); })(),
      failurePolicy: (() { final guardedValue = map['failurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoFailurePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      incomingEdgeCount: (() { final guardedValue = map['incomingEdgeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      jsonValidationOption: (() { final guardedValue = map['jsonValidationOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption.fromValue(guardedValue as String)); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextTasks: (() { final guardedValue = map['nextTasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmEventbusProtoNextTask>(guardedValue, (value) => EnterpriseCrmEventbusProtoNextTask.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nextTasksExecutionPolicy: (() { final guardedValue = map['nextTasksExecutionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoTaskConfigNextTasksExecutionPolicy.fromValue(guardedValue as String)); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      position: (() { final guardedValue = map['position']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoCoordinate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      precondition: (() { final guardedValue = map['precondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preconditionLabel: (() { final guardedValue = map['preconditionLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rollbackStrategy: (() { final guardedValue = map['rollbackStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoRollbackStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      successPolicy: (() { final guardedValue = map['successPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoSuccessPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      synchronousCallFailurePolicy: (() { final guardedValue = map['synchronousCallFailurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoFailurePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskEntity: (() { final guardedValue = map['taskEntity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoTaskEntity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskExecutionStrategy: (() { final guardedValue = map['taskExecutionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskExecutionStrategy.fromValue(guardedValue as String)); })(),
      taskName: (() { final guardedValue = map['taskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskNumber: (() { final guardedValue = map['taskNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskSpec: (() { final guardedValue = map['taskSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskTemplateName: (() { final guardedValue = map['taskTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskType: (() { final guardedValue = map['taskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType.fromValue(guardedValue as String)); })(),
    );
  }
}

