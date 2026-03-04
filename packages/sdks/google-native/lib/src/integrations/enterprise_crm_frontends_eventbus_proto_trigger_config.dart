// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_cloud_scheduler_config.dart';
import 'enterprise_crm_eventbus_proto_coordinate.dart';
import 'enterprise_crm_eventbus_proto_next_task.dart';
import 'enterprise_crm_eventbus_proto_trigger_criteria.dart';
import 'enterprise_crm_eventbus_proto_workflow_alert_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_trigger_config_next_tasks_execution_policy.dart';
import 'enterprise_crm_frontends_eventbus_proto_trigger_config_trigger_type.dart';

/// Configuration detail of a trigger. Next available id: 20
class EnterpriseCrmFrontendsEventbusProtoTriggerConfig {
  /// An alert threshold configuration for the [trigger + client + workflow] tuple. If these values are not specified in the trigger config, default values will be populated by the system. Note that there must be exactly one alert threshold configured per [client + trigger + workflow] when published.
  final pulumi.Input<List<EnterpriseCrmEventbusProtoWorkflowAlertConfig>>?
  alertConfig;
  final pulumi.Input<EnterpriseCrmEventbusProtoCloudSchedulerConfig>?
  cloudSchedulerConfig;

  /// User-provided description intended to give more business context about the task.
  final pulumi.Input<String>? description;

  /// The list of client ids which are enabled to execute the workflow using this trigger. In other words, these clients have the workflow execution privledges for this trigger. For API trigger, the client id in the incoming request is validated against the list of enabled clients. For non-API triggers, one workflow execution is triggered on behalf of each enabled client.
  final pulumi.Input<List<String>> enabledClients;

  /// Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final pulumi.Input<String>? errorCatcherId;

  /// The user created label for a particular trigger.
  final pulumi.Input<String>? label;

  /// Dictates how next tasks will be executed.
  final pulumi.Input<
    EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy
  >?
  nextTasksExecutionPolicy;

  /// Optional. If set to true, any upcoming requests for this trigger config will be paused and the executions will be resumed later when the flag is reset. The workflow to which this trigger config belongs has to be in ACTIVE status for the executions to be paused or resumed.
  final pulumi.Input<bool>? pauseWorkflowExecutions;

  /// Optional. Informs the front-end application where to draw this trigger config on the UI.
  final pulumi.Input<EnterpriseCrmEventbusProtoCoordinate>? position;

  /// Configurable properties of the trigger, not to be confused with workflow parameters. E.g. "name" is a property for API triggers and "subscription" is a property for Cloud Pubsub triggers.
  final pulumi.Input<Map<String, String>>? properties;

  /// Set of tasks numbers from where the workflow execution is started by this trigger. If this is empty, then workflow is executed with default start tasks. In the list of start tasks, none of two tasks can have direct ancestor-descendant relationships (i.e. in a same workflow execution graph).
  final pulumi.Input<List<EnterpriseCrmEventbusProtoNextTask>>? startTasks;

  /// Optional. When set, Eventbus will run the task specified in the trigger_criteria and validate the result using the trigger_criteria.condition, and only execute the workflow when result is true.
  final pulumi.Input<EnterpriseCrmEventbusProtoTriggerCriteria>?
  triggerCriteria;

  /// The backend trigger ID.
  final pulumi.Input<String>? triggerId;

  /// Optional. Name of the trigger This is added to identify the type of trigger. This is avoid the logic on triggerId to identify the trigger_type and push the same to monitoring.
  final pulumi.Input<String>? triggerName;

