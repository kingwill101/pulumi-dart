// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta_get_scope_iam_policy_gkehub_v1beta_args_doc}
/// Arguments for getScopeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_get_scope_iam_policy_gkehub_v1beta_args_doc}
class GetScopeIamPolicyGkehubV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetScopeIamPolicyGkehubV1betaArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [scopeId] Required.
  const GetScopeIamPolicyGkehubV1betaArgs({
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

  factory GetScopeIamPolicyGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeIamPolicyGkehubV1betaArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
    );
  }
}
