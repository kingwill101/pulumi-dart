// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentRemoteDialogflowAgent {
  /// The
  /// [Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-conversational-agents
  /// agent resource name.
  /// Format: `projects/{project}/locations/{location}/agents/{agent}`
  final pulumi.Input<String> agent;
  /// The environment ID of the Dialogflow agent be used for the agent
  /// execution. If not specified, the draft environment will be used.
  final pulumi.Input<String>? environmentId;
  /// The flow ID of the flow in the Dialogflow agent.
  final pulumi.Input<String> flowId;
  /// The mapping of the app variables names to the Dialogflow session
  /// parameters names to be sent to the Dialogflow agent as input.
  final pulumi.Input<Map<String, String>>? inputVariableMapping;
  /// The mapping of the Dialogflow session parameters names to the app
  /// variables names to be sent back to the CES agent after the Dialogflow
  /// agent execution ends.
  final pulumi.Input<Map<String, String>>? outputVariableMapping;
  /// Indicates whether to respect the message-level interruption settings configured in the Dialogflow agent. * If false: all response messages from the Dialogflow agent follow the app-level barge-in settings. * If true: only response messages with [`allowPlaybackInterruption`](https://docs.cloud.google.com/dialogflow/cx/docs/reference/rpc/google.cloud.dialogflow.cx.v3#text) set to true will be interruptable, all other messages follow the app-level barge-in settings.
  final pulumi.Input<bool>? respectResponseInterruptionSettings;

  /// Creates a new [AgentRemoteDialogflowAgent].
  /// [agent] The
  /// [environmentId] The environment ID of the Dialogflow agent be used for the agent
  /// [flowId] The flow ID of the flow in the Dialogflow agent.
  /// [inputVariableMapping] The mapping of the app variables names to the Dialogflow session
  /// [outputVariableMapping] The mapping of the Dialogflow session parameters names to the app
  /// [respectResponseInterruptionSettings] Indicates whether to respect the message-level interruption settings configured in the Dialogflow agent. * If false: all response messages from the Dialogflow agent follow the app-level barge-in settings. * If true: only response messages with [`allowPlaybackInterruption`](https://docs.cloud.google.com/dialogflow/cx/docs/reference/rpc/google.cloud.dialogflow.cx.v3#text) set to true will be interruptable, all other messages follow the app-level barge-in settings.
  const AgentRemoteDialogflowAgent({
    required this.agent,
    this.environmentId,
    required this.flowId,
    this.inputVariableMapping,
    this.outputVariableMapping,
    this.respectResponseInterruptionSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': agent,
      'environmentId': ?environmentId,
      'flowId': flowId,
      'inputVariableMapping': ?inputVariableMapping,
      'outputVariableMapping': ?outputVariableMapping,
      'respectResponseInterruptionSettings': ?respectResponseInterruptionSettings,
    };
  }

  factory AgentRemoteDialogflowAgent.fromMap(Map<String, dynamic> map) {
    return AgentRemoteDialogflowAgent(
      agent: pulumi.Input.fromValue(map['agent'] as String),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowId: pulumi.Input.fromValue(map['flowId'] as String),
      inputVariableMapping: (() { final guardedValue = map['inputVariableMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      outputVariableMapping: (() { final guardedValue = map['outputVariableMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      respectResponseInterruptionSettings: (() { final guardedValue = map['respectResponseInterruptionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
