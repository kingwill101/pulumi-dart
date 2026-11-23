// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_evaluation_item_evaluation_request_prompt_prompt_template_data.dart';
import 'ai_evaluation_item_evaluation_request_prompt_user_scenario.dart';

class AiEvaluationItemEvaluationRequestPrompt {
  /// Represents the complete execution trace of a multi-turn conversation,
  /// which can involve single or multiple agents, as a JSON string. This
  /// serves as the input context for agent scraping.
  /// At most one of `text`, `value`, `promptTemplateData`, `agentData`, or `userScenario` can be set.
  final pulumi.Input<String?>? agentData;
  /// Prompt template data.
  /// At most one of `text`, `value`, `promptTemplateData`, `agentData`, or `userScenario` can be set.
  /// Structure is documented below.
  final pulumi.Input<AiEvaluationItemEvaluationRequestPromptPromptTemplateData?>? promptTemplateData;
  /// Text prompt.
  /// At most one of `text`, `value`, `promptTemplateData`, `agentData`, or `userScenario` can be set.
  final pulumi.Input<String?>? text;
  /// The generated user scenario used to drive multi-turn agent running results.
  /// At most one of `text`, `value`, `promptTemplateData`, `agentData`, or `userScenario` can be set.
  /// Structure is documented below.
  final pulumi.Input<AiEvaluationItemEvaluationRequestPromptUserScenario?>? userScenario;
  /// Fields and values that can be used to populate the prompt template, as a JSON string.
  /// At most one of `text`, `value`, `promptTemplateData`, `agentData`, or `userScenario` can be set.
  final pulumi.Input<String?>? value;

  /// Creates a new [AiEvaluationItemEvaluationRequestPrompt].
  /// [agentData] Represents the complete execution trace of a multi-turn conversation,
  /// [promptTemplateData] Prompt template data.
  /// [text] Text prompt.
  /// [userScenario] The generated user scenario used to drive multi-turn agent running results.
  /// [value] Fields and values that can be used to populate the prompt template, as a JSON string.
  const AiEvaluationItemEvaluationRequestPrompt({
    this.agentData,
    this.promptTemplateData,
    this.text,
    this.userScenario,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentData': ?agentData,
      'promptTemplateData': ?pulumi.Input.mapOptionalInputValue<AiEvaluationItemEvaluationRequestPromptPromptTemplateData, Map<String, dynamic>>(promptTemplateData, (value) => value.toMap()),
      'text': ?text,
      'userScenario': ?pulumi.Input.mapOptionalInputValue<AiEvaluationItemEvaluationRequestPromptUserScenario, Map<String, dynamic>>(userScenario, (value) => value.toMap()),
      'value': ?value,
    };
  }

  factory AiEvaluationItemEvaluationRequestPrompt.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemEvaluationRequestPrompt(
      agentData: (() { final guardedValue = map['agentData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promptTemplateData: (() { final guardedValue = map['promptTemplateData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEvaluationItemEvaluationRequestPromptPromptTemplateData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userScenario: (() { final guardedValue = map['userScenario']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEvaluationItemEvaluationRequestPromptUserScenario.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
