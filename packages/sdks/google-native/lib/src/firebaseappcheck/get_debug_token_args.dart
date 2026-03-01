// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaseappcheck_v1_get_debug_token_args_doc}
/// Arguments for getDebugToken.
/// {@endtemplate}
/// {@macro pulumi_firebaseappcheck_v1_get_debug_token_args_doc}
class GetDebugTokenArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> debugTokenId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDebugTokenArgs].
  /// [appId] Required.
  /// [debugTokenId] Required.
  /// [project] Optional.
  GetDebugTokenArgs({
    required pulumi.Output<String> appId,
    required pulumi.Output<String> debugTokenId,
    pulumi.Output<String>? project,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      debugTokenId = pulumi.Input.asInput<String>(debugTokenId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'debugTokenId': debugTokenId,
      'project': ?project,
    };
  }

  factory GetDebugTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetDebugTokenArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      debugTokenId: pulumi.Output.create<String>(map['debugTokenId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

