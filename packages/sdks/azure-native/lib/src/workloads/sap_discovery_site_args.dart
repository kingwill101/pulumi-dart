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
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<String>? location,
    pulumi.Output<String>? masterSiteId,
    pulumi.Output<String>? migrateProjectId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sapDiscoverySiteName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      masterSiteId = pulumi.Input.asOptionalInput<String>(masterSiteId),
      migrateProjectId = pulumi.Input.asOptionalInput<String>(migrateProjectId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sapDiscoverySiteName = pulumi.Input.asOptionalInput<String>(sapDiscoverySiteName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      masterSiteId: map['masterSiteId'] == null ? null : pulumi.Output.create<String>(map['masterSiteId'] as String),
      migrateProjectId: map['migrateProjectId'] == null ? null : pulumi.Output.create<String>(map['migrateProjectId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sapDiscoverySiteName: map['sapDiscoverySiteName'] == null ? null : pulumi.Output.create<String>(map['sapDiscoverySiteName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

