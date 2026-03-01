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
  GetRbacrolebindingArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> rbacrolebindingId,
    required pulumi.Output<String> scopeId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      rbacrolebindingId = pulumi.Input.asInput<String>(rbacrolebindingId),
      scopeId = pulumi.Input.asInput<String>(scopeId);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rbacrolebindingId: pulumi.Output.create<String>(map['rbacrolebindingId'] as String),
      scopeId: pulumi.Output.create<String>(map['scopeId'] as String),
    );
  }
}

