// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_data_scan_iam_policy_args_doc}
/// Arguments for getDataScanIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_data_scan_iam_policy_args_doc}
class GetDataScanIamPolicyArgs {
  final pulumi.Input<String> dataScanId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataScanIamPolicyArgs].
  /// [dataScanId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDataScanIamPolicyArgs({
    required pulumi.Output<String> dataScanId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      dataScanId = pulumi.Input.asInput<String>(dataScanId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataScanId': dataScanId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDataScanIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataScanIamPolicyArgs(
      dataScanId: pulumi.Output.create<String>(map['dataScanId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

