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
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            SiteProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteName': ?siteName,
      'tags': ?tags,
    };
  }

  factory HyperVSiteArgs.fromMap(Map<String, dynamic> map) {
    return HyperVSiteArgs(
      eTag: (() {
        final guardedValue = map['eTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SiteProperties.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      siteName: (() {
        final guardedValue = map['siteName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
