// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_marketplace_gallery_image_identifier.dart';

/// {@template pulumi_stack_hci_marketplace_gallery_image_hci_marketplace_gallery_image_args_doc}
/// The set of arguments for HciMarketplaceGalleryImage.
/// {@endtemplate}
/// {@macro pulumi_stack_hci_marketplace_gallery_image_hci_marketplace_gallery_image_args_doc}
class HciMarketplaceGalleryImageArgs {
  /// The ID of the Custom Location where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> customLocationId;

  /// The hypervisor generation of the Azure Stack HCI Marketplace Gallery Image. Possible values are `V1` and `V2`. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String> hypervGeneration;

  /// An `identifier` block as defined below. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<HciMarketplaceGalleryImageIdentifier> identifier;

  /// The Azure Region where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String>? location;

  /// The name which should be used for this Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String>? name;

  /// The Operating System type of the Azure Stack HCI Marketplace Gallery Image. Possible values are `Windows` and `Linux`. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String> osType;

  /// The name of the Resource Group where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String> resourceGroupName;

  /// The ID of the Azure Stack HCI Storage Path used for this Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<String>? storagePathId;

  /// A mapping of tags which should be assigned to the Azure Stack HCI Marketplace Gallery Image.
  final pulumi.Input<Map<String, String>>? tags;

  /// The version of the Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  final pulumi.Input<String> version;

  /// Creates a new [HciMarketplaceGalleryImageArgs].
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
  HciMarketplaceGalleryImageArgs({
    required this.customLocationId,
    required this.hypervGeneration,
    required this.identifier,
    this.location,
    this.name,
    required this.osType,
    required this.resourceGroupName,
    this.storagePathId,
    this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': customLocationId,
      'hypervGeneration': hypervGeneration,
      'identifier':
          pulumi.Input.mapInputValue<
            HciMarketplaceGalleryImageIdentifier,
            Map<String, dynamic>
          >(identifier, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'osType': osType,
      'resourceGroupName': resourceGroupName,
      'storagePathId': ?storagePathId,
      'tags': ?tags,
      'version': version,
    };
  }

  factory HciMarketplaceGalleryImageArgs.fromMap(Map<String, dynamic> map) {
    return HciMarketplaceGalleryImageArgs(
      customLocationId: pulumi.Input.fromValue(
        map['customLocationId'] as String,
      ),
      hypervGeneration: pulumi.Input.fromValue(
        map['hypervGeneration'] as String,
      ),
      identifier: pulumi.Input.fromValue(
        HciMarketplaceGalleryImageIdentifier.fromMap(
          (map['identifier']! as Map).cast<String, dynamic>(),
        ),
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osType: pulumi.Input.fromValue(map['osType'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      storagePathId: (() {
        final guardedValue = map['storagePathId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
