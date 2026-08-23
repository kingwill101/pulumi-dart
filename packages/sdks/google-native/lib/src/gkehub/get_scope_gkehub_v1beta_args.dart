// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta_get_scope_gkehub_v1beta_args_doc}
/// Arguments for getScope.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_get_scope_gkehub_v1beta_args_doc}
class GetScopeGkehubV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetScopeGkehubV1betaArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [scopeId] Required.
  const GetScopeGkehubV1betaArgs({
    required this.location,
    this.project,
    required this.scopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'scopeId': scopeId,
    };
  }

  factory GetScopeGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeGkehubV1betaArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
    );
  }
}
