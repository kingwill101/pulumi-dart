// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_task_assignment_properties.dart';

/// {@template pulumi_storage_storage_task_assignment_args_doc}
/// The set of arguments for StorageTaskAssignment.
/// {@endtemplate}
/// {@macro pulumi_storage_storage_task_assignment_args_doc}
class StorageTaskAssignmentArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// Properties of the storage task assignment.
  final pulumi.Input<StorageTaskAssignmentProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String>? storageTaskAssignmentName;

  /// Creates a new [StorageTaskAssignmentArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [properties] Properties of the storage task assignment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageTaskAssignmentName] The name of the storage task assignment within the specified resource group. Storage task assignment names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  StorageTaskAssignmentArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<StorageTaskAssignmentProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? storageTaskAssignmentName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      properties = pulumi.Input.asInput<StorageTaskAssignmentProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageTaskAssignmentName = pulumi.Input.asOptionalInput<String>(storageTaskAssignmentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'properties': pulumi.Input.mapInputValue<StorageTaskAssignmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'storageTaskAssignmentName': ?storageTaskAssignmentName,
    };
  }

  factory StorageTaskAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return StorageTaskAssignmentArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      properties: pulumi.Output.create<StorageTaskAssignmentProperties>(StorageTaskAssignmentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageTaskAssignmentName: map['storageTaskAssignmentName'] == null ? null : pulumi.Output.create<String>(map['storageTaskAssignmentName'] as String),
    );
  }
}

