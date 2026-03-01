// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomConstraint resources.
class CustomConstraintState {
  /// The action to take if the condition is met.
  /// Possible values are: `ALLOW`, `DENY`.
  final pulumi.Input<String>? actionType;
  /// A CEL condition that refers to a supported service resource, for example `resource.management.autoUpgrade == false`. For details about CEL usage, see [Common Expression Language](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).
  final pulumi.Input<String>? condition;
  /// A human-friendly description of the constraint to display as an error message when the policy is violated.
  final pulumi.Input<String>? description;
  /// A human-friendly name for the constraint.
  final pulumi.Input<String>? displayName;
  /// A list of RESTful methods for which to enforce the constraint. Can be `CREATE`, `UPDATE`, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
  final pulumi.Input<List<String>>? methodTypes;
  /// Immutable. The name of the custom constraint. This is unique within the organization.
  final pulumi.Input<String>? name;
  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  final pulumi.Input<String>? parent;
  /// Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, `container.googleapis.com/NodePool`.
  final pulumi.Input<List<String>>? resourceTypes;
  /// Output only. The timestamp representing when the constraint was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [CustomConstraintState].
  /// [actionType] The action to take if the condition is met.
  /// [condition] A CEL condition that refers to a supported service resource, for example `resource.management.autoUpgrade == false`. For details about CEL usage, see [Common Expression Language](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).
  /// [description] A human-friendly description of the constraint to display as an error message when the policy is violated.
  /// [displayName] A human-friendly name for the constraint.
  /// [methodTypes] A list of RESTful methods for which to enforce the constraint. Can be `CREATE`, `UPDATE`, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
  /// [name] Immutable. The name of the custom constraint. This is unique within the organization.
  /// [parent] The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  /// [resourceTypes] Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, `container.googleapis.com/NodePool`.
  /// [updateTime] Output only. The timestamp representing when the constraint was last updated.
  CustomConstraintState({
    pulumi.Output<String>? actionType,
    pulumi.Output<String>? condition,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<List<String>>? methodTypes,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<List<String>>? resourceTypes,
    pulumi.Output<String>? updateTime,
  }) :
      actionType = pulumi.Input.asOptionalInput<String>(actionType),
      condition = pulumi.Input.asOptionalInput<String>(condition),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      methodTypes = pulumi.Input.asOptionalInput<List<String>>(methodTypes),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      resourceTypes = pulumi.Input.asOptionalInput<List<String>>(resourceTypes),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': ?actionType,
      'condition': ?condition,
      'description': ?description,
      'displayName': ?displayName,
      'methodTypes': ?methodTypes,
      'name': ?name,
      'parent': ?parent,
      'resourceTypes': ?resourceTypes,
      'updateTime': ?updateTime,
    };
  }

  factory CustomConstraintState.fromMap(Map<String, dynamic> map) {
    return CustomConstraintState(
      actionType: map['actionType'] == null ? null : pulumi.Output.create<String>(map['actionType'] as String),
      condition: map['condition'] == null ? null : pulumi.Output.create<String>(map['condition'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      methodTypes: map['methodTypes'] == null ? null : pulumi.Output.create<List<String>>((map['methodTypes'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      resourceTypes: map['resourceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['resourceTypes'] as List).cast<String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

