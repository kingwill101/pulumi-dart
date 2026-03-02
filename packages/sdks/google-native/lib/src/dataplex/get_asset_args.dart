// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_asset_args_doc}
/// Arguments for getAsset.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_asset_args_doc}
class GetAssetArgs {
  final pulumi.Input<String> assetId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetAssetArgs].
  /// [assetId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetAssetArgs({
    required this.assetId,
    required this.lakeId,
    required this.location,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetId': assetId,
      'lakeId': lakeId,
      'location': location,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetAssetArgs.fromMap(Map<String, dynamic> map) {
    return GetAssetArgs(
      assetId: (map['assetId'] as String).input(),
      lakeId: (map['lakeId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

