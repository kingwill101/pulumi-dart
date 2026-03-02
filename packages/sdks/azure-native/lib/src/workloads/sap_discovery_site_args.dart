// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_workloads_sap_discovery_site_args_doc}
/// The set of arguments for SapDiscoverySite.
/// {@endtemplate}
/// {@macro pulumi_workloads_sap_discovery_site_args_doc}
class SapDiscoverySiteArgs {
  /// The extended location definition.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The master site ID from Azure Migrate.
  final pulumi.Input<String>? masterSiteId;
  /// The migrate project ID from Azure Migrate.
  final pulumi.Input<String>? migrateProjectId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the discovery site resource for SAP Migration.
  final pulumi.Input<String>? sapDiscoverySiteName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SapDiscoverySiteArgs].
  /// [extendedLocation] The extended location definition.
  /// [location] The geo-location where the resource lives
  /// [masterSiteId] The master site ID from Azure Migrate.
  /// [migrateProjectId] The migrate project ID from Azure Migrate.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapDiscoverySiteName] The name of the discovery site resource for SAP Migration.
  /// [tags] Resource tags.
  SapDiscoverySiteArgs({
    this.extendedLocation,
    this.location,
    this.masterSiteId,
    this.migrateProjectId,
    required this.resourceGroupName,
    this.sapDiscoverySiteName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'masterSiteId': ?masterSiteId,
      'migrateProjectId': ?migrateProjectId,
      'resourceGroupName': resourceGroupName,
      'sapDiscoverySiteName': ?sapDiscoverySiteName,
      'tags': ?tags,
    };
  }

  factory SapDiscoverySiteArgs.fromMap(Map<String, dynamic> map) {
    return SapDiscoverySiteArgs(
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      masterSiteId: map['masterSiteId'] == null ? null : (map['masterSiteId'] as String).input(),
      migrateProjectId: map['migrateProjectId'] == null ? null : (map['migrateProjectId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sapDiscoverySiteName: map['sapDiscoverySiteName'] == null ? null : (map['sapDiscoverySiteName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

