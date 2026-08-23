// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1_get_scope_args_doc}
/// Arguments for getScope.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1_get_scope_args_doc}
class GetScopeArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetScopeArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [scopeId] Required.
  const GetScopeArgs({
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

  factory GetScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
    );
  }
}
