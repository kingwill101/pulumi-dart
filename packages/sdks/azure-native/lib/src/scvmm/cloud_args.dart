// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_scvmm_cloud_args_doc}
/// The set of arguments for Cloud.
/// {@endtemplate}
/// {@macro pulumi_scvmm_cloud_args_doc}
class CloudArgs {
  /// Name of the Cloud.
  final pulumi.Input<String>? cloudName;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Gets or sets the inventory Item ID for the resource.
  final pulumi.Input<String>? inventoryItemId;
  /// Gets or sets the location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Unique ID of the cloud.
  final pulumi.Input<String>? uuid;
  /// ARM Id of the vmmServer resource in which this resource resides.
  final pulumi.Input<String>? vmmServerId;

  /// Creates a new [CloudArgs].
  /// [cloudName] Name of the Cloud.
  /// [extendedLocation] The extended location.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the resource.
  /// [location] Gets or sets the location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags
  /// [uuid] Unique ID of the cloud.
  /// [vmmServerId] ARM Id of the vmmServer resource in which this resource resides.
  CloudArgs({
    this.cloudName,
    required this.extendedLocation,
    this.inventoryItemId,
    this.location,
    required this.resourceGroupName,
    this.tags,
    this.uuid,
    this.vmmServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudName': ?cloudName,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'inventoryItemId': ?inventoryItemId,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'uuid': ?uuid,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory CloudArgs.fromMap(Map<String, dynamic> map) {
    return CloudArgs(
      cloudName: map['cloudName'] == null ? null : (map['cloudName'] as String).input(),
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      inventoryItemId: map['inventoryItemId'] == null ? null : (map['inventoryItemId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
      vmmServerId: map['vmmServerId'] == null ? null : (map['vmmServerId'] as String).input(),
    );
  }
}

