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
  const GetDebugTokenArgs({
    required this.appId,
    required this.debugTokenId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'debugTokenId': debugTokenId,
      'project': ?project,
    };
  }

  factory GetDebugTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetDebugTokenArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      debugTokenId: pulumi.Input.fromValue(map['debugTokenId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
