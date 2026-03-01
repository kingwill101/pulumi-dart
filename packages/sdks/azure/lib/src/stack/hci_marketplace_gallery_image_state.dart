// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_marketplace_gallery_image_identifier.dart';

/// Input properties used for looking up and filtering HciMarketplaceGalleryImage resources.
class HciMarketplaceGalleryImageState {
  /// The ID of the Custom Location where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? customLocationId;
  /// The hypervisor generation of the Azure Stack HCI Marketplace Gallery Image. Possible values are `V1` and `V2`. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String>? hypervGeneration;
  /// An `identifier` block as defined below. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<HciMarketplaceGalleryImageIdentifier>? identifier;
  /// The Azure Region where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String>? name;
  /// The Operating System type of the Azure Stack HCI Marketplace Gallery Image. Possible values are `Windows` and `Linux`. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String>? osType;
  /// The name of the Resource Group where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the Azure Stack HCI Storage Path used for this Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<String>? storagePathId;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Marketplace Gallery Image.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version of the Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String>? version;

  /// Creates a new [HciMarketplaceGalleryImageState].
  /// [customLocationId] The ID of the Custom Location where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new resource to be created.
  /// [hypervGeneration] The hypervisor generation of the Azure Stack HCI Marketplace Gallery Image. Possible values are `V1` and `V2`. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [identifier] An `identifier` block as defined below. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [location] The Azure Region where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [name] The name which should be used for this Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [osType] The Operating System type of the Azure Stack HCI Marketplace Gallery Image. Possible values are `Windows` and `Linux`. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  /// [storagePathId] The ID of the Azure Stack HCI Storage Path used for this Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Stack HCI Marketplace Gallery Image.
  /// [version] The version of the Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  HciMarketplaceGalleryImageState({
    pulumi.Output<String>? customLocationId,
    pulumi.Output<String>? hypervGeneration,
    pulumi.Output<HciMarketplaceGalleryImageIdentifier>? identifier,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? osType,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? storagePathId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      customLocationId = pulumi.Input.asOptionalInput<String>(customLocationId),
      hypervGeneration = pulumi.Input.asOptionalInput<String>(hypervGeneration),
      identifier = pulumi.Input.asOptionalInput<HciMarketplaceGalleryImageIdentifier>(identifier),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      storagePathId = pulumi.Input.asOptionalInput<String>(storagePathId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': ?customLocationId,
      'hypervGeneration': ?hypervGeneration,
      'identifier': ?pulumi.Input.mapOptionalInputValue<HciMarketplaceGalleryImageIdentifier, Map<String, dynamic>>(identifier, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'osType': ?osType,
      'resourceGroupName': ?resourceGroupName,
      'storagePathId': ?storagePathId,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory HciMarketplaceGalleryImageState.fromMap(Map<String, dynamic> map) {
    return HciMarketplaceGalleryImageState(
      customLocationId: map['customLocationId'] == null ? null : pulumi.Output.create<String>(map['customLocationId'] as String),
      hypervGeneration: map['hypervGeneration'] == null ? null : pulumi.Output.create<String>(map['hypervGeneration'] as String),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<HciMarketplaceGalleryImageIdentifier>(HciMarketplaceGalleryImageIdentifier.fromMap((map['identifier'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storagePathId: map['storagePathId'] == null ? null : pulumi.Output.create<String>(map['storagePathId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

