// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBotManagementAiAgents {
  /// Action to apply to one supported personal AI agent.
  /// Available values: "disabled", "block", "only*on*ad_pages".
  final pulumi.Input<String> anthropicAgent;
  /// Action to apply to one supported personal AI agent.
  /// Available values: "disabled", "block", "only*on*ad_pages".
  final pulumi.Input<String> googleAgent;
  /// Action to apply to one supported personal AI agent.
  /// Available values: "disabled", "block", "only*on*ad_pages".
  final pulumi.Input<String> instinct;
  /// Action to apply to one supported personal AI agent.
  /// Available values: "disabled", "block", "only*on*ad_pages".
  final pulumi.Input<String> muse;
  /// Action to apply to one supported personal AI agent.
  /// Available values: "disabled", "block", "only*on*ad_pages".
  final pulumi.Input<String> openaiAgent;

  /// Creates a new [GetBotManagementAiAgents].
  /// [anthropicAgent] Action to apply to one supported personal AI agent.
  /// [googleAgent] Action to apply to one supported personal AI agent.
  /// [instinct] Action to apply to one supported personal AI agent.
  /// [muse] Action to apply to one supported personal AI agent.
  /// [openaiAgent] Action to apply to one supported personal AI agent.
  const GetBotManagementAiAgents({
    required this.anthropicAgent,
    required this.googleAgent,
    required this.instinct,
    required this.muse,
    required this.openaiAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anthropicAgent': anthropicAgent,
      'googleAgent': googleAgent,
      'instinct': instinct,
      'muse': muse,
      'openaiAgent': openaiAgent,
    };
  }

  factory GetBotManagementAiAgents.fromMap(Map<String, dynamic> map) {
    return GetBotManagementAiAgents(
      anthropicAgent: pulumi.Input.fromValue(map['anthropicAgent'] as String),
      googleAgent: pulumi.Input.fromValue(map['googleAgent'] as String),
      instinct: pulumi.Input.fromValue(map['instinct'] as String),
      muse: pulumi.Input.fromValue(map['muse'] as String),
      openaiAgent: pulumi.Input.fromValue(map['openaiAgent'] as String),
    );
  }
}
