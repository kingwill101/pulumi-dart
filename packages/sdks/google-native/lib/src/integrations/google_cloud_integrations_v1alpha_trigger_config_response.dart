// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_cloud_scheduler_config_response.dart';
import 'google_cloud_integrations_v1alpha_coordinate_response.dart';
import 'google_cloud_integrations_v1alpha_integration_alert_config_response.dart';
import 'google_cloud_integrations_v1alpha_next_task_response.dart';

/// Configuration detail of a trigger.
class GoogleCloudIntegrationsV1alphaTriggerConfigResponse {
  /// Optional. An alert threshold configuration for the [trigger + client + integration] tuple. If these values are not specified in the trigger config, default values will be populated by the system. Note that there must be exactly one alert threshold configured per [client + trigger + integration] when published.
  final pulumi.Input<
    List<GoogleCloudIntegrationsV1alphaIntegrationAlertConfigResponse>
  >
  alertConfig;

  /// Optional. Cloud Scheduler Trigger related metadata
  final pulumi.Input<GoogleCloudIntegrationsV1alphaCloudSchedulerConfigResponse>
  cloudSchedulerConfig;

  /// Optional. User-provided description intended to give additional business context about the task.
  final pulumi.Input<String> description;

  /// Optional. Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final pulumi.Input<String> errorCatcherId;

  /// Optional. The user created label for a particular trigger.
  final pulumi.Input<String> label;

  /// Optional. Dictates how next tasks will be executed.
  final pulumi.Input<String> nextTasksExecutionPolicy;

  /// Optional. Informs the front-end application where to draw this error catcher config on the UI.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaCoordinateResponse> position;

  /// Optional. Configurable properties of the trigger, not to be confused with integration parameters. E.g. "name" is a property for API triggers and "subscription" is a property for Pub/sub triggers.
  final pulumi.Input<Map<String, String>> properties;

  /// Optional. Set of tasks numbers from where the integration execution is started by this trigger. If this is empty, then integration is executed with default start tasks. In the list of start tasks, none of two tasks can have direct ancestor-descendant relationships (i.e. in a same integration execution graph).
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaNextTaskResponse>>
  startTasks;

  /// Optional. Name of the trigger. Example: "API Trigger", "Cloud Pub Sub Trigger" When set will be sent out to monitoring dashabord for tracking purpose.
  final pulumi.Input<String> trigger;

  /// Optional. The backend trigger ID.
  final pulumi.Input<String> triggerId;

  /// A number to uniquely identify each trigger config within the integration on UI.
  final pulumi.Input<String> triggerNumber;

  /// Optional. Type of trigger
  final pulumi.Input<String> triggerType;

  /// Creates a new [GoogleCloudIntegrationsV1alphaTriggerConfigResponse].
  /// [alertConfig] Optional. An alert threshold configuration for the [trigger + client + integration] tuple. If these values are not specified in the trigger config, default values will be populated by the system. Note that there must be exactly one alert threshold configured per [client + trigger + integration] when published.
  /// [cloudSchedulerConfig] Optional. Cloud Scheduler Trigger related metadata
  /// [description] Optional. User-provided description intended to give additional business context about the task.
  /// [errorCatcherId] Optional. Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  /// [label] Optional. The user created label for a particular trigger.
  /// [nextTasksExecutionPolicy] Optional. Dictates how next tasks will be executed.
  /// [position] Optional. Informs the front-end application where to draw this error catcher config on the UI.
  /// [properties] Optional. Configurable properties of the trigger, not to be confused with integration parameters. E.g. "name" is a property for API triggers and "subscription" is a property for Pub/sub triggers.
  /// [startTasks] Optional. Set of tasks numbers from where the integration execution is started by this trigger. If this is empty, then integration is executed with default start tasks. In the list of start tasks, none of two tasks can have direct ancestor-descendant relationships (i.e. in a same integration execution graph).
  /// [trigger] Optional. Name of the trigger. Example: "API Trigger", "Cloud Pub Sub Trigger" When set will be sent out to monitoring dashabord for tracking purpose.
  /// [triggerId] Optional. The backend trigger ID.
  /// [triggerNumber] A number to uniquely identify each trigger config within the integration on UI.
  /// [triggerType] Optional. Type of trigger
  GoogleCloudIntegrationsV1alphaTriggerConfigResponse({
    required this.alertConfig,
    required this.cloudSchedulerConfig,
    required this.description,
    required this.errorCatcherId,
    required this.label,
    required this.nextTasksExecutionPolicy,
    required this.position,
    required this.properties,
    required this.startTasks,
    required this.trigger,
    required this.triggerId,
    required this.triggerNumber,
    required this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfig':
          pulumi.Input.mapInputValue<
            List<GoogleCloudIntegrationsV1alphaIntegrationAlertConfigResponse>,
            List<Map<String, dynamic>>
          >(
            alertConfig,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudIntegrationsV1alphaIntegrationAlertConfigResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cloudSchedulerConfig':
          pulumi.Input.mapInputValue<
            GoogleCloudIntegrationsV1alphaCloudSchedulerConfigResponse,
            Map<String, dynamic>
          >(cloudSchedulerConfig, (value) => value.toMap()),
      'description': description,
      'errorCatcherId': errorCatcherId,
      'label': label,
      'nextTasksExecutionPolicy': nextTasksExecutionPolicy,
      'position':
          pulumi.Input.mapInputValue<
            GoogleCloudIntegrationsV1alphaCoordinateResponse,
            Map<String, dynamic>
          >(position, (value) => value.toMap()),
      'properties': properties,
      'startTasks':
          pulumi.Input.mapInputValue<
            List<GoogleCloudIntegrationsV1alphaNextTaskResponse>,
            List<Map<String, dynamic>>
          >(
            startTasks,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudIntegrationsV1alphaNextTaskResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'trigger': trigger,
      'triggerId': triggerId,
      'triggerNumber': triggerNumber,
      'triggerType': triggerType,
    };
  }

  factory GoogleCloudIntegrationsV1alphaTriggerConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaTriggerConfigResponse(
      alertConfig: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudIntegrationsV1alphaIntegrationAlertConfigResponse
        >(
          map['alertConfig']!,
          (value) =>
              GoogleCloudIntegrationsV1alphaIntegrationAlertConfigResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      cloudSchedulerConfig: pulumi.Input.fromValue(
        GoogleCloudIntegrationsV1alphaCloudSchedulerConfigResponse.fromMap(
          (map['cloudSchedulerConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      errorCatcherId: pulumi.Input.fromValue(map['errorCatcherId'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      nextTasksExecutionPolicy: pulumi.Input.fromValue(
        map['nextTasksExecutionPolicy'] as String,
      ),
      position: pulumi.Input.fromValue(
        GoogleCloudIntegrationsV1alphaCoordinateResponse.fromMap(
          (map['position']! as Map).cast<String, dynamic>(),
        ),
      ),
      properties: pulumi.Input.fromValue(
        (map['properties'] as Map).cast<String, String>(),
      ),
      startTasks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaNextTaskResponse>(
          map['startTasks']!,
          (value) => GoogleCloudIntegrationsV1alphaNextTaskResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      trigger: pulumi.Input.fromValue(map['trigger'] as String),
      triggerId: pulumi.Input.fromValue(map['triggerId'] as String),
      triggerNumber: pulumi.Input.fromValue(map['triggerNumber'] as String),
      triggerType: pulumi.Input.fromValue(map['triggerType'] as String),
    );
  }
}
