// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_lake_asset_iam_policy_args_doc}
/// Arguments for getLakeAssetIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_lake_asset_iam_policy_args_doc}
class GetLakeAssetIamPolicyArgs {
  final pulumi.Input<String> assetId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetLakeAssetIamPolicyArgs].
  /// [assetId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [zone] Required.
  GetLakeAssetIamPolicyArgs({
    required this.assetId,
    required this.lakeId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetId': assetId,
      'lakeId': lakeId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetLakeAssetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeAssetIamPolicyArgs(
      assetId: (map['assetId'] as String).input(),
      lakeId: (map['lakeId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

