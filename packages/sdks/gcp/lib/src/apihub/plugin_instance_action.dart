// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_instance_action_curation_config.dart';
import 'plugin_instance_action_hub_instance_action.dart';

class PluginInstanceAction {
  /// This should map to one of the action id specified
  /// in actions_config in the plugin.
  final pulumi.Input<String> actionId;
  /// The curation information for this plugin instance.
  /// Structure is documented below.
  final pulumi.Input<PluginInstanceActionCurationConfig>? curationConfig;
  /// (Output)
  /// The execution status for the plugin instance.
  /// Structure is documented below.
  final pulumi.Input<List<PluginInstanceActionHubInstanceAction>>? hubInstanceActions;
  /// The schedule for this plugin instance action. This can only be set if the
  /// plugin supports API_HUB_SCHEDULE_TRIGGER mode for this action.
  final pulumi.Input<String>? scheduleCronExpression;
  /// The time zone for the schedule cron expression. If not provided, UTC will
  /// be used.
  ///
  ///
  /// &lt;a name="nested_actions_hub_instance_action"&gt;&lt;/a&gt;The `hub_instance_action` block contains:
  final pulumi.Input<String>? scheduleTimeZone;
  /// (Output)
  /// The current state of the plugin action in the plugin instance.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ENABLED
  /// DISABLED
  /// ENABLING
  /// DISABLING
  /// ERROR
  final pulumi.Input<String>? state;

  /// Creates a new [PluginInstanceAction].
  /// [actionId] This should map to one of the action id specified
  /// [curationConfig] The curation information for this plugin instance.
  /// [hubInstanceActions] (Output)
  /// [scheduleCronExpression] The schedule for this plugin instance action. This can only be set if the
  /// [scheduleTimeZone] The time zone for the schedule cron expression. If not provided, UTC will
  /// [state] (Output)
  PluginInstanceAction({
    required this.actionId,
    this.curationConfig,
    this.hubInstanceActions,
    this.scheduleCronExpression,
    this.scheduleTimeZone,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionId': actionId,
      'curationConfig': ?pulumi.Input.mapOptionalInputValue<PluginInstanceActionCurationConfig, Map<String, dynamic>>(curationConfig, (value) => value.toMap()),
      'hubInstanceActions': ?pulumi.Input.mapOptionalInputValue<List<PluginInstanceActionHubInstanceAction>, List<Map<String, dynamic>>>(hubInstanceActions, (value) => pulumi.Input.encodeList<PluginInstanceActionHubInstanceAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scheduleCronExpression': ?scheduleCronExpression,
      'scheduleTimeZone': ?scheduleTimeZone,
      'state': ?state,
    };
  }

  factory PluginInstanceAction.fromMap(Map<String, dynamic> map) {
    return PluginInstanceAction(
      actionId: pulumi.Input.fromValue(map['actionId'] as String),
      curationConfig: (() { final guardedValue = map['curationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginInstanceActionCurationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hubInstanceActions: (() { final guardedValue = map['hubInstanceActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PluginInstanceActionHubInstanceAction>(guardedValue, (value) => PluginInstanceActionHubInstanceAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scheduleCronExpression: (() { final guardedValue = map['scheduleCronExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleTimeZone: (() { final guardedValue = map['scheduleTimeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

