// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assistant_customer_policy.dart';
import 'assistant_generation_config.dart';

/// {@template pulumi_discoveryengine_assistant_assistant_args_doc}
/// The set of arguments for Assistant.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_assistant_assistant_args_doc}
class AssistantArgs {
  /// The unique id of the assistant.
  final pulumi.Input<String> assistantId;
  /// The unique id of the collection.
  final pulumi.Input<String> collectionId;
  /// Customer policy for the assistant.
  /// Structure is documented below.
  final pulumi.Input<AssistantCustomerPolicy>? customerPolicy;
  /// Description for additional information. Expected to be shown on the
  /// configuration UI, not to the users of the assistant.
  final pulumi.Input<String>? description;
  /// The assistant display name.
  /// It must be a UTF-8 encoded string with a length limit of 128 characters.
  final pulumi.Input<String> displayName;
  /// The unique id of the engine.
  final pulumi.Input<String> engineId;
  /// Configuration for the generation of the assistant response.
  /// Structure is documented below.
  final pulumi.Input<AssistantGenerationConfig>? generationConfig;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The type of web grounding to use.
  /// The supported values: 'WEB_GROUNDING_TYPE_DISABLED', 'WEB_GROUNDING_TYPE_GOOGLE_SEARCH', 'WEB_GROUNDING_TYPE_ENTERPRISE_WEB_SEARCH'.
  final pulumi.Input<String>? webGroundingType;

  /// Creates a new [AssistantArgs].
  /// [assistantId] The unique id of the assistant.
  /// [collectionId] The unique id of the collection.
  /// [customerPolicy] Customer policy for the assistant.
  /// [description] Description for additional information. Expected to be shown on the
  /// [displayName] The assistant display name.
  /// [engineId] The unique id of the engine.
  /// [generationConfig] Configuration for the generation of the assistant response.
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [webGroundingType] The type of web grounding to use.
  AssistantArgs({
    required pulumi.Output<String> assistantId,
    required pulumi.Output<String> collectionId,
    pulumi.Output<AssistantCustomerPolicy>? customerPolicy,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    required pulumi.Output<String> engineId,
    pulumi.Output<AssistantGenerationConfig>? generationConfig,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? webGroundingType,
  }) :
      assistantId = pulumi.Input.asInput<String>(assistantId),
      collectionId = pulumi.Input.asInput<String>(collectionId),
      customerPolicy = pulumi.Input.asOptionalInput<AssistantCustomerPolicy>(customerPolicy),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      engineId = pulumi.Input.asInput<String>(engineId),
      generationConfig = pulumi.Input.asOptionalInput<AssistantGenerationConfig>(generationConfig),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      webGroundingType = pulumi.Input.asOptionalInput<String>(webGroundingType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assistantId': assistantId,
      'collectionId': collectionId,
      'customerPolicy': ?pulumi.Input.mapOptionalInputValue<AssistantCustomerPolicy, Map<String, dynamic>>(customerPolicy, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'engineId': engineId,
      'generationConfig': ?pulumi.Input.mapOptionalInputValue<AssistantGenerationConfig, Map<String, dynamic>>(generationConfig, (value) => value.toMap()),
      'location': location,
      'project': ?project,
      'webGroundingType': ?webGroundingType,
    };
  }

  factory AssistantArgs.fromMap(Map<String, dynamic> map) {
    return AssistantArgs(
      assistantId: pulumi.Output.create<String>(map['assistantId'] as String),
      collectionId: pulumi.Output.create<String>(map['collectionId'] as String),
      customerPolicy: map['customerPolicy'] == null ? null : pulumi.Output.create<AssistantCustomerPolicy>(AssistantCustomerPolicy.fromMap((map['customerPolicy'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      engineId: pulumi.Output.create<String>(map['engineId'] as String),
      generationConfig: map['generationConfig'] == null ? null : pulumi.Output.create<AssistantGenerationConfig>(AssistantGenerationConfig.fromMap((map['generationConfig'] as Map).cast<String, dynamic>())),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      webGroundingType: map['webGroundingType'] == null ? null : pulumi.Output.create<String>(map['webGroundingType'] as String),
    );
  }
}

