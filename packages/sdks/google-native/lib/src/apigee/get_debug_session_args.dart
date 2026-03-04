// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_debug_session_args_doc}
/// Arguments for getDebugSession.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_debug_session_args_doc}
class GetDebugSessionArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> debugsessionId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> revisionId;

  /// Creates a new [GetDebugSessionArgs].
  /// [apiId] Required.
  /// [debugsessionId] Required.
  /// [environmentId] Required.
  /// [organizationId] Required.
  /// [revisionId] Required.
  GetDebugSessionArgs({
    required this.apiId,
    required this.debugsessionId,
    required this.environmentId,
    required this.organizationId,
    required this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'debugsessionId': debugsessionId,
      'environmentId': environmentId,
      'organizationId': organizationId,
      'revisionId': revisionId,
    };
  }

  factory GetDebugSessionArgs.fromMap(Map<String, dynamic> map) {
    return GetDebugSessionArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      debugsessionId: pulumi.Input.fromValue(map['debugsessionId'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      revisionId: pulumi.Input.fromValue(map['revisionId'] as String),
    );
  }
}
