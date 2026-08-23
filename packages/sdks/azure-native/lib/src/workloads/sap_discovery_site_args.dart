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
  const SapDiscoverySiteArgs({
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
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterSiteId: (() { final guardedValue = map['masterSiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrateProjectId: (() { final guardedValue = map['migrateProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sapDiscoverySiteName: (() { final guardedValue = map['sapDiscoverySiteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
