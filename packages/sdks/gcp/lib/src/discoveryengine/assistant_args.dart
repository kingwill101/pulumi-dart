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
    required this.assistantId,
    required this.collectionId,
    this.customerPolicy,
    this.description,
    required this.displayName,
    required this.engineId,
    this.generationConfig,
    required this.location,
    this.project,
    this.webGroundingType,
  });

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
      assistantId: (map['assistantId'] as String).input(),
      collectionId: (map['collectionId'] as String).input(),
      customerPolicy: map['customerPolicy'] == null ? null : (AssistantCustomerPolicy.fromMap((map['customerPolicy']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      engineId: (map['engineId'] as String).input(),
      generationConfig: map['generationConfig'] == null ? null : (AssistantGenerationConfig.fromMap((map['generationConfig']! as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      webGroundingType: map['webGroundingType'] == null ? null : (map['webGroundingType']! as String).input(),
    );
  }
}

