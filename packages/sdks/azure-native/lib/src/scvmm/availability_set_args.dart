// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_scvmm_availability_set_args_doc}
/// The set of arguments for AvailabilitySet.
/// {@endtemplate}
/// {@macro pulumi_scvmm_availability_set_args_doc}
class AvailabilitySetArgs {
  /// Name of the availability set.
  final pulumi.Input<String>? availabilitySetName;
  /// The extended location.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Gets or sets the location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// ARM Id of the vmmServer resource in which this resource resides.
  final pulumi.Input<String>? vmmServerId;

  /// Creates a new [AvailabilitySetArgs].
  /// [availabilitySetName] Name of the availability set.
  /// [extendedLocation] The extended location.
  /// [location] Gets or sets the location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags
  /// [vmmServerId] ARM Id of the vmmServer resource in which this resource resides.
  const AvailabilitySetArgs({
    this.availabilitySetName,
    this.extendedLocation,
    this.location,
    required this.resourceGroupName,
    this.tags,
    this.vmmServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory AvailabilitySetArgs.fromMap(Map<String, dynamic> map) {
    return AvailabilitySetArgs(
      availabilitySetName: (() { final guardedValue = map['availabilitySetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vmmServerId: (() { final guardedValue = map['vmmServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
