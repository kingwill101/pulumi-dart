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
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> debugsessionId,
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> revisionId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      debugsessionId = pulumi.Input.asInput<String>(debugsessionId),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      revisionId = pulumi.Input.asInput<String>(revisionId);

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
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      debugsessionId: pulumi.Output.create<String>(map['debugsessionId'] as String),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      revisionId: pulumi.Output.create<String>(map['revisionId'] as String),
    );
  }
}

