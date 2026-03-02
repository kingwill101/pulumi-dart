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
  EnergyServiceArgs({
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
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (EnergyServiceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

