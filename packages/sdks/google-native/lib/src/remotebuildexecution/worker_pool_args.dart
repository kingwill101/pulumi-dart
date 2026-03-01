// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_remotebuildexecution_admin_v1alpha_autoscale.dart';
import 'google_devtools_remotebuildexecution_admin_v1alpha_worker_config.dart';

/// {@template pulumi_remotebuildexecution_v1alpha_worker_pool_args_doc}
/// The set of arguments for WorkerPool.
/// {@endtemplate}
/// {@macro pulumi_remotebuildexecution_v1alpha_worker_pool_args_doc}
class WorkerPoolArgs {
  /// The autoscale policy to apply on a pool.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale>? autoscale;
  /// Channel specifies the release channel of the pool.
  final pulumi.Input<String>? channel;
  final pulumi.Input<String> instanceId;
  /// WorkerPool resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]/workerpools/[POOL_ID]`. name should not be populated when creating a worker pool since it is provided in the `poolId` field.
  final pulumi.Input<String>? name;
  /// Resource name of the instance in which to create the new worker pool. Format: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]`.
  final pulumi.Input<String>? parent;
  /// ID of the created worker pool. A valid pool ID must: be 6-50 characters long, contain only lowercase letters, digits, hyphens and underscores, start with a lowercase letter, and end with a lowercase letter or a digit.
  final pulumi.Input<String>? poolId;
  final pulumi.Input<String>? project;
  /// Specifies the properties, such as machine type and disk size, used for creating workers in a worker pool.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig>? workerConfig;
  /// The desired number of workers in the worker pool. Must be a value between 0 and 15000.
  final pulumi.Input<String>? workerCount;

  /// Creates a new [WorkerPoolArgs].
  /// [autoscale] The autoscale policy to apply on a pool.
  /// [channel] Channel specifies the release channel of the pool.
  /// [instanceId] Required.
  /// [name] WorkerPool resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]/workerpools/[POOL_ID]`. name should not be populated when creating a worker pool since it is provided in the `poolId` field.
  /// [parent] Resource name of the instance in which to create the new worker pool. Format: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]`.
  /// [poolId] ID of the created worker pool. A valid pool ID must: be 6-50 characters long, contain only lowercase letters, digits, hyphens and underscores, start with a lowercase letter, and end with a lowercase letter or a digit.
  /// [project] Optional.
  /// [workerConfig] Specifies the properties, such as machine type and disk size, used for creating workers in a worker pool.
  /// [workerCount] The desired number of workers in the worker pool. Must be a value between 0 and 15000.
  WorkerPoolArgs({
    pulumi.Output<GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale>? autoscale,
    pulumi.Output<String>? channel,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? poolId,
    pulumi.Output<String>? project,
    pulumi.Output<GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig>? workerConfig,
    pulumi.Output<String>? workerCount,
  }) :
      autoscale = pulumi.Input.asOptionalInput<GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale>(autoscale),
      channel = pulumi.Input.asOptionalInput<String>(channel),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      poolId = pulumi.Input.asOptionalInput<String>(poolId),
      project = pulumi.Input.asOptionalInput<String>(project),
      workerConfig = pulumi.Input.asOptionalInput<GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig>(workerConfig),
      workerCount = pulumi.Input.asOptionalInput<String>(workerCount);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscale': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale, Map<String, dynamic>>(autoscale, (value) => value.toMap()),
      'channel': ?channel,
      'instanceId': instanceId,
      'name': ?name,
      'parent': ?parent,
      'poolId': ?poolId,
      'project': ?project,
      'workerConfig': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
      'workerCount': ?workerCount,
    };
  }

  factory WorkerPoolArgs.fromMap(Map<String, dynamic> map) {
    return WorkerPoolArgs(
      autoscale: map['autoscale'] == null ? null : pulumi.Output.create<GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale>(GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale.fromMap((map['autoscale'] as Map).cast<String, dynamic>())),
      channel: map['channel'] == null ? null : pulumi.Output.create<String>(map['channel'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      poolId: map['poolId'] == null ? null : pulumi.Output.create<String>(map['poolId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      workerConfig: map['workerConfig'] == null ? null : pulumi.Output.create<GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig>(GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig.fromMap((map['workerConfig'] as Map).cast<String, dynamic>())),
      workerCount: map['workerCount'] == null ? null : pulumi.Output.create<String>(map['workerCount'] as String),
    );
  }
}

