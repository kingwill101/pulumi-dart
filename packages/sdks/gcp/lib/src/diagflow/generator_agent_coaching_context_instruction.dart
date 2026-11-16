// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratorAgentCoachingContextInstruction {
  /// Optional. The action that human agent should take.
  final pulumi.Input<String?>? agentAction;
  /// Optional. The condition of the instruction.
  final pulumi.Input<String?>? condition;
  /// Optional. The detailed description of this instruction.
  final pulumi.Input<String?>? displayDetails;
  /// Optional. Display name for the instruction.
  final pulumi.Input<String?>? displayName;
  /// Optional. The action that system should take.
  final pulumi.Input<String?>? systemAction;
  /// Optional. The trigger event of the instruction.
  /// Possible values are: `END_OF_UTTERANCE`, `MANUAL_CALL`, `CUSTOMER_MESSAGE`, `AGENT_MESSAGE`, `TOOL_CALL_COMPLETION`.
  final pulumi.Input<String?>? triggeringEvent;

  /// Creates a new [GeneratorAgentCoachingContextInstruction].
  /// [agentAction] Optional. The action that human agent should take.
  /// [condition] Optional. The condition of the instruction.
  /// [displayDetails] Optional. The detailed description of this instruction.
  /// [displayName] Optional. Display name for the instruction.
  /// [systemAction] Optional. The action that system should take.
  /// [triggeringEvent] Optional. The trigger event of the instruction.
  const GeneratorAgentCoachingContextInstruction({
    this.agentAction,
    this.condition,
    this.displayDetails,
    this.displayName,
    this.systemAction,
    this.triggeringEvent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAction': ?agentAction,
      'condition': ?condition,
      'displayDetails': ?displayDetails,
      'displayName': ?displayName,
      'systemAction': ?systemAction,
      'triggeringEvent': ?triggeringEvent,
    };
  }

  factory GeneratorAgentCoachingContextInstruction.fromMap(Map<String, dynamic> map) {
    return GeneratorAgentCoachingContextInstruction(
      agentAction: (() { final guardedValue = map['agentAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayDetails: (() { final guardedValue = map['displayDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemAction: (() { final guardedValue = map['systemAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggeringEvent: (() { final guardedValue = map['triggeringEvent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
