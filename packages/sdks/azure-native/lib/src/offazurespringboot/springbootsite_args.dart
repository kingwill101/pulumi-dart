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
    pulumi.Output<SpringbootsitesModelExtendedLocation>? extendedLocation,
    pulumi.Output<String>? location,
    pulumi.Output<SpringbootsitesProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? springbootsitesName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<SpringbootsitesModelExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<SpringbootsitesProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      springbootsitesName = pulumi.Input.asOptionalInput<String>(springbootsitesName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<SpringbootsitesModelExtendedLocation>(SpringbootsitesModelExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<SpringbootsitesProperties>(SpringbootsitesProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      springbootsitesName: map['springbootsitesName'] == null ? null : pulumi.Output.create<String>(map['springbootsitesName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

