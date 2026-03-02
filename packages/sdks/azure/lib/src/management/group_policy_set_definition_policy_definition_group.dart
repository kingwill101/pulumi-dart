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
      additionalMetadataResourceId: map['additionalMetadataResourceId'] == null ? null : (map['additionalMetadataResourceId']! as String).input(),
      category: map['category'] == null ? null : (map['category']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

