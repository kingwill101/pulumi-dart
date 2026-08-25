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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A human-friendly description of the constraint to display as an error message when the policy is violated.
  final pulumi.Input<String?>? description;
  /// A human-friendly name for the constraint.
  final pulumi.Input<String?>? displayName;
  /// A list of RESTful methods for which to enforce the constraint. Can be `CREATE`, `UPDATE`, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
  final pulumi.Input<List<String>> methodTypes;
  /// Immutable. The name of the custom constraint. This is unique within the organization.
  final pulumi.Input<String?>? name;
  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  final pulumi.Input<String> parent;
  /// Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, `container.googleapis.com/NodePool`.
  final pulumi.Input<List<String>> resourceTypes;

  /// Creates a new [CustomConstraintArgs].
  /// [actionType] The action to take if the condition is met.
  /// [condition] A CEL condition that refers to a supported service resource, for example `resource.management.autoUpgrade == false`. For details about CEL usage, see [Common Expression Language](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A human-friendly description of the constraint to display as an error message when the policy is violated.
  /// [displayName] A human-friendly name for the constraint.
  /// [methodTypes] A list of RESTful methods for which to enforce the constraint. Can be `CREATE`, `UPDATE`, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
  /// [name] Immutable. The name of the custom constraint. This is unique within the organization.
  /// [parent] The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  /// [resourceTypes] Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, `container.googleapis.com/NodePool`.
  const CustomConstraintArgs({
    required this.actionType,
    required this.condition,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      condition: pulumi.Input.fromValue(map['condition'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      methodTypes: pulumi.Input.fromValue((map['methodTypes'] as List).cast<String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      resourceTypes: pulumi.Input.fromValue((map['resourceTypes'] as List).cast<String>()),
    );
  }
}
