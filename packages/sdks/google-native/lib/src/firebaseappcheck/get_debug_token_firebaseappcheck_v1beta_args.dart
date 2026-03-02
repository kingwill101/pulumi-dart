// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaseappcheck_v1beta_get_debug_token_firebaseappcheck_v1beta_args_doc}
/// Arguments for getDebugToken.
/// {@endtemplate}
/// {@macro pulumi_firebaseappcheck_v1beta_get_debug_token_firebaseappcheck_v1beta_args_doc}
class GetDebugTokenFirebaseappcheckV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> debugTokenId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDebugTokenFirebaseappcheckV1betaArgs].
  /// [appId] Required.
  /// [debugTokenId] Required.
  /// [project] Optional.
  GetDebugTokenFirebaseappcheckV1betaArgs({
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

  factory GetDebugTokenFirebaseappcheckV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetDebugTokenFirebaseappcheckV1betaArgs(
      appId: (map['appId'] as String).input(),
      debugTokenId: (map['debugTokenId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

