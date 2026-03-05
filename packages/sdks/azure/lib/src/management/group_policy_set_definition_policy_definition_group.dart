// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupPolicySetDefinitionPolicyDefinitionGroup {
  /// The ID of a resource that contains additional metadata for this Policy Definition Group.
  final pulumi.Input<String>? additionalMetadataResourceId;
  /// The category of this Policy Definition Group.
  final pulumi.Input<String>? category;
  /// The description of this Policy Definition Group.
  final pulumi.Input<String>? description;
  /// The display name of this Policy Definition Group.
  final pulumi.Input<String>? displayName;
  /// The name which should be used for this Policy Definition Group.
  final pulumi.Input<String> name;

  /// Creates a new [GroupPolicySetDefinitionPolicyDefinitionGroup].
  /// [additionalMetadataResourceId] The ID of a resource that contains additional metadata for this Policy Definition Group.
  /// [category] The category of this Policy Definition Group.
  /// [description] The description of this Policy Definition Group.
  /// [displayName] The display name of this Policy Definition Group.
  /// [name] The name which should be used for this Policy Definition Group.
  GroupPolicySetDefinitionPolicyDefinitionGroup({
    this.additionalMetadataResourceId,
    this.category,
    this.description,
    this.displayName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalMetadataResourceId': ?additionalMetadataResourceId,
      'category': ?category,
      'description': ?description,
      'displayName': ?displayName,
      'name': name,
    };
  }

  factory GroupPolicySetDefinitionPolicyDefinitionGroup.fromMap(Map<String, dynamic> map) {
    return GroupPolicySetDefinitionPolicyDefinitionGroup(
      additionalMetadataResourceId: (() { final guardedValue = map['additionalMetadataResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

