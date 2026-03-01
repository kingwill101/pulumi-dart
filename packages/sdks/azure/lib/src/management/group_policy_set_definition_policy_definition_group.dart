// ignore_for_file: unused_element, unnecessary_cast


class GroupPolicySetDefinitionPolicyDefinitionGroup {
  /// The ID of a resource that contains additional metadata for this Policy Definition Group.
  final String? additionalMetadataResourceId;
  /// The category of this Policy Definition Group.
  final String? category;
  /// The description of this Policy Definition Group.
  final String? description;
  /// The display name of this Policy Definition Group.
  final String? displayName;
  /// The name which should be used for this Policy Definition Group.
  final String name;

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
      additionalMetadataResourceId: map['additionalMetadataResourceId'] == null ? null : map['additionalMetadataResourceId'] as String,
      category: map['category'] == null ? null : map['category'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] as String,
    );
  }
}

