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
  SpringbootsiteArgs({
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
      extendedLocation: map['extendedLocation'] == null ? null : (SpringbootsitesModelExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (SpringbootsitesProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      springbootsitesName: map['springbootsitesName'] == null ? null : (map['springbootsitesName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

