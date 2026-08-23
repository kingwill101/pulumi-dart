// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'energy_service_properties.dart';

/// {@template pulumi_openenergyplatform_energy_service_args_doc}
/// The set of arguments for EnergyService.
/// {@endtemplate}
/// {@macro pulumi_openenergyplatform_energy_service_args_doc}
class EnergyServiceArgs {
  /// Geo-location where the resource lives.
  final pulumi.Input<String>? location;
  final pulumi.Input<EnergyServiceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name.
  final pulumi.Input<String>? resourceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EnergyServiceArgs].
  /// [location] Geo-location where the resource lives.
  /// [properties] Optional.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The resource name.
  /// [tags] Resource tags.
  const EnergyServiceArgs({
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.resourceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<EnergyServiceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory EnergyServiceArgs.fromMap(Map<String, dynamic> map) {
    return EnergyServiceArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnergyServiceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
