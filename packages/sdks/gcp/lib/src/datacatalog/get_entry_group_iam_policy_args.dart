// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_get_entry_group_iam_policy_get_entry_group_iam_policy_args_doc}
/// Arguments for getEntryGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_get_entry_group_iam_policy_get_entry_group_iam_policy_args_doc}
class GetEntryGroupIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> entryGroup;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;
  /// EntryGroup location region.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetEntryGroupIamPolicyArgs].
  /// [entryGroup] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [region] EntryGroup location region.
  const GetEntryGroupIamPolicyArgs({
    required this.entryGroup,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryGroup': entryGroup,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetEntryGroupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEntryGroupIamPolicyArgs(
      entryGroup: pulumi.Input.fromValue(map['entryGroup'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
