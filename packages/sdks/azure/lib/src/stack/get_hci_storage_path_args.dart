// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_stack_get_hci_storage_path_get_hci_storage_path_args_doc}
/// Arguments for getHciStoragePath.
/// {@endtemplate}
/// {@macro pulumi_stack_get_hci_storage_path_get_hci_storage_path_args_doc}
class GetHciStoragePathArgs {
  /// The name of this Stack HCI Storage Path.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Stack HCI Storage Path exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHciStoragePathArgs].
  /// [name] The name of this Stack HCI Storage Path.
  /// [resourceGroupName] The name of the Resource Group where the Stack HCI Storage Path exists.
  const GetHciStoragePathArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHciStoragePathArgs.fromMap(Map<String, dynamic> map) {
    return GetHciStoragePathArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

