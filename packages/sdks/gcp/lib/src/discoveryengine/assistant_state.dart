// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assistant_customer_policy.dart';
import 'assistant_generation_config.dart';

/// Input properties used for looking up and filtering Assistant resources.
class AssistantState {
  /// The unique id of the assistant.
  final pulumi.Input<String>? assistantId;

  /// The unique id of the collection.
  final pulumi.Input<String>? collectionId;

  /// Customer policy for the assistant.
  /// Structure is documented below.
  final pulumi.Input<AssistantCustomerPolicy>? customerPolicy;

  /// Description for additional information. Expected to be shown on the
  /// configuration UI, not to the users of the assistant.
  final pulumi.Input<String>? description;

  /// The assistant display name.
  /// It must be a UTF-8 encoded string with a length limit of 128 characters.
  final pulumi.Input<String>? displayName;

  /// The unique id of the engine.
  final pulumi.Input<String>? engineId;

  /// Configuration for the generation of the assistant response.
  /// Structure is documented below.
  final pulumi.Input<AssistantGenerationConfig>? generationConfig;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String>? location;

  /// Resource name of the assistant.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/assistants/{assistant}`
  /// It must be a UTF-8 encoded string with a length limit of 1024 characters.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The type of web grounding to use.
  /// The supported values: 'WEB_GROUNDING_TYPE_DISABLED', 'WEB_GROUNDING_TYPE_GOOGLE_SEARCH', 'WEB_GROUNDING_TYPE_ENTERPRISE_WEB_SEARCH'.
  final pulumi.Input<String>? webGroundingType;

  /// Creates a new [AssistantState].
  /// [assistantId] The unique id of the assistant.
  /// [collectionId] The unique id of the collection.
  /// [customerPolicy] Customer policy for the assistant.
  /// [description] Description for additional information. Expected to be shown on the
  /// [displayName] The assistant display name.
  /// [engineId] The unique id of the engine.
  /// [generationConfig] Configuration for the generation of the assistant response.
  /// [location] The geographic location where the data store should reside. The value can
  /// [name] Resource name of the assistant.
  /// [project] The ID of the project in which the resource belongs.
  /// [webGroundingType] The type of web grounding to use.
  AssistantState({
    this.assistantId,
    this.collectionId,
    this.customerPolicy,
    this.description,
    this.displayName,
    this.engineId,
    this.generationConfig,
    this.location,
    this.name,
    this.project,
    this.webGroundingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assistantId': ?assistantId,
      'collectionId': ?collectionId,
      'customerPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            AssistantCustomerPolicy,
            Map<String, dynamic>
          >(customerPolicy, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'engineId': ?engineId,
      'generationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AssistantGenerationConfig,
            Map<String, dynamic>
          >(generationConfig, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'webGroundingType': ?webGroundingType,
    };
  }

  factory AssistantState.fromMap(Map<String, dynamic> map) {
    return AssistantState(
      assistantId: (() {
        final guardedValue = map['assistantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      collectionId: (() {
        final guardedValue = map['collectionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customerPolicy: (() {
        final guardedValue = map['customerPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AssistantCustomerPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engineId: (() {
        final guardedValue = map['engineId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      generationConfig: (() {
        final guardedValue = map['generationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AssistantGenerationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webGroundingType: (() {
        final guardedValue = map['webGroundingType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
