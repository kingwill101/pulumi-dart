// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAgentRemoteDialogflowAgent {
  /// (Output)
  /// The name of the agent to transfer the conversation to. The agent must be
  /// in the same app as the current agent.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<String>? agent;
  /// (Output)
  /// The environment ID of the Dialogflow agent be used for the agent
  /// execution. If not specified, the draft environment will be used.
  final pulumi.Input<String>? environmentId;
  /// (Output)
  /// The flow ID of the flow in the Dialogflow agent.
  final pulumi.Input<String>? flowId;
  /// (Output)
  /// The mapping of the app variables names to the Dialogflow session
  /// parameters names to be sent to the Dialogflow agent as input.
  final pulumi.Input<Map<String, String>>? inputVariableMapping;
  /// (Output)
  /// The mapping of the Dialogflow session parameters names to the app
  /// variables names to be sent back to the CES agent after the Dialogflow
  /// agent execution ends.
  final pulumi.Input<Map<String, String>>? outputVariableMapping;

  /// Creates a new [AppVersionSnapshotAgentRemoteDialogflowAgent].
  /// [agent] (Output)
  /// [environmentId] (Output)
  /// [flowId] (Output)
  /// [inputVariableMapping] (Output)
  /// [outputVariableMapping] (Output)
  const AppVersionSnapshotAgentRemoteDialogflowAgent({
    this.agent,
    this.environmentId,
    this.flowId,
    this.inputVariableMapping,
    this.outputVariableMapping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': ?agent,
      'environmentId': ?environmentId,
      'flowId': ?flowId,
      'inputVariableMapping': ?inputVariableMapping,
      'outputVariableMapping': ?outputVariableMapping,
    };
  }

  factory AppVersionSnapshotAgentRemoteDialogflowAgent.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAgentRemoteDialogflowAgent(
      agent: (() { final guardedValue = map['agent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowId: (() { final guardedValue = map['flowId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputVariableMapping: (() { final guardedValue = map['inputVariableMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      outputVariableMapping: (() { final guardedValue = map['outputVariableMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
