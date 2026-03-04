// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_networkcloud_rack_args_doc}
/// The set of arguments for Rack.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_rack_args_doc}
class RackArgs {
  /// The value that will be used for machines in this rack to represent the availability zones that can be referenced by Hybrid AKS Clusters for node arrangement.
  final pulumi.Input<String> availabilityZone;

  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The free-form description of the rack location. (e.g. “DTN Datacenter, Floor 3, Isle 9, Rack 2B”)
  final pulumi.Input<String> rackLocation;

  /// The name of the rack.
  final pulumi.Input<String>? rackName;

  /// The unique identifier for the rack within Network Cloud cluster. An alternate unique alphanumeric value other than a serial number may be provided if desired.
  final pulumi.Input<String> rackSerialNumber;

  /// The SKU for the rack.
  final pulumi.Input<String> rackSkuId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RackArgs].
  /// [availabilityZone] The value that will be used for machines in this rack to represent the availability zones that can be referenced by Hybrid AKS Clusters for node arrangement.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [location] The geo-location where the resource lives
  /// [rackLocation] The free-form description of the rack location. (e.g. “DTN Datacenter, Floor 3, Isle 9, Rack 2B”)
  /// [rackName] The name of the rack.
  /// [rackSerialNumber] The unique identifier for the rack within Network Cloud cluster. An alternate unique alphanumeric value other than a serial number may be provided if desired.
  /// [rackSkuId] The SKU for the rack.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  RackArgs({
    required this.availabilityZone,
    required this.extendedLocation,
    this.location,
    required this.rackLocation,
    this.rackName,
    required this.rackSerialNumber,
    required this.rackSkuId,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'extendedLocation':
          pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(
            extendedLocation,
            (value) => value.toMap(),
          ),
      'location': ?location,
      'rackLocation': rackLocation,
      'rackName': ?rackName,
      'rackSerialNumber': rackSerialNumber,
      'rackSkuId': rackSkuId,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory RackArgs.fromMap(Map<String, dynamic> map) {
    return RackArgs(
      availabilityZone: pulumi.Input.fromValue(
        map['availabilityZone'] as String,
      ),
      extendedLocation: pulumi.Input.fromValue(
        ExtendedLocation.fromMap(
          (map['extendedLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rackLocation: pulumi.Input.fromValue(map['rackLocation'] as String),
      rackName: (() {
        final guardedValue = map['rackName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rackSerialNumber: pulumi.Input.fromValue(
        map['rackSerialNumber'] as String,
      ),
      rackSkuId: pulumi.Input.fromValue(map['rackSkuId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
