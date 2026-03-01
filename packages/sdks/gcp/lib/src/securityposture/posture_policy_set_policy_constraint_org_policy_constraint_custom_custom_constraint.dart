// ignore_for_file: unused_element, unnecessary_cast


class PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomCustomConstraint {
  /// The action to take if the condition is met.
  /// Possible values are: `ALLOW`, `DENY`.
  final String actionType;
  /// A CEL condition that refers to a supported service resource, for example `resource.management.autoUpgrade == false`. For details about CEL usage, see [Common Expression Language](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).
  final String condition;
  /// A human-friendly description of the constraint to display as an error message when the policy is violated.
  final String? description;
  /// A human-friendly name for the constraint.
  final String? displayName;
  /// A list of RESTful methods for which to enforce the constraint. Can be `CREATE`, `UPDATE`, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
  final List<String> methodTypes;
  /// Immutable. The name of the custom constraint. This is unique within the organization.
  final String name;
  /// Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, `container.googleapis.com/NodePool`.
  final List<String> resourceTypes;

  /// Creates a new [PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomCustomConstraint].
  /// [actionType] The action to take if the condition is met.
  /// [condition] A CEL condition that refers to a supported service resource, for example `resource.management.autoUpgrade == false`. For details about CEL usage, see [Common Expression Language](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).
  /// [description] A human-friendly description of the constraint to display as an error message when the policy is violated.
  /// [displayName] A human-friendly name for the constraint.
  /// [methodTypes] A list of RESTful methods for which to enforce the constraint. Can be `CREATE`, `UPDATE`, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
  /// [name] Immutable. The name of the custom constraint. This is unique within the organization.
  /// [resourceTypes] Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, `container.googleapis.com/NodePool`.
  PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomCustomConstraint({
    required this.actionType,
    required this.condition,
    this.description,
    this.displayName,
    required this.methodTypes,
    required this.name,
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'condition': condition,
      'description': ?description,
      'displayName': ?displayName,
      'methodTypes': methodTypes,
      'name': name,
      'resourceTypes': resourceTypes,
    };
  }

  factory PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomCustomConstraint.fromMap(Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomCustomConstraint(
      actionType: map['actionType'] as String,
      condition: map['condition'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      methodTypes: (map['methodTypes'] as List).cast<String>(),
      name: map['name'] as String,
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
    );
  }
}