  /// A number to uniquely identify each trigger config within the workflow on UI.
  final pulumi.Input<String> triggerNumber;
  final pulumi.Input<
    EnterpriseCrmFrontendsEventbusProtoTriggerConfigTriggerType
  >?
  triggerType;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoTriggerConfig].
  /// [alertConfig] An alert threshold configuration for the [trigger + client + workflow] tuple. If these values are not specified in the trigger config, default values will be populated by the system. Note that there must be exactly one alert threshold configured per [client + trigger + workflow] when published.
  /// [cloudSchedulerConfig] Optional.
  /// [description] User-provided description intended to give more business context about the task.
  /// [enabledClients] The list of client ids which are enabled to execute the workflow using this trigger. In other words, these clients have the workflow execution privledges for this trigger. For API trigger, the client id in the incoming request is validated against the list of enabled clients. For non-API triggers, one workflow execution is triggered on behalf of each enabled client.
  /// [errorCatcherId] Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  /// [label] The user created label for a particular trigger.
  /// [nextTasksExecutionPolicy] Dictates how next tasks will be executed.
  /// [pauseWorkflowExecutions] Optional. If set to true, any upcoming requests for this trigger config will be paused and the executions will be resumed later when the flag is reset. The workflow to which this trigger config belongs has to be in ACTIVE status for the executions to be paused or resumed.
  /// [position] Optional. Informs the front-end application where to draw this trigger config on the UI.
  /// [properties] Configurable properties of the trigger, not to be confused with workflow parameters. E.g. "name" is a property for API triggers and "subscription" is a property for Cloud Pubsub triggers.
  /// [startTasks] Set of tasks numbers from where the workflow execution is started by this trigger. If this is empty, then workflow is executed with default start tasks. In the list of start tasks, none of two tasks can have direct ancestor-descendant relationships (i.e. in a same workflow execution graph).
  /// [triggerCriteria] Optional. When set, Eventbus will run the task specified in the trigger_criteria and validate the result using the trigger_criteria.condition, and only execute the workflow when result is true.
  /// [triggerId] The backend trigger ID.
  /// [triggerName] Optional. Name of the trigger This is added to identify the type of trigger. This is avoid the logic on triggerId to identify the trigger_type and push the same to monitoring.
  /// [triggerNumber] A number to uniquely identify each trigger config within the workflow on UI.
  /// [triggerType] Optional.
  EnterpriseCrmFrontendsEventbusProtoTriggerConfig({
    this.alertConfig,
    this.cloudSchedulerConfig,
    this.description,
    required this.enabledClients,
    this.errorCatcherId,
    this.label,
    this.nextTasksExecutionPolicy,
    this.pauseWorkflowExecutions,
    this.position,
    this.properties,
    this.startTasks,
    this.triggerCriteria,
    this.triggerId,
    this.triggerName,
    required this.triggerNumber,
    this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfig':
          ?pulumi.Input.mapOptionalInputValue<
            List<EnterpriseCrmEventbusProtoWorkflowAlertConfig>,
            List<Map<String, dynamic>>
          >(
            alertConfig,
            (value) =>
                pulumi.Input.encodeList<
                  EnterpriseCrmEventbusProtoWorkflowAlertConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cloudSchedulerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoCloudSchedulerConfig,
            Map<String, dynamic>
          >(cloudSchedulerConfig, (value) => value.toMap()),
      'description': ?description,
      'enabledClients': enabledClients,
      'errorCatcherId': ?errorCatcherId,
      'label': ?label,
      'nextTasksExecutionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy,
            String
          >(nextTasksExecutionPolicy, (value) => value.wireValue),
      'pauseWorkflowExecutions': ?pauseWorkflowExecutions,
      'position':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoCoordinate,
            Map<String, dynamic>
          >(position, (value) => value.toMap()),
      'properties': ?properties,
      'startTasks':
          ?pulumi.Input.mapOptionalInputValue<
            List<EnterpriseCrmEventbusProtoNextTask>,
            List<Map<String, dynamic>>
          >(
            startTasks,
            (value) =>
                pulumi.Input.encodeList<
                  EnterpriseCrmEventbusProtoNextTask,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'triggerCriteria':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoTriggerCriteria,
            Map<String, dynamic>
          >(triggerCriteria, (value) => value.toMap()),
      'triggerId': ?triggerId,
      'triggerName': ?triggerName,
      'triggerNumber': triggerNumber,
      'triggerType':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmFrontendsEventbusProtoTriggerConfigTriggerType,
            String
          >(triggerType, (value) => value.wireValue),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoTriggerConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoTriggerConfig(
      alertConfig: (() {
        final guardedValue = map['alertConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<EnterpriseCrmEventbusProtoWorkflowAlertConfig>(
            guardedValue,
            (value) => EnterpriseCrmEventbusProtoWorkflowAlertConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      cloudSchedulerConfig: (() {
        final guardedValue = map['cloudSchedulerConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoCloudSchedulerConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabledClients: pulumi.Input.fromValue(
        (map['enabledClients'] as List).cast<String>(),
      ),
      errorCatcherId: (() {
        final guardedValue = map['errorCatcherId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nextTasksExecutionPolicy: (() {
        final guardedValue = map['nextTasksExecutionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      pauseWorkflowExecutions: (() {
        final guardedValue = map['pauseWorkflowExecutions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      position: (() {
        final guardedValue = map['position'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoCoordinate.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      startTasks: (() {
        final guardedValue = map['startTasks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EnterpriseCrmEventbusProtoNextTask>(
            guardedValue,
            (value) => EnterpriseCrmEventbusProtoNextTask.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      triggerCriteria: (() {
        final guardedValue = map['triggerCriteria'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoTriggerCriteria.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      triggerId: (() {
        final guardedValue = map['triggerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      triggerName: (() {
        final guardedValue = map['triggerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      triggerNumber: pulumi.Input.fromValue(map['triggerNumber'] as String),
      triggerType: (() {
        final guardedValue = map['triggerType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmFrontendsEventbusProtoTriggerConfigTriggerType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
