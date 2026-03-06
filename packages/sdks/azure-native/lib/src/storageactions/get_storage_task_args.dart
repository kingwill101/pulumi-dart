// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storageactions_get_storage_task_args_doc}
/// Arguments for getStorageTask.
/// {@endtemplate}
/// {@macro pulumi_storageactions_get_storage_task_args_doc}
class GetStorageTaskArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the storage task within the specified resource group. Storage task names must be between 3 and 18 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> storageTaskName;

  /// Creates a new [GetStorageTaskArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageTaskName] The name of the storage task within the specified resource group. Storage task names must be between 3 and 18 characters in length and use numbers and lower-case letters only.
  const GetStorageTaskArgs({
    required this.resourceGroupName,
    required this.storageTaskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageTaskName': storageTaskName,
    };
  }

  factory GetStorageTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageTaskArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageTaskName: pulumi.Input.fromValue(map['storageTaskName'] as String),
    );
  }
}

