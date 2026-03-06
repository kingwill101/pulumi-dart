// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_instance_action_hub_instance_action_last_execution.dart';

class PluginInstanceActionHubInstanceAction {
  /// The current state of the execution.
  /// Possible values:
  /// CURRENT_EXECUTION_STATE_UNSPECIFIED
  /// RUNNING
  /// NOT_RUNNING
  final pulumi.Input<String>? currentExecutionState;
  /// The result of the last execution of the plugin instance.
  final pulumi.Input<List<PluginInstanceActionHubInstanceActionLastExecution>>? lastExecutions;

  /// Creates a new [PluginInstanceActionHubInstanceAction].
  /// [currentExecutionState] The current state of the execution.
  /// [lastExecutions] The result of the last execution of the plugin instance.
  const PluginInstanceActionHubInstanceAction({
    this.currentExecutionState,
    this.lastExecutions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentExecutionState': ?currentExecutionState,
      'lastExecutions': ?pulumi.Input.mapOptionalInputValue<List<PluginInstanceActionHubInstanceActionLastExecution>, List<Map<String, dynamic>>>(lastExecutions, (value) => pulumi.Input.encodeList<PluginInstanceActionHubInstanceActionLastExecution, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PluginInstanceActionHubInstanceAction.fromMap(Map<String, dynamic> map) {
    return PluginInstanceActionHubInstanceAction(
      currentExecutionState: (() { final guardedValue = map['currentExecutionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastExecutions: (() { final guardedValue = map['lastExecutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PluginInstanceActionHubInstanceActionLastExecution>(guardedValue, (value) => PluginInstanceActionHubInstanceActionLastExecution.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

