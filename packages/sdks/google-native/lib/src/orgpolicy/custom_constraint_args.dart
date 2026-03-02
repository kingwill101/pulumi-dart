// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_constraint_action_type.dart';
import 'custom_constraint_method_types_item.dart';

/// {@template pulumi_orgpolicy_v2_custom_constraint_args_doc}
/// The set of arguments for CustomConstraint.
/// {@endtemplate}
/// {@macro pulumi_orgpolicy_v2_custom_constraint_args_doc}
class CustomConstraintArgs {
  /// Allow or deny type.
  final pulumi.Input<CustomConstraintActionType>? actionType;
  /// Org policy condition/expression. For example: `resource.instanceName.matches("[production|test]_.*_(\d)+")` or, `resource.management.auto_upgrade == true` The max length of the condition is 1000 characters.
  final pulumi.Input<String>? condition;
  /// Detailed information about this custom policy constraint. The max length of the description is 2000 characters.
  final pulumi.Input<String>? description;
  /// One line display name for the UI. The max length of the display_name is 200 characters.
  final pulumi.Input<String>? displayName;
  /// All the operations being applied for this constraint.
  final pulumi.Input<List<CustomConstraintMethodTypesItem>>? methodTypes;
  /// Immutable. Name of the constraint. This is unique within the organization. Format of the name should be * `organizations/{organization_id}/customConstraints/{custom_constraint_id}` Example: `organizations/123/customConstraints/custom.createOnlyE2TypeVms` The max length is 70 characters and the minimum length is 1. Note that the prefix `organizations/{organization_id}/customConstraints/` is not counted.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Immutable. The resource instance type on which this policy applies. Format will be of the form : `/` Example: * `compute.googleapis.com/Instance`.
  final pulumi.Input<List<String>>? resourceTypes;

  /// Creates a new [CustomConstraintArgs].
  /// [actionType] Allow or deny type.
  /// [condition] Org policy condition/expression. For example: `resource.instanceName.matches("[production|test]_.*_(\d)+")` or, `resource.management.auto_upgrade == true` The max length of the condition is 1000 characters.
  /// [description] Detailed information about this custom policy constraint. The max length of the description is 2000 characters.
  /// [displayName] One line display name for the UI. The max length of the display_name is 200 characters.
  /// [methodTypes] All the operations being applied for this constraint.
  /// [name] Immutable. Name of the constraint. This is unique within the organization. Format of the name should be * `organizations/{organization_id}/customConstraints/{custom_constraint_id}` Example: `organizations/123/customConstraints/custom.createOnlyE2TypeVms` The max length is 70 characters and the minimum length is 1. Note that the prefix `organizations/{organization_id}/customConstraints/` is not counted.
  /// [organizationId] Required.
  /// [resourceTypes] Immutable. The resource instance type on which this policy applies. Format will be of the form : `/` Example: * `compute.googleapis.com/Instance`.
  CustomConstraintArgs({
    this.actionType,
    this.condition,
    this.description,
    this.displayName,
    this.methodTypes,
    this.name,
    required this.organizationId,
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': ?pulumi.Input.mapOptionalInputValue<CustomConstraintActionType, String>(actionType, (value) => value.value),
      'condition': ?condition,
      'description': ?description,
      'displayName': ?displayName,
      'methodTypes': ?pulumi.Input.mapOptionalInputValue<List<CustomConstraintMethodTypesItem>, List<String>>(methodTypes, (value) => pulumi.Input.encodeList<CustomConstraintMethodTypesItem, String>(value, (value) => value.value)),
      'name': ?name,
      'organizationId': organizationId,
      'resourceTypes': ?resourceTypes,
    };
  }

  factory CustomConstraintArgs.fromMap(Map<String, dynamic> map) {
    return CustomConstraintArgs(
      actionType: map['actionType'] == null ? null : (CustomConstraintActionType.fromValue(map['actionType']! as String)).input(),
      condition: map['condition'] == null ? null : (map['condition']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      methodTypes: map['methodTypes'] == null ? null : (pulumi.Input.decodeList<CustomConstraintMethodTypesItem>(map['methodTypes']!, (value) => CustomConstraintMethodTypesItem.fromValue(value as String))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      resourceTypes: map['resourceTypes'] == null ? null : ((map['resourceTypes']! as List).cast<String>()).input(),
    );
  }
}

