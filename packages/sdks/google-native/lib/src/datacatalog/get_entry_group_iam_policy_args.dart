// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_get_entry_group_iam_policy_args_doc}
/// Arguments for getEntryGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_get_entry_group_iam_policy_args_doc}
class GetEntryGroupIamPolicyArgs {
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntryGroupIamPolicyArgs].
  /// [entryGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEntryGroupIamPolicyArgs({
    required pulumi.Output<String> entryGroupId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      entryGroupId = pulumi.Input.asInput<String>(entryGroupId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryGroupId': entryGroupId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEntryGroupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEntryGroupIamPolicyArgs(
      entryGroupId: pulumi.Output.create<String>(map['entryGroupId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

