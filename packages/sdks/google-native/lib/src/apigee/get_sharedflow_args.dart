// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_sharedflow_args_doc}
/// Arguments for getSharedflow.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_sharedflow_args_doc}
class GetSharedflowArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> sharedflowId;

  /// Creates a new [GetSharedflowArgs].
  /// [organizationId] Required.
  /// [sharedflowId] Required.
  GetSharedflowArgs({
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> sharedflowId,
  }) :
      organizationId = pulumi.Input.asInput<String>(organizationId),
      sharedflowId = pulumi.Input.asInput<String>(sharedflowId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
      'sharedflowId': sharedflowId,
    };
  }

  factory GetSharedflowArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedflowArgs(
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      sharedflowId: pulumi.Output.create<String>(map['sharedflowId'] as String),
    );
  }
}

