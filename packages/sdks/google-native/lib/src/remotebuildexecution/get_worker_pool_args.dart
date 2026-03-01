// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_remotebuildexecution_v1alpha_get_worker_pool_args_doc}
/// Arguments for getWorkerPool.
/// {@endtemplate}
/// {@macro pulumi_remotebuildexecution_v1alpha_get_worker_pool_args_doc}
class GetWorkerPoolArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workerpoolId;

  /// Creates a new [GetWorkerPoolArgs].
  /// [instanceId] Required.
  /// [project] Optional.
  /// [workerpoolId] Required.
  GetWorkerPoolArgs({
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> workerpoolId,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      project = pulumi.Input.asOptionalInput<String>(project),
      workerpoolId = pulumi.Input.asInput<String>(workerpoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'project': ?project,
      'workerpoolId': workerpoolId,
    };
  }

  factory GetWorkerPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolArgs(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      workerpoolId: pulumi.Output.create<String>(map['workerpoolId'] as String),
    );
  }
}

