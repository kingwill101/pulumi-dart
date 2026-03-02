// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrincipalAccessBoundaryPolicyDetailsRule {
  /// The description of the principal access boundary policy rule. Must be less than or equal to 256 characters.
  final pulumi.Input<String>? description;
  /// The access relationship of principals to the resources in this rule.
  /// Possible values: ALLOW
  final pulumi.Input<String> effect;
  /// A list of Cloud Resource Manager resources. The resource
  /// and all the descendants are included. The number of resources in a policy
  /// is limited to 500 across all rules.
  /// The following resource types are supported:
  /// * Organizations, such as `//cloudresourcemanager.googleapis.com/organizations/123`.
  /// * Folders, such as `//cloudresourcemanager.googleapis.com/folders/123`.
  /// * Projects, such as `//cloudresourcemanager.googleapis.com/projects/123`
  /// or `//cloudresourcemanager.googleapis.com/projects/my-project-id`.
  final pulumi.Input<List<String>> resources;

  /// Creates a new [PrincipalAccessBoundaryPolicyDetailsRule].
  /// [description] The description of the principal access boundary policy rule. Must be less than or equal to 256 characters.
  /// [effect] The access relationship of principals to the resources in this rule.
  /// [resources] A list of Cloud Resource Manager resources. The resource
  PrincipalAccessBoundaryPolicyDetailsRule({
    this.description,
    required this.effect,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'effect': effect,
      'resources': resources,
    };
  }

  factory PrincipalAccessBoundaryPolicyDetailsRule.fromMap(Map<String, dynamic> map) {
    return PrincipalAccessBoundaryPolicyDetailsRule(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effect: (map['effect'] as String).input(),
      resources: ((map['resources'] as List).cast<String>()).input(),
    );
  }
}

