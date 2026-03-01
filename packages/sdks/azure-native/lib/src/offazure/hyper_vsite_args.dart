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
    pulumi.Output<String>? eTag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<SiteProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? siteName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<SiteProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asOptionalInput<String>(siteName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<SiteProperties>(SiteProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteName: map['siteName'] == null ? null : pulumi.Output.create<String>(map['siteName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

