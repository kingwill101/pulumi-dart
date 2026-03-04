// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_cloud_scheduler_config.dart';
import 'google_cloud_integrations_v1alpha_coordinate.dart';
import 'google_cloud_integrations_v1alpha_integration_alert_config.dart';
import 'google_cloud_integrations_v1alpha_next_task.dart';
import 'google_cloud_integrations_v1alpha_trigger_config_next_tasks_execution_policy.dart';
import 'google_cloud_integrations_v1alpha_trigger_config_trigger_type.dart';

/// Configuration detail of a trigger.
class GoogleCloudIntegrationsV1alphaTriggerConfig {
  /// Optional. An alert threshold configuration for the [trigger + client + integration] tuple. If these values are not specified in the trigger config, default values will be populated by the system. Note that there must be exactly one alert threshold configured per [client + trigger + integration] when published.
  final pulumi.Input<
    List<GoogleCloudIntegrationsV1alphaIntegrationAlertConfig>
  >?
  alertConfig;

  /// Optional. Cloud Scheduler Trigger related metadata
  final pulumi.Input<GoogleCloudIntegrationsV1alphaCloudSchedulerConfig>?
  cloudSchedulerConfig;

  /// Optional. User-provided description intended to give additional business context about the task.
  final pulumi.Input<String>? description;

  /// Optional. Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final pulumi.Input<String>? errorCatcherId;

  /// Optional. The user created label for a particular trigger.
  final pulumi.Input<String>? label;

  /// Optional. Dictates how next tasks will be executed.
  final pulumi.Input<
    GoogleCloudIntegrationsV1alphaTriggerConfigNextTasksExecutionPolicy
  >?
  nextTasksExecutionPolicy;

  /// Optional. Informs the front-end application where to draw this error catcher config on the UI.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaCoordinate>? position;

  /// Optional. Configurable properties of the trigger, not to be confused with integration parameters. E.g. "name" is a property for API triggers and "subscription" is a property for Pub/sub triggers.
  final pulumi.Input<Map<String, String>>? properties;

  /// Optional. Set of tasks numbers from where the integration execution is started by this trigger. If this is empty, then integration is executed with default start tasks. In the list of start tasks, none of two tasks can have direct ancestor-descendant relationships (i.e. in a same integration execution graph).
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaNextTask>>? startTasks;

  /// Optional. Name of the trigger. Example: "API Trigger", "Cloud Pub Sub Trigger" When set will be sent out to monitoring dashabord for tracking purpose.
  final pulumi.Input<String>? trigger;

  /// Optional. The backend trigger ID.
  final pulumi.Input<String>? triggerId;

  /// A number to uniquely identify each trigger config within the integration on UI.
  final pulumi.Input<String> triggerNumber;

  /// Optional. Type of trigger
  final pulumi.Input<GoogleCloudIntegrationsV1alphaTriggerConfigTriggerType>?
  triggerType;

  /// Creates a new [GoogleCloudIntegrationsV1alphaTriggerConfig].
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
  GoogleCloudIntegrationsV1alphaTriggerConfig({
    this.alertConfig,
    this.cloudSchedulerConfig,
    this.description,
    this.errorCatcherId,
    this.label,
    this.nextTasksExecutionPolicy,
    this.position,
    this.properties,
    this.startTasks,
    this.trigger,
    this.triggerId,
    required this.triggerNumber,
    this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfig':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudIntegrationsV1alphaIntegrationAlertConfig>,
            List<Map<String, dynamic>>
          >(
            alertConfig,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudIntegrationsV1alphaIntegrationAlertConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cloudSchedulerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaCloudSchedulerConfig,
            Map<String, dynamic>
          >(cloudSchedulerConfig, (value) => value.toMap()),
      'description': ?description,
      'errorCatcherId': ?errorCatcherId,
      'label': ?label,
      'nextTasksExecutionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaTriggerConfigNextTasksExecutionPolicy,
            String
          >(nextTasksExecutionPolicy, (value) => value.wireValue),
      'position':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaCoordinate,
            Map<String, dynamic>
          >(position, (value) => value.toMap()),
      'properties': ?properties,
      'startTasks':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudIntegrationsV1alphaNextTask>,
            List<Map<String, dynamic>>
          >(
            startTasks,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudIntegrationsV1alphaNextTask,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'trigger': ?trigger,
      'triggerId': ?triggerId,
      'triggerNumber': triggerNumber,
      'triggerType':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaTriggerConfigTriggerType,
            String
          >(triggerType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudIntegrationsV1alphaTriggerConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaTriggerConfig(
      alertConfig: (() {
        final guardedValue = map['alertConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            GoogleCloudIntegrationsV1alphaIntegrationAlertConfig
          >(
            guardedValue,
            (value) =>
                GoogleCloudIntegrationsV1alphaIntegrationAlertConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      cloudSchedulerConfig: (() {
        final guardedValue = map['cloudSchedulerConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIntegrationsV1alphaCloudSchedulerConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
          GoogleCloudIntegrationsV1alphaTriggerConfigNextTasksExecutionPolicy.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      position: (() {
        final guardedValue = map['position'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIntegrationsV1alphaCoordinate.fromMap(
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
          pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaNextTask>(
            guardedValue,
            (value) => GoogleCloudIntegrationsV1alphaNextTask.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      trigger: (() {
        final guardedValue = map['trigger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      triggerId: (() {
        final guardedValue = map['triggerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      triggerNumber: pulumi.Input.fromValue(map['triggerNumber'] as String),
      triggerType: (() {
        final guardedValue = map['triggerType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIntegrationsV1alphaTriggerConfigTriggerType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
