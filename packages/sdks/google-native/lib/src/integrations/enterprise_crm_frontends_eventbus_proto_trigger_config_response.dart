// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_cloud_scheduler_config_response.dart';
import 'enterprise_crm_eventbus_proto_coordinate_response.dart';
import 'enterprise_crm_eventbus_proto_next_task_response.dart';
import 'enterprise_crm_eventbus_proto_trigger_criteria_response.dart';
import 'enterprise_crm_eventbus_proto_workflow_alert_config_response.dart';

/// Configuration detail of a trigger. Next available id: 20
class EnterpriseCrmFrontendsEventbusProtoTriggerConfigResponse {
  /// An alert threshold configuration for the [trigger + client + workflow] tuple. If these values are not specified in the trigger config, default values will be populated by the system. Note that there must be exactly one alert threshold configured per [client + trigger + workflow] when published.
  final pulumi.Input<List<EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse>> alertConfig;
  final pulumi.Input<EnterpriseCrmEventbusProtoCloudSchedulerConfigResponse> cloudSchedulerConfig;
  /// User-provided description intended to give more business context about the task.
  final pulumi.Input<String> description;
  /// The list of client ids which are enabled to execute the workflow using this trigger. In other words, these clients have the workflow execution privledges for this trigger. For API trigger, the client id in the incoming request is validated against the list of enabled clients. For non-API triggers, one workflow execution is triggered on behalf of each enabled client.
  final pulumi.Input<List<String>> enabledClients;
  /// Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final pulumi.Input<String> errorCatcherId;
  /// The user created label for a particular trigger.
  final pulumi.Input<String> label;
  /// Dictates how next tasks will be executed.
  final pulumi.Input<String> nextTasksExecutionPolicy;
  /// Optional. If set to true, any upcoming requests for this trigger config will be paused and the executions will be resumed later when the flag is reset. The workflow to which this trigger config belongs has to be in ACTIVE status for the executions to be paused or resumed.
  final pulumi.Input<bool> pauseWorkflowExecutions;
  /// Optional. Informs the front-end application where to draw this trigger config on the UI.
  final pulumi.Input<EnterpriseCrmEventbusProtoCoordinateResponse> position;
  /// Configurable properties of the trigger, not to be confused with workflow parameters. E.g. "name" is a property for API triggers and "subscription" is a property for Cloud Pubsub triggers.
  final pulumi.Input<Map<String, String>> properties;
  /// Set of tasks numbers from where the workflow execution is started by this trigger. If this is empty, then workflow is executed with default start tasks. In the list of start tasks, none of two tasks can have direct ancestor-descendant relationships (i.e. in a same workflow execution graph).
  final pulumi.Input<List<EnterpriseCrmEventbusProtoNextTaskResponse>> startTasks;
  /// Optional. When set, Eventbus will run the task specified in the trigger_criteria and validate the result using the trigger_criteria.condition, and only execute the workflow when result is true.
  final pulumi.Input<EnterpriseCrmEventbusProtoTriggerCriteriaResponse> triggerCriteria;
  /// The backend trigger ID.
  final pulumi.Input<String> triggerId;
  /// Optional. Name of the trigger This is added to identify the type of trigger. This is avoid the logic on triggerId to identify the trigger_type and push the same to monitoring.
  final pulumi.Input<String> triggerName;
  /// A number to uniquely identify each trigger config within the workflow on UI.
  final pulumi.Input<String> triggerNumber;
  final pulumi.Input<String> triggerType;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoTriggerConfigResponse].
  /// [alertConfig] An alert threshold configuration for the [trigger + client + workflow] tuple. If these values are not specified in the trigger config, default values will be populated by the system. Note that there must be exactly one alert threshold configured per [client + trigger + workflow] when published.
  /// [cloudSchedulerConfig] Required.
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
  /// [triggerType] Required.
  const EnterpriseCrmFrontendsEventbusProtoTriggerConfigResponse({
    required this.alertConfig,
    required this.cloudSchedulerConfig,
    required this.description,
    required this.enabledClients,
    required this.errorCatcherId,
    required this.label,
    required this.nextTasksExecutionPolicy,
    required this.pauseWorkflowExecutions,
    required this.position,
    required this.properties,
    required this.startTasks,
    required this.triggerCriteria,
    required this.triggerId,
    required this.triggerName,
    required this.triggerNumber,
    required this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfig': pulumi.Input.mapInputValue<List<EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse>, List<Map<String, dynamic>>>(alertConfig, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudSchedulerConfig': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoCloudSchedulerConfigResponse, Map<String, dynamic>>(cloudSchedulerConfig, (value) => value.toMap()),
      'description': description,
      'enabledClients': enabledClients,
      'errorCatcherId': errorCatcherId,
      'label': label,
      'nextTasksExecutionPolicy': nextTasksExecutionPolicy,
      'pauseWorkflowExecutions': pauseWorkflowExecutions,
      'position': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoCoordinateResponse, Map<String, dynamic>>(position, (value) => value.toMap()),
      'properties': properties,
      'startTasks': pulumi.Input.mapInputValue<List<EnterpriseCrmEventbusProtoNextTaskResponse>, List<Map<String, dynamic>>>(startTasks, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoNextTaskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggerCriteria': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoTriggerCriteriaResponse, Map<String, dynamic>>(triggerCriteria, (value) => value.toMap()),
      'triggerId': triggerId,
      'triggerName': triggerName,
      'triggerNumber': triggerNumber,
      'triggerType': triggerType,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoTriggerConfigResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoTriggerConfigResponse(
      alertConfig: pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse>(map['alertConfig']!, (value) => EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
      cloudSchedulerConfig: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoCloudSchedulerConfigResponse.fromMap((map['cloudSchedulerConfig']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabledClients: pulumi.Input.fromValue((map['enabledClients'] as List).cast<String>()),
      errorCatcherId: pulumi.Input.fromValue(map['errorCatcherId'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      nextTasksExecutionPolicy: pulumi.Input.fromValue(map['nextTasksExecutionPolicy'] as String),
      pauseWorkflowExecutions: pulumi.Input.fromValue(map['pauseWorkflowExecutions'] as bool),
      position: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoCoordinateResponse.fromMap((map['position']! as Map).cast<String, dynamic>())),
      properties: pulumi.Input.fromValue((map['properties'] as Map).cast<String, String>()),
      startTasks: pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmEventbusProtoNextTaskResponse>(map['startTasks']!, (value) => EnterpriseCrmEventbusProtoNextTaskResponse.fromMap((value as Map).cast<String, dynamic>()))),
      triggerCriteria: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoTriggerCriteriaResponse.fromMap((map['triggerCriteria']! as Map).cast<String, dynamic>())),
      triggerId: pulumi.Input.fromValue(map['triggerId'] as String),
      triggerName: pulumi.Input.fromValue(map['triggerName'] as String),
      triggerNumber: pulumi.Input.fromValue(map['triggerNumber'] as String),
      triggerType: pulumi.Input.fromValue(map['triggerType'] as String),
    );
  }
}

