// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_get_scope_iam_policy_gkehub_v1alpha_args_doc}
/// Arguments for getScopeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_get_scope_iam_policy_gkehub_v1alpha_args_doc}
class GetScopeIamPolicyGkehubV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetScopeIamPolicyGkehubV1alphaArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [scopeId] Required.
  GetScopeIamPolicyGkehubV1alphaArgs({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.scopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'scopeId': scopeId,
    };
  }

  factory GetScopeIamPolicyGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeIamPolicyGkehubV1alphaArgs(
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      scopeId: (map['scopeId'] as String).input(),
    );
  }
}

