// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_get_policy_tag_args_doc}
/// Arguments for getPolicyTag.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_get_policy_tag_args_doc}
class GetPolicyTagArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> policyTagId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taxonomyId;

  /// Creates a new [GetPolicyTagArgs].
  /// [location] Required.
  /// [policyTagId] Required.
  /// [project] Optional.
  /// [taxonomyId] Required.
  GetPolicyTagArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> policyTagId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> taxonomyId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      policyTagId = pulumi.Input.asInput<String>(policyTagId),
      project = pulumi.Input.asOptionalInput<String>(project),
      taxonomyId = pulumi.Input.asInput<String>(taxonomyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'policyTagId': policyTagId,
      'project': ?project,
      'taxonomyId': taxonomyId,
    };
  }

  factory GetPolicyTagArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyTagArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      policyTagId: pulumi.Output.create<String>(map['policyTagId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      taxonomyId: pulumi.Output.create<String>(map['taxonomyId'] as String),
    );
  }
}

