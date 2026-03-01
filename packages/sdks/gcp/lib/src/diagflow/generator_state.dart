// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generator_inference_parameter.dart';
import 'generator_summarization_context.dart';

/// Input properties used for looking up and filtering Generator resources.
class GeneratorState {
  /// Optional. Human readable description of the generator.
  final pulumi.Input<String>? description;
  /// Optional. The ID to use for the generator, which will become the final component of the generator's resource name.
  final pulumi.Input<String>? generatorId;
  /// Optional. Inference parameters for this generator.
  /// Structure is documented below.
  final pulumi.Input<GeneratorInferenceParameter>? inferenceParameter;
  /// desc
  final pulumi.Input<String>? location;
  /// The resource name of the generator.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Optional. The published Large Language Model name. * To use the latest model version, specify the model name without version number. Example: text-bison * To use a stable model version, specify the version number as well. Example: text-bison@002.
  final pulumi.Input<String>? publishedModel;
  /// Input of prebuilt Summarization feature.
  /// Structure is documented below.
  final pulumi.Input<GeneratorSummarizationContext>? summarizationContext;
  /// Optional. The trigger event of the generator. It defines when the generator is triggered in a conversation.
  /// Possible values are: `END_OF_UTTERANCE`, `MANUAL_CALL`, `CUSTOMER_MESSAGE`, `AGENT_MESSAGE`.
  final pulumi.Input<String>? triggerEvent;

  /// Creates a new [GeneratorState].
  /// [description] Optional. Human readable description of the generator.
  /// [generatorId] Optional. The ID to use for the generator, which will become the final component of the generator's resource name.
  /// [inferenceParameter] Optional. Inference parameters for this generator.
  /// [location] desc
  /// [name] The resource name of the generator.
  /// [project] The ID of the project in which the resource belongs.
  /// [publishedModel] Optional. The published Large Language Model name. * To use the latest model version, specify the model name without version number. Example: text-bison * To use a stable model version, specify the version number as well. Example: text-bison@002.
  /// [summarizationContext] Input of prebuilt Summarization feature.
  /// [triggerEvent] Optional. The trigger event of the generator. It defines when the generator is triggered in a conversation.
  GeneratorState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? generatorId,
    pulumi.Output<GeneratorInferenceParameter>? inferenceParameter,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? publishedModel,
    pulumi.Output<GeneratorSummarizationContext>? summarizationContext,
    pulumi.Output<String>? triggerEvent,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      generatorId = pulumi.Input.asOptionalInput<String>(generatorId),
      inferenceParameter = pulumi.Input.asOptionalInput<GeneratorInferenceParameter>(inferenceParameter),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      publishedModel = pulumi.Input.asOptionalInput<String>(publishedModel),
      summarizationContext = pulumi.Input.asOptionalInput<GeneratorSummarizationContext>(summarizationContext),
      triggerEvent = pulumi.Input.asOptionalInput<String>(triggerEvent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'generatorId': ?generatorId,
      'inferenceParameter': ?pulumi.Input.mapOptionalInputValue<GeneratorInferenceParameter, Map<String, dynamic>>(inferenceParameter, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'publishedModel': ?publishedModel,
      'summarizationContext': ?pulumi.Input.mapOptionalInputValue<GeneratorSummarizationContext, Map<String, dynamic>>(summarizationContext, (value) => value.toMap()),
      'triggerEvent': ?triggerEvent,
    };
  }

  factory GeneratorState.fromMap(Map<String, dynamic> map) {
    return GeneratorState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      generatorId: map['generatorId'] == null ? null : pulumi.Output.create<String>(map['generatorId'] as String),
      inferenceParameter: map['inferenceParameter'] == null ? null : pulumi.Output.create<GeneratorInferenceParameter>(GeneratorInferenceParameter.fromMap((map['inferenceParameter'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      publishedModel: map['publishedModel'] == null ? null : pulumi.Output.create<String>(map['publishedModel'] as String),
      summarizationContext: map['summarizationContext'] == null ? null : pulumi.Output.create<GeneratorSummarizationContext>(GeneratorSummarizationContext.fromMap((map['summarizationContext'] as Map).cast<String, dynamic>())),
      triggerEvent: map['triggerEvent'] == null ? null : pulumi.Output.create<String>(map['triggerEvent'] as String),
    );
  }
}

