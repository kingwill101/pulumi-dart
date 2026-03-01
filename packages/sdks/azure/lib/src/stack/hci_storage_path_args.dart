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
  HciStoragePathArgs({
    required pulumi.Output<String> customLocationId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> path,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      customLocationId = pulumi.Input.asInput<String>(customLocationId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      path = pulumi.Input.asInput<String>(path),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      customLocationId: pulumi.Output.create<String>(map['customLocationId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      path: pulumi.Output.create<String>(map['path'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

