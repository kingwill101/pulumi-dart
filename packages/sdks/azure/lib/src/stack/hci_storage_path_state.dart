// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HciStoragePath resources.
class HciStoragePathState {
  /// The ID of Custom Location where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? customLocationId;
  /// The Azure Region where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Azure Stack HCI Storage Path. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The file path on the disk to create the Storage Path. Changing this forces a new resource to be created.
  final pulumi.Input<String>? path;
  /// The name of the Resource Group where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Storage Path.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HciStoragePathState].
  /// [customLocationId] The ID of Custom Location where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Azure Stack HCI Storage Path. Changing this forces a new resource to be created.
  /// [path] The file path on the disk to create the Storage Path. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Stack HCI Storage Path.
  HciStoragePathState({
    pulumi.Output<String>? customLocationId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? path,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      customLocationId = pulumi.Input.asOptionalInput<String>(customLocationId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      path = pulumi.Input.asOptionalInput<String>(path),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': ?customLocationId,
      'location': ?location,
      'name': ?name,
      'path': ?path,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory HciStoragePathState.fromMap(Map<String, dynamic> map) {
    return HciStoragePathState(
      customLocationId: map['customLocationId'] == null ? null : pulumi.Output.create<String>(map['customLocationId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

