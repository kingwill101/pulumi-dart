// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_storage_task_assignment_args_doc}
/// Arguments for getStorageTaskAssignment.
/// {@endtemplate}
/// {@macro pulumi_storage_get_storage_task_assignment_args_doc}
class GetStorageTaskAssignmentArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> storageTaskAssignmentName;

  /// Creates a new [GetStorageTaskAssignmentArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageTaskAssignmentName] The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  const GetStorageTaskAssignmentArgs({
    required this.accountName,
    required this.resourceGroupName,
    required this.storageTaskAssignmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'storageTaskAssignmentName': storageTaskAssignmentName,
    };
  }

  factory GetStorageTaskAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageTaskAssignmentArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageTaskAssignmentName: pulumi.Input.fromValue(map['storageTaskAssignmentName'] as String),
    );
  }
}
