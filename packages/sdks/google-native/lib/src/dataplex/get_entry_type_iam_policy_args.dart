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
    required pulumi.Output<String> entryTypeId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      entryTypeId = pulumi.Input.asInput<String>(entryTypeId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      entryTypeId: pulumi.Output.create<String>(map['entryTypeId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

