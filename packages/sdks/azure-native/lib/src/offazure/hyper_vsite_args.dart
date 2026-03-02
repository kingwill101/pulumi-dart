// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_properties.dart';

/// {@template pulumi_offazure_hyper_vsite_args_doc}
/// The set of arguments for HyperVSite.
/// {@endtemplate}
/// {@macro pulumi_offazure_hyper_vsite_args_doc}
class HyperVSiteArgs {
  /// eTag for concurrency control.
  final pulumi.Input<String>? eTag;
  /// Azure location in which Sites is created.
  final pulumi.Input<String>? location;
  /// Name of the Hyper-V site.
  final pulumi.Input<String>? name;
  /// Nested properties of Hyper-V site.
  final pulumi.Input<SiteProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name.
  final pulumi.Input<String>? siteName;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HyperVSiteArgs].
  /// [eTag] eTag for concurrency control.
  /// [location] Azure location in which Sites is created.
  /// [name] Name of the Hyper-V site.
  /// [properties] Nested properties of Hyper-V site.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name.
  /// [tags] Optional.
  HyperVSiteArgs({
    this.eTag,
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.siteName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<SiteProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteName': ?siteName,
      'tags': ?tags,
    };
  }

  factory HyperVSiteArgs.fromMap(Map<String, dynamic> map) {
    return HyperVSiteArgs(
      eTag: map['eTag'] == null ? null : (map['eTag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (SiteProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteName: map['siteName'] == null ? null : (map['siteName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

