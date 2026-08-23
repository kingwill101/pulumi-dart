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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description for additional information. Expected to be shown on the
  /// [displayName] The assistant display name.
  /// [engineId] The unique id of the engine.
  /// [generationConfig] Configuration for the generation of the assistant response.
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [webGroundingType] The type of web grounding to use.
  const AssistantArgs({
    required this.assistantId,
    required this.collectionId,
    this.customerPolicy,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      assistantId: pulumi.Input.fromValue(map['assistantId'] as String),
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      customerPolicy: (() { final guardedValue = map['customerPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssistantCustomerPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      engineId: pulumi.Input.fromValue(map['engineId'] as String),
      generationConfig: (() { final guardedValue = map['generationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssistantGenerationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webGroundingType: (() { final guardedValue = map['webGroundingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
