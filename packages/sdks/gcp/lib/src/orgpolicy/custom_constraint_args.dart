// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orgpolicy_custom_constraint_custom_constraint_args_doc}
/// The set of arguments for CustomConstraint.
/// {@endtemplate}
/// {@macro pulumi_orgpolicy_custom_constraint_custom_constraint_args_doc}
class CustomConstraintArgs {
  /// The action to take if the condition is met.
  /// Possible values are: `ALLOW`, `DENY`.
  final pulumi.Input<String> actionType;
  /// A CEL condition that refers to a supported service resource, for example `resource.management.autoUpgrade == false`. For details about CEL usage, see [Common Expression Language](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).
  final pulumi.Input<String> condition;
  /// A human-friendly description of the constraint to display as an error message when the policy is violated.
  final pulumi.Input<String>? description;
  /// A human-friendly name for the constraint.
  final pulumi.Input<String>? displayName;
  /// A list of RESTful methods for which to enforce the constraint. Can be `CREATE`, `UPDATE`, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
  final pulumi.Input<List<String>> methodTypes;
  /// Immutable. The name of the custom constraint. This is unique within the organization.
  final pulumi.Input<String>? name;
  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  final pulumi.Input<String> parent;
  /// Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, `container.googleapis.com/NodePool`.
  final pulumi.Input<List<String>> resourceTypes;

  /// Creates a new [CustomConstraintArgs].
  /// [actionType] The action to take if the condition is met.
  /// [condition] A CEL condition that refers to a supported service resource, for example `resource.management.autoUpgrade == false`. For details about CEL usage, see [Common Expression Language](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).
  /// [description] A human-friendly description of the constraint to display as an error message when the policy is violated.
  /// [displayName] A human-friendly name for the constraint.
  /// [methodTypes] A list of RESTful methods for which to enforce the constraint. Can be `CREATE`, `UPDATE`, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
  /// [name] Immutable. The name of the custom constraint. This is unique within the organization.
  /// [parent] The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  /// [resourceTypes] Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, `container.googleapis.com/NodePool`.
  CustomConstraintArgs({
    required this.actionType,
    required this.condition,
    this.description,
    this.displayName,
    required this.methodTypes,
    this.name,
    required this.parent,
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'condition': condition,
      'description': ?description,
      'displayName': ?displayName,
      'methodTypes': methodTypes,
      'name': ?name,
      'parent': parent,
      'resourceTypes': resourceTypes,
    };
  }

  factory CustomConstraintArgs.fromMap(Map<String, dynamic> map) {
    return CustomConstraintArgs(
      actionType: (map['actionType'] as String).input(),
      condition: (map['condition'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      methodTypes: ((map['methodTypes'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: (map['parent'] as String).input(),
      resourceTypes: ((map['resourceTypes'] as List).cast<String>()).input(),
    );
  }
}

