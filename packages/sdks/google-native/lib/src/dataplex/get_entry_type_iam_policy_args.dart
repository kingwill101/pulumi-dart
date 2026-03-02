// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_entry_type_iam_policy_args_doc}
/// Arguments for getEntryTypeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_entry_type_iam_policy_args_doc}
class GetEntryTypeIamPolicyArgs {
  final pulumi.Input<String> entryTypeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntryTypeIamPolicyArgs].
  /// [entryTypeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetEntryTypeIamPolicyArgs({
    required this.entryTypeId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryTypeId': entryTypeId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetEntryTypeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEntryTypeIamPolicyArgs(
      entryTypeId: (map['entryTypeId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

