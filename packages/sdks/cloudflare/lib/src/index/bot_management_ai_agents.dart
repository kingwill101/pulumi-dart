// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BotManagementAiAgents {
  /// Action to apply to one supported personal AI agent.
  /// Available values: "disabled", "block", "only*on*ad_pages".
  final pulumi.Input<String?>? anthropicAgent;
  /// Action to apply to one supported personal AI agent.
  /// Available values: "disabled", "block", "only*on*ad_pages".
  final pulumi.Input<String?>? googleAgent;
  /// Action to apply to one supported personal AI agent.
  /// Available values: "disabled", "block", "only*on*ad_pages".
  final pulumi.Input<String?>? instinct;
  /// Action to apply to one supported personal AI agent.
  /// Available values: "disabled", "block", "only*on*ad_pages".
  final pulumi.Input<String?>? muse;
  /// Action to apply to one supported personal AI agent.
  /// Available values: "disabled", "block", "only*on*ad_pages".
  final pulumi.Input<String?>? openaiAgent;

  /// Creates a new [BotManagementAiAgents].
  /// [anthropicAgent] Action to apply to one supported personal AI agent.
  /// [googleAgent] Action to apply to one supported personal AI agent.
  /// [instinct] Action to apply to one supported personal AI agent.
  /// [muse] Action to apply to one supported personal AI agent.
  /// [openaiAgent] Action to apply to one supported personal AI agent.
  const BotManagementAiAgents({
    this.anthropicAgent,
    this.googleAgent,
    this.instinct,
    this.muse,
    this.openaiAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anthropicAgent': ?anthropicAgent,
      'googleAgent': ?googleAgent,
      'instinct': ?instinct,
      'muse': ?muse,
      'openaiAgent': ?openaiAgent,
    };
  }

  factory BotManagementAiAgents.fromMap(Map<String, dynamic> map) {
    return BotManagementAiAgents(
      anthropicAgent: (() { final guardedValue = map['anthropicAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      googleAgent: (() { final guardedValue = map['googleAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instinct: (() { final guardedValue = map['instinct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      muse: (() { final guardedValue = map['muse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openaiAgent: (() { final guardedValue = map['openaiAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
