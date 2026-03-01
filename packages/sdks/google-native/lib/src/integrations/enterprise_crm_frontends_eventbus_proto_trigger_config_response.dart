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
  final List<EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse> alertConfig;
  final EnterpriseCrmEventbusProtoCloudSchedulerConfigResponse cloudSchedulerConfig;
  /// User-provided description intended to give more business context about the task.
  final String description;
  /// The list of client ids which are enabled to execute the workflow using this trigger. In other words, these clients have the workflow execution privledges for this trigger. For API trigger, the client id in the incoming request is validated against the list of enabled clients. For non-API triggers, one workflow execution is triggered on behalf of each enabled client.
  final List<String> enabledClients;
  /// Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final String errorCatcherId;
  /// The user created label for a particular trigger.
  final String label;
  /// Dictates how next tasks will be executed.
  final String nextTasksExecutionPolicy;
  /// Optional. If set to true, any upcoming requests for this trigger config will be paused and the executions will be resumed later when the flag is reset. The workflow to which this trigger config belongs has to be in ACTIVE status for the executions to be paused or resumed.
  final bool pauseWorkflowExecutions;
  /// Optional. Informs the front-end application where to draw this trigger config on the UI.
  final EnterpriseCrmEventbusProtoCoordinateResponse position;
  /// Configurable properties of the trigger, not to be confused with workflow parameters. E.g. "name" is a property for API triggers and "subscription" is a property for Cloud Pubsub triggers.
  final Map<String, String> properties;
  /// Set of tasks numbers from where the workflow execution is started by this trigger. If this is empty, then workflow is executed with default start tasks. In the list of start tasks, none of two tasks can have direct ancestor-descendant relationships (i.e. in a same workflow execution graph).
  final List<EnterpriseCrmEventbusProtoNextTaskResponse> startTasks;
  /// Optional. When set, Eventbus will run the task specified in the trigger_criteria and validate the result using the trigger_criteria.condition, and only execute the workflow when result is true.
  final EnterpriseCrmEventbusProtoTriggerCriteriaResponse triggerCriteria;
  /// The backend trigger ID.
  final String triggerId;
  /// Optional. Name of the trigger This is added to identify the type of trigger. This is avoid the logic on triggerId to identify the trigger_type and push the same to monitoring.
  final String triggerName;
  /// A number to uniquely identify each trigger config within the workflow on UI.
  final String triggerNumber;
  final String triggerType;

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
  EnterpriseCrmFrontendsEventbusProtoTriggerConfigResponse({
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
      'alertConfig': pulumi.Input.encodeList<EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse, Map<String, dynamic>>(alertConfig, (value) => value.toMap()),
      'cloudSchedulerConfig': cloudSchedulerConfig.toMap(),
      'description': description,
      'enabledClients': enabledClients,
      'errorCatcherId': errorCatcherId,
      'label': label,
      'nextTasksExecutionPolicy': nextTasksExecutionPolicy,
      'pauseWorkflowExecutions': pauseWorkflowExecutions,
      'position': position.toMap(),
      'properties': properties,
      'startTasks': pulumi.Input.encodeList<EnterpriseCrmEventbusProtoNextTaskResponse, Map<String, dynamic>>(startTasks, (value) => value.toMap()),
      'triggerCriteria': triggerCriteria.toMap(),
      'triggerId': triggerId,
      'triggerName': triggerName,
      'triggerNumber': triggerNumber,
      'triggerType': triggerType,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoTriggerConfigResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoTriggerConfigResponse(
      alertConfig: pulumi.Input.decodeList<EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse>(map['alertConfig'], (value) => EnterpriseCrmEventbusProtoWorkflowAlertConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      cloudSchedulerConfig: EnterpriseCrmEventbusProtoCloudSchedulerConfigResponse.fromMap((map['cloudSchedulerConfig'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      enabledClients: (map['enabledClients'] as List).cast<String>(),
      errorCatcherId: map['errorCatcherId'] as String,
      label: map['label'] as String,
      nextTasksExecutionPolicy: map['nextTasksExecutionPolicy'] as String,
      pauseWorkflowExecutions: map['pauseWorkflowExecutions'] as bool,
      position: EnterpriseCrmEventbusProtoCoordinateResponse.fromMap((map['position'] as Map).cast<String, dynamic>()),
      properties: (map['properties'] as Map).cast<String, String>(),
      startTasks: pulumi.Input.decodeList<EnterpriseCrmEventbusProtoNextTaskResponse>(map['startTasks'], (value) => EnterpriseCrmEventbusProtoNextTaskResponse.fromMap((value as Map).cast<String, dynamic>())),
      triggerCriteria: EnterpriseCrmEventbusProtoTriggerCriteriaResponse.fromMap((map['triggerCriteria'] as Map).cast<String, dynamic>()),
      triggerId: map['triggerId'] as String,
      triggerName: map['triggerName'] as String,
      triggerNumber: map['triggerNumber'] as String,
      triggerType: map['triggerType'] as String,
    );
  }
}

