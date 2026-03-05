// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_custom_entity_store_assignment_args_doc}
/// Arguments for getCustomEntityStoreAssignment.
/// {@endtemplate}
/// {@macro pulumi_security_get_custom_entity_store_assignment_args_doc}
class GetCustomEntityStoreAssignmentArgs {
  /// Name of the custom entity store assignment. Generated name is GUID.
  final pulumi.Input<String> customEntityStoreAssignmentName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCustomEntityStoreAssignmentArgs].
  /// [customEntityStoreAssignmentName] Name of the custom entity store assignment. Generated name is GUID.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetCustomEntityStoreAssignmentArgs({
    required this.customEntityStoreAssignmentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customEntityStoreAssignmentName': customEntityStoreAssignmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCustomEntityStoreAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomEntityStoreAssignmentArgs(
      customEntityStoreAssignmentName: pulumi.Input.fromValue(map['customEntityStoreAssignmentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

