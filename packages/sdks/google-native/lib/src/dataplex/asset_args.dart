// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_asset_discovery_spec.dart';
import 'google_cloud_dataplex_v1_asset_resource_spec.dart';

/// {@template pulumi_dataplex_v1_asset_args_doc}
/// The set of arguments for Asset.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_asset_args_doc}
class AssetArgs {
  /// Required. Asset identifier. This ID will be used to generate names such as table names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique within the zone.
  final pulumi.Input<String> assetId;
  /// Optional. Description of the asset.
  final pulumi.Input<String>? description;
  /// Optional. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  final pulumi.Input<GoogleCloudDataplexV1AssetDiscoverySpec>? discoverySpec;
  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;
  /// Optional. User defined labels for the asset.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Specification of the resource that is referenced by this asset.
  final pulumi.Input<GoogleCloudDataplexV1AssetResourceSpec> resourceSpec;
  final pulumi.Input<String>? zone;

  /// Creates a new [AssetArgs].
  /// [assetId] Required. Asset identifier. This ID will be used to generate names such as table names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique within the zone.
  /// [description] Optional. Description of the asset.
  /// [discoverySpec] Optional. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  /// [displayName] Optional. User friendly display name.
  /// [labels] Optional. User defined labels for the asset.
  /// [lakeId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [resourceSpec] Specification of the resource that is referenced by this asset.
  /// [zone] Optional.
  AssetArgs({
    required this.assetId,
    this.description,
    this.discoverySpec,
    this.displayName,
    this.labels,
    required this.lakeId,
    this.location,
    this.project,
    required this.resourceSpec,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetId': assetId,
      'description': ?description,
      'discoverySpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1AssetDiscoverySpec, Map<String, dynamic>>(discoverySpec, (value) => value.toMap()),
      'displayName': ?displayName,
      'labels': ?labels,
      'lakeId': lakeId,
      'location': ?location,
      'project': ?project,
      'resourceSpec': pulumi.Input.mapInputValue<GoogleCloudDataplexV1AssetResourceSpec, Map<String, dynamic>>(resourceSpec, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory AssetArgs.fromMap(Map<String, dynamic> map) {
    return AssetArgs(
      assetId: (map['assetId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      discoverySpec: map['discoverySpec'] == null ? null : (GoogleCloudDataplexV1AssetDiscoverySpec.fromMap((map['discoverySpec'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      lakeId: (map['lakeId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      resourceSpec: (GoogleCloudDataplexV1AssetResourceSpec.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>())).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

