// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'springbootsites_model_extended_location.dart';
import 'springbootsites_properties.dart';

/// {@template pulumi_offazurespringboot_springbootsite_args_doc}
/// The set of arguments for Springbootsite.
/// {@endtemplate}
/// {@macro pulumi_offazurespringboot_springbootsite_args_doc}
class SpringbootsiteArgs {
  /// The extended location definition.
  final pulumi.Input<SpringbootsitesModelExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The springbootsites resource definition.
  final pulumi.Input<SpringbootsitesProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The springbootsites name.
  final pulumi.Input<String>? springbootsitesName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SpringbootsiteArgs].
  /// [extendedLocation] The extended location definition.
  /// [location] The geo-location where the resource lives
  /// [properties] The springbootsites resource definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [springbootsitesName] The springbootsites name.
  /// [tags] Resource tags.
  const SpringbootsiteArgs({
    this.extendedLocation,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.springbootsitesName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<SpringbootsitesModelExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<SpringbootsitesProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'springbootsitesName': ?springbootsitesName,
      'tags': ?tags,
    };
  }

  factory SpringbootsiteArgs.fromMap(Map<String, dynamic> map) {
    return SpringbootsiteArgs(
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringbootsitesModelExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringbootsitesProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      springbootsitesName: (() { final guardedValue = map['springbootsitesName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

