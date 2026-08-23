// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1_get_rbacrolebinding_args_doc}
/// Arguments for getRbacrolebinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1_get_rbacrolebinding_args_doc}
class GetRbacrolebindingArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> rbacrolebindingId;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetRbacrolebindingArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [rbacrolebindingId] Required.
  /// [scopeId] Required.
  const GetRbacrolebindingArgs({
    required this.location,
    this.project,
    required this.rbacrolebindingId,
    required this.scopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'rbacrolebindingId': rbacrolebindingId,
      'scopeId': scopeId,
    };
  }

  factory GetRbacrolebindingArgs.fromMap(Map<String, dynamic> map) {
    return GetRbacrolebindingArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rbacrolebindingId: pulumi.Input.fromValue(map['rbacrolebindingId'] as String),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
    );
  }
}
