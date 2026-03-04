// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_sites_properties_global_communications_site.dart';

/// {@template pulumi_orbital_edge_site_args_doc}
/// The set of arguments for EdgeSite.
/// {@endtemplate}
/// {@macro pulumi_orbital_edge_site_args_doc}
class EdgeSiteArgs {
  /// Edge site name.
  final pulumi.Input<String>? edgeSiteName;

  /// A reference to global communications site.
  final pulumi.Input<EdgeSitesPropertiesGlobalCommunicationsSite>
  globalCommunicationsSite;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EdgeSiteArgs].
  /// [edgeSiteName] Edge site name.
  /// [globalCommunicationsSite] A reference to global communications site.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  EdgeSiteArgs({
    this.edgeSiteName,
    required this.globalCommunicationsSite,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeSiteName': ?edgeSiteName,
      'globalCommunicationsSite':
          pulumi.Input.mapInputValue<
            EdgeSitesPropertiesGlobalCommunicationsSite,
            Map<String, dynamic>
          >(globalCommunicationsSite, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EdgeSiteArgs.fromMap(Map<String, dynamic> map) {
    return EdgeSiteArgs(
      edgeSiteName: (() {
        final guardedValue = map['edgeSiteName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      globalCommunicationsSite: pulumi.Input.fromValue(
        EdgeSitesPropertiesGlobalCommunicationsSite.fromMap(
          (map['globalCommunicationsSite']! as Map).cast<String, dynamic>(),
        ),
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
