// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEvaluationItemEvaluationRequestPromptUserScenario {
  /// The plan for the conversation, used to drive the multi-turn agent run and
  /// generate the simulated agent evaluation dataset.
  final pulumi.Input<String> conversationPlan;
  /// The prompt that starts the conversation between the simulated user and
  /// the agent under test.
  final pulumi.Input<String> startingPrompt;

  /// Creates a new [AiEvaluationItemEvaluationRequestPromptUserScenario].
  /// [conversationPlan] The plan for the conversation, used to drive the multi-turn agent run and
  /// [startingPrompt] The prompt that starts the conversation between the simulated user and
  const AiEvaluationItemEvaluationRequestPromptUserScenario({
    required this.conversationPlan,
    required this.startingPrompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationPlan': conversationPlan,
      'startingPrompt': startingPrompt,
    };
  }

  factory AiEvaluationItemEvaluationRequestPromptUserScenario.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemEvaluationRequestPromptUserScenario(
      conversationPlan: pulumi.Input.fromValue(map['conversationPlan'] as String),
      startingPrompt: pulumi.Input.fromValue(map['startingPrompt'] as String),
    );
  }
}
