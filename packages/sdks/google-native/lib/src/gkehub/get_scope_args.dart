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
  GetScopeArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> scopeId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      scopeId = pulumi.Input.asInput<String>(scopeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'scopeId': scopeId,
    };
  }

  factory GetScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      scopeId: pulumi.Output.create<String>(map['scopeId'] as String),
    );
  }
}

