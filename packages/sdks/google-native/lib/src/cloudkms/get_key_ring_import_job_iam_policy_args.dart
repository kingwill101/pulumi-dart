// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_get_key_ring_import_job_iam_policy_args_doc}
/// Arguments for getKeyRingImportJobIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_get_key_ring_import_job_iam_policy_args_doc}
class GetKeyRingImportJobIamPolicyArgs {
  final pulumi.Input<String> importJobId;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetKeyRingImportJobIamPolicyArgs].
  /// [importJobId] Required.
  /// [keyRingId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetKeyRingImportJobIamPolicyArgs({
    required this.importJobId,
    required this.keyRingId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importJobId': importJobId,
      'keyRingId': keyRingId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetKeyRingImportJobIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyRingImportJobIamPolicyArgs(
      importJobId: (map['importJobId'] as String).input(),
      keyRingId: (map['keyRingId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

