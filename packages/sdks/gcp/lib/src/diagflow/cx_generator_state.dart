// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_generator_llm_model_settings.dart';
import 'cx_generator_model_parameter.dart';
import 'cx_generator_placeholder.dart';
import 'cx_generator_prompt_text.dart';

/// Input properties used for looking up and filtering CxGenerator resources.
class CxGeneratorState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The human-readable name of the generator, unique within the agent.
  final pulumi.Input<String?>? displayName;
  /// The language to create generators for the following fields:
  /// * Generator.prompt_text.text
  /// If not specified, the agent's default language is used.
  final pulumi.Input<String?>? languageCode;
  /// The LLM model settings.
  /// Structure is documented below.
  final pulumi.Input<CxGeneratorLlmModelSettings?>? llmModelSettings;
  /// Parameters passed to the LLM to configure its behavior.
  /// Structure is documented below.
  final pulumi.Input<CxGeneratorModelParameter?>? modelParameter;
  /// The unique identifier of the Generator.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/generators/&lt;Generator ID&gt;.
  final pulumi.Input<String?>? name;
  /// The agent to create a Generator for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  final pulumi.Input<String?>? parent;
  /// List of custom placeholders in the prompt text.
  /// Structure is documented below.
  final pulumi.Input<List<CxGeneratorPlaceholder>?>? placeholders;
  /// Prompt for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<CxGeneratorPromptText?>? promptText;

  /// Creates a new [CxGeneratorState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The human-readable name of the generator, unique within the agent.
  /// [languageCode] The language to create generators for the following fields:
  /// [llmModelSettings] The LLM model settings.
  /// [modelParameter] Parameters passed to the LLM to configure its behavior.
  /// [name] The unique identifier of the Generator.
  /// [parent] The agent to create a Generator for.
  /// [placeholders] List of custom placeholders in the prompt text.
  /// [promptText] Prompt for the LLM model.
  const CxGeneratorState({
    this.deletionPolicy,
    this.displayName,
    this.languageCode,
    this.llmModelSettings,
    this.modelParameter,
    this.name,
    this.parent,
    this.placeholders,
    this.promptText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'languageCode': ?languageCode,
      'llmModelSettings': ?pulumi.Input.mapOptionalInputValue<CxGeneratorLlmModelSettings, Map<String, dynamic>>(llmModelSettings, (value) => value.toMap()),
      'modelParameter': ?pulumi.Input.mapOptionalInputValue<CxGeneratorModelParameter, Map<String, dynamic>>(modelParameter, (value) => value.toMap()),
      'name': ?name,
      'parent': ?parent,
      'placeholders': ?pulumi.Input.mapOptionalInputValue<List<CxGeneratorPlaceholder>, List<Map<String, dynamic>>>(placeholders, (value) => pulumi.Input.encodeList<CxGeneratorPlaceholder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'promptText': ?pulumi.Input.mapOptionalInputValue<CxGeneratorPromptText, Map<String, dynamic>>(promptText, (value) => value.toMap()),
    };
  }

  factory CxGeneratorState.fromMap(Map<String, dynamic> map) {
    return CxGeneratorState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      llmModelSettings: (() { final guardedValue = map['llmModelSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxGeneratorLlmModelSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelParameter: (() { final guardedValue = map['modelParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxGeneratorModelParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placeholders: (() { final guardedValue = map['placeholders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxGeneratorPlaceholder>(guardedValue, (value) => CxGeneratorPlaceholder.fromMap((value as Map).cast<String, dynamic>()))); })(),
      promptText: (() { final guardedValue = map['promptText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxGeneratorPromptText.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
