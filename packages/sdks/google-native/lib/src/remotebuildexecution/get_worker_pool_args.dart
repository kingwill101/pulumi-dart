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
    required this.instanceId,
    this.project,
    required this.workerpoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'project': ?project,
      'workerpoolId': workerpoolId,
    };
  }

  factory GetWorkerPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolArgs(
      instanceId: (map['instanceId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      workerpoolId: (map['workerpoolId'] as String).input(),
    );
  }
}

