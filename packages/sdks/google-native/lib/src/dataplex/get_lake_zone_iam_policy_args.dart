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
    required pulumi.Output<String> lakeId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> zone,
  }) :
      lakeId = pulumi.Input.asInput<String>(lakeId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asInput<String>(zone);

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
      lakeId: pulumi.Output.create<String>(map['lakeId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

