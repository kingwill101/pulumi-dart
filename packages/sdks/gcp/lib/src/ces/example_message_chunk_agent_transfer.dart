// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExampleMessageChunkAgentTransfer {
  /// (Output)
  /// Display name of the agent.
  final pulumi.Input<String>? displayName;
  /// The agent to which the conversation is being transferred. The agent will
  /// handle the conversation from this point forward.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<String> targetAgent;

  /// Creates a new [ExampleMessageChunkAgentTransfer].
  /// [displayName] (Output)
  /// [targetAgent] The agent to which the conversation is being transferred. The agent will
  const ExampleMessageChunkAgentTransfer({
    this.displayName,
    required this.targetAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'targetAgent': targetAgent,
    };
  }

  factory ExampleMessageChunkAgentTransfer.fromMap(Map<String, dynamic> map) {
    return ExampleMessageChunkAgentTransfer(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAgent: pulumi.Input.fromValue(map['targetAgent'] as String),
    );
  }
}
