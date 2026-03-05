// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_action_generative_answer.dart';
import 'guardrail_action_respond_immediately.dart';
import 'guardrail_action_transfer_agent.dart';

class GuardrailAction {
  /// The agent will immediately respond with a generative answer.
  /// Structure is documented below.
  final pulumi.Input<GuardrailActionGenerativeAnswer>? generativeAnswer;
  /// The agent will immediately respond with a preconfigured response.
  /// Structure is documented below.
  final pulumi.Input<GuardrailActionRespondImmediately>? respondImmediately;
  /// The agent will transfer the conversation to a different agent.
  /// Structure is documented below.
  final pulumi.Input<GuardrailActionTransferAgent>? transferAgent;

  /// Creates a new [GuardrailAction].
  /// [generativeAnswer] The agent will immediately respond with a generative answer.
  /// [respondImmediately] The agent will immediately respond with a preconfigured response.
  /// [transferAgent] The agent will transfer the conversation to a different agent.
  GuardrailAction({
    this.generativeAnswer,
    this.respondImmediately,
    this.transferAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generativeAnswer': ?pulumi.Input.mapOptionalInputValue<GuardrailActionGenerativeAnswer, Map<String, dynamic>>(generativeAnswer, (value) => value.toMap()),
      'respondImmediately': ?pulumi.Input.mapOptionalInputValue<GuardrailActionRespondImmediately, Map<String, dynamic>>(respondImmediately, (value) => value.toMap()),
      'transferAgent': ?pulumi.Input.mapOptionalInputValue<GuardrailActionTransferAgent, Map<String, dynamic>>(transferAgent, (value) => value.toMap()),
    };
  }

  factory GuardrailAction.fromMap(Map<String, dynamic> map) {
    return GuardrailAction(
      generativeAnswer: (() { final guardedValue = map['generativeAnswer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailActionGenerativeAnswer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      respondImmediately: (() { final guardedValue = map['respondImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailActionRespondImmediately.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transferAgent: (() { final guardedValue = map['transferAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailActionTransferAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

