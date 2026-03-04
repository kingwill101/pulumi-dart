// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_custom_entity_store_assignment_args_doc}
/// The set of arguments for CustomEntityStoreAssignment.
/// {@endtemplate}
/// {@macro pulumi_security_custom_entity_store_assignment_args_doc}
class CustomEntityStoreAssignmentArgs {
  /// Name of the custom entity store assignment. Generated name is GUID.
  final pulumi.Input<String>? customEntityStoreAssignmentName;

  /// The principal assigned with entity store. If not provided, will use caller principal. Format of principal is: [AAD type]=[PrincipalObjectId];[TenantId]
  final pulumi.Input<String>? principal;

  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CustomEntityStoreAssignmentArgs].
  /// [customEntityStoreAssignmentName] Name of the custom entity store assignment. Generated name is GUID.
  /// [principal] The principal assigned with entity store. If not provided, will use caller principal. Format of principal is: [AAD type]=[PrincipalObjectId];[TenantId]
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  CustomEntityStoreAssignmentArgs({
    this.customEntityStoreAssignmentName,
    this.principal,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customEntityStoreAssignmentName': ?customEntityStoreAssignmentName,
      'principal': ?principal,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CustomEntityStoreAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return CustomEntityStoreAssignmentArgs(
      customEntityStoreAssignmentName: (() {
        final guardedValue = map['customEntityStoreAssignmentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principal: (() {
        final guardedValue = map['principal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
