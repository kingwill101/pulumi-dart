// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_stack_hci_storage_path_hci_storage_path_args_doc}
/// The set of arguments for HciStoragePath.
/// {@endtemplate}
/// {@macro pulumi_stack_hci_storage_path_hci_storage_path_args_doc}
class HciStoragePathArgs {
  /// The ID of Custom Location where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> customLocationId;
  /// The Azure Region where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Azure Stack HCI Storage Path. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The file path on the disk to create the Storage Path. Changing this forces a new resource to be created.
  final pulumi.Input<String> path;
  /// The name of the Resource Group where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Storage Path.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HciStoragePathArgs].
  /// [customLocationId] The ID of Custom Location where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Azure Stack HCI Storage Path. Changing this forces a new resource to be created.
  /// [path] The file path on the disk to create the Storage Path. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Stack HCI Storage Path.
  const HciStoragePathArgs({
    required this.customLocationId,
    this.location,
    this.name,
    required this.path,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': customLocationId,
      'location': ?location,
      'name': ?name,
      'path': path,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory HciStoragePathArgs.fromMap(Map<String, dynamic> map) {
    return HciStoragePathArgs(
      customLocationId: pulumi.Input.fromValue(map['customLocationId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
