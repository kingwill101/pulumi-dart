// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicySetDefinitionPolicyDefinitionGroup {
  /// The ID of a resource that contains additional metadata about this policy definition group.
  final pulumi.Input<String> additionalMetadataResourceId;

  /// The category of this policy definition group.
  final pulumi.Input<String> category;

  /// The description of this policy definition group.
  final pulumi.Input<String> description;

  /// Specifies the display name of the Policy Set Definition. Conflicts with `name`.
  ///
  /// **NOTE** As `display_name` is not unique errors may occur when there are multiple policy set definitions with same display name.
  final pulumi.Input<String> displayName;

  /// Specifies the name of the Policy Set Definition. Conflicts with `display_name`.
  final pulumi.Input<String> name;

  /// Creates a new [GetPolicySetDefinitionPolicyDefinitionGroup].
  /// [additionalMetadataResourceId] The ID of a resource that contains additional metadata about this policy definition group.
  /// [category] The category of this policy definition group.
  /// [description] The description of this policy definition group.
  /// [displayName] Specifies the display name of the Policy Set Definition. Conflicts with `name`.
  /// [name] Specifies the name of the Policy Set Definition. Conflicts with `display_name`.
  GetPolicySetDefinitionPolicyDefinitionGroup({
    required this.additionalMetadataResourceId,
    required this.category,
    required this.description,
    required this.displayName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalMetadataResourceId': additionalMetadataResourceId,
      'category': category,
      'description': description,
      'displayName': displayName,
      'name': name,
    };
  }

  factory GetPolicySetDefinitionPolicyDefinitionGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPolicySetDefinitionPolicyDefinitionGroup(
      additionalMetadataResourceId: pulumi.Input.fromValue(
        map['additionalMetadataResourceId'] as String,
      ),
      category: pulumi.Input.fromValue(map['category'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
