// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_discovery_spec.dart';
import 'asset_resource_spec.dart';

/// {@template pulumi_dataplex_asset_asset_args_doc}
/// The set of arguments for Asset.
/// {@endtemplate}
/// {@macro pulumi_dataplex_asset_asset_args_doc}
class AssetArgs {
  /// The zone for the resource
  final pulumi.Input<String> dataplexZone;
  /// Optional. Description of the asset.
  final pulumi.Input<String>? description;
  /// Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  final pulumi.Input<AssetDiscoverySpec> discoverySpec;
  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;
  /// Optional. User defined labels for the asset.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The lake for the resource
  final pulumi.Input<String> lake;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// The name of the asset.
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// Required. Immutable. Specification of the resource that is referenced by this asset.
  final pulumi.Input<AssetResourceSpec> resourceSpec;

  /// Creates a new [AssetArgs].
  /// [dataplexZone] The zone for the resource
  /// [description] Optional. Description of the asset.
  /// [discoverySpec] Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  /// [displayName] Optional. User friendly display name.
  /// [labels] Optional. User defined labels for the asset.
  /// [lake] The lake for the resource
  /// [location] The location for the resource
  /// [name] The name of the asset.
  /// [project] The project for the resource
  /// [resourceSpec] Required. Immutable. Specification of the resource that is referenced by this asset.
  AssetArgs({
    required pulumi.Output<String> dataplexZone,
    pulumi.Output<String>? description,
    required pulumi.Output<AssetDiscoverySpec> discoverySpec,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> lake,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<AssetResourceSpec> resourceSpec,
  }) :
      dataplexZone = pulumi.Input.asInput<String>(dataplexZone),
      description = pulumi.Input.asOptionalInput<String>(description),
      discoverySpec = pulumi.Input.asInput<AssetDiscoverySpec>(discoverySpec),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lake = pulumi.Input.asInput<String>(lake),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      resourceSpec = pulumi.Input.asInput<AssetResourceSpec>(resourceSpec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataplexZone': dataplexZone,
      'description': ?description,
      'discoverySpec': pulumi.Input.mapInputValue<AssetDiscoverySpec, Map<String, dynamic>>(discoverySpec, (value) => value.toMap()),
      'displayName': ?displayName,
      'labels': ?labels,
      'lake': lake,
      'location': location,
      'name': ?name,
      'project': ?project,
      'resourceSpec': pulumi.Input.mapInputValue<AssetResourceSpec, Map<String, dynamic>>(resourceSpec, (value) => value.toMap()),
    };
  }

  factory AssetArgs.fromMap(Map<String, dynamic> map) {
    return AssetArgs(
      dataplexZone: pulumi.Output.create<String>(map['dataplexZone'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      discoverySpec: pulumi.Output.create<AssetDiscoverySpec>(AssetDiscoverySpec.fromMap((map['discoverySpec'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lake: pulumi.Output.create<String>(map['lake'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resourceSpec: pulumi.Output.create<AssetResourceSpec>(AssetResourceSpec.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>())),
    );
  }
}

