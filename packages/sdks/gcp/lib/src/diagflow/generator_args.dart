// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_agent_coaching_context.dart';
import 'generator_free_form_context.dart';
import 'generator_inference_parameter.dart';
import 'generator_summarization_context.dart';

/// {@template pulumi_diagflow_generator_generator_args_doc}
/// The set of arguments for Generator.
/// {@endtemplate}
/// {@macro pulumi_diagflow_generator_generator_args_doc}
class GeneratorArgs {
  /// Input of prebuilt Agent Coaching feature.
  /// Structure is documented below.
  final pulumi.Input<GeneratorAgentCoachingContext?>? agentCoachingContext;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. Human readable description of the generator.
  final pulumi.Input<String?>? description;
  /// Input of free form generator to LLM.
  /// Structure is documented below.
  final pulumi.Input<GeneratorFreeFormContext?>? freeFormContext;
  /// Optional. The ID to use for the generator, which will become the final component of the generator's resource name.
  final pulumi.Input<String?>? generatorId;
  /// Optional. Inference parameters for this generator.
  /// Structure is documented below.
  final pulumi.Input<GeneratorInferenceParameter?>? inferenceParameter;
  /// desc
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Optional. The published Large Language Model name. * To use the latest model version, specify the model name without version number. Example: text-bison * To use a stable model version, specify the version number as well. Example: text-bison@002.
  final pulumi.Input<String?>? publishedModel;
  /// Input of prebuilt Summarization feature.
  /// Structure is documented below.
  final pulumi.Input<GeneratorSummarizationContext?>? summarizationContext;
  /// Optional. Resource names of the tools that the generator can choose from. Format: `projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/tools/&lt;tool ID&gt;`.
  final pulumi.Input<List<String>?>? tools;
  /// Optional. The trigger event of the generator. It defines when the generator is triggered in a conversation.
  /// Possible values are: `END_OF_UTTERANCE`, `MANUAL_CALL`, `CUSTOMER_MESSAGE`, `AGENT_MESSAGE`.
  final pulumi.Input<String?>? triggerEvent;

  /// Creates a new [GeneratorArgs].
  /// [agentCoachingContext] Input of prebuilt Agent Coaching feature.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. Human readable description of the generator.
  /// [freeFormContext] Input of free form generator to LLM.
  /// [generatorId] Optional. The ID to use for the generator, which will become the final component of the generator's resource name.
  /// [inferenceParameter] Optional. Inference parameters for this generator.
  /// [location] desc
  /// [project] The ID of the project in which the resource belongs.
  /// [publishedModel] Optional. The published Large Language Model name. * To use the latest model version, specify the model name without version number. Example: text-bison * To use a stable model version, specify the version number as well. Example: text-bison@002.
  /// [summarizationContext] Input of prebuilt Summarization feature.
  /// [tools] Optional. Resource names of the tools that the generator can choose from. Format: `projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/tools/&lt;tool ID&gt;`.
  /// [triggerEvent] Optional. The trigger event of the generator. It defines when the generator is triggered in a conversation.
  const GeneratorArgs({
    this.agentCoachingContext,
    this.deletionPolicy,
    this.description,
    this.freeFormContext,
    this.generatorId,
    this.inferenceParameter,
    required this.location,
    this.project,
    this.publishedModel,
    this.summarizationContext,
    this.tools,
    this.triggerEvent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCoachingContext': ?pulumi.Input.mapOptionalInputValue<GeneratorAgentCoachingContext, Map<String, dynamic>>(agentCoachingContext, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'freeFormContext': ?pulumi.Input.mapOptionalInputValue<GeneratorFreeFormContext, Map<String, dynamic>>(freeFormContext, (value) => value.toMap()),
      'generatorId': ?generatorId,
      'inferenceParameter': ?pulumi.Input.mapOptionalInputValue<GeneratorInferenceParameter, Map<String, dynamic>>(inferenceParameter, (value) => value.toMap()),
      'location': location,
      'project': ?project,
      'publishedModel': ?publishedModel,
      'summarizationContext': ?pulumi.Input.mapOptionalInputValue<GeneratorSummarizationContext, Map<String, dynamic>>(summarizationContext, (value) => value.toMap()),
      'tools': ?tools,
      'triggerEvent': ?triggerEvent,
    };
  }

  factory GeneratorArgs.fromMap(Map<String, dynamic> map) {
    return GeneratorArgs(
      agentCoachingContext: (() { final guardedValue = map['agentCoachingContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GeneratorAgentCoachingContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      freeFormContext: (() { final guardedValue = map['freeFormContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GeneratorFreeFormContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generatorId: (() { final guardedValue = map['generatorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inferenceParameter: (() { final guardedValue = map['inferenceParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GeneratorInferenceParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishedModel: (() { final guardedValue = map['publishedModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summarizationContext: (() { final guardedValue = map['summarizationContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GeneratorSummarizationContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tools: (() { final guardedValue = map['tools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      triggerEvent: (() { final guardedValue = map['triggerEvent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
