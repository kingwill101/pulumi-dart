// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_lake_zone_iam_policy_args_doc}
/// Arguments for getLakeZoneIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_lake_zone_iam_policy_args_doc}
class GetLakeZoneIamPolicyArgs {
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetLakeZoneIamPolicyArgs].
  /// [lakeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [zone] Required.
  GetLakeZoneIamPolicyArgs({
    required this.lakeId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakeId': lakeId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetLakeZoneIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeZoneIamPolicyArgs(
      lakeId: (map['lakeId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

