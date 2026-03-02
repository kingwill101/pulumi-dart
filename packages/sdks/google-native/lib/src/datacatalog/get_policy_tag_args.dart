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
    required this.location,
    required this.policyTagId,
    this.project,
    required this.taxonomyId,
  });

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
      location: (map['location'] as String).input(),
      policyTagId: (map['policyTagId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      taxonomyId: (map['taxonomyId'] as String).input(),
    );
  }
}

