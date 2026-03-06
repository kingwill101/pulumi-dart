// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_remotebuildexecution_admin_v1alpha_autoscale_response.dart';
import 'google_devtools_remotebuildexecution_admin_v1alpha_worker_config_response.dart';

/// Result data returned by getWorkerPool.
class GetWorkerPoolResult {
  /// The autoscale policy to apply on a pool.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscaleResponse autoscale;
  /// Channel specifies the release channel of the pool.
  final String channel;
  /// WorkerPool resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]/workerpools/[POOL_ID]`. name should not be populated when creating a worker pool since it is provided in the `poolId` field.
  final String name;
  /// State of the worker pool.
  final String state;
  /// Specifies the properties, such as machine type and disk size, used for creating workers in a worker pool.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigResponse workerConfig;
  /// The desired number of workers in the worker pool. Must be a value between 0 and 15000.
  final String workerCount;

  /// Creates a new [GetWorkerPoolResult].
  /// [autoscale] The autoscale policy to apply on a pool.
  /// [channel] Channel specifies the release channel of the pool.
  /// [name] WorkerPool resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]/workerpools/[POOL_ID]`. name should not be populated when creating a worker pool since it is provided in the `poolId` field.
  /// [state] State of the worker pool.
  /// [workerConfig] Specifies the properties, such as machine type and disk size, used for creating workers in a worker pool.
  /// [workerCount] The desired number of workers in the worker pool. Must be a value between 0 and 15000.
  const GetWorkerPoolResult({
    required this.autoscale,
    required this.channel,
    required this.name,
    required this.state,
    required this.workerConfig,
    required this.workerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscale': autoscale.toMap(),
      'channel': channel,
      'name': name,
      'state': state,
      'workerConfig': workerConfig.toMap(),
      'workerCount': workerCount,
    };
  }

  factory GetWorkerPoolResult.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolResult(
      autoscale: GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscaleResponse.fromMap((map['autoscale']! as Map).cast<String, dynamic>()),
      channel: map['channel'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      workerConfig: GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigResponse.fromMap((map['workerConfig']! as Map).cast<String, dynamic>()),
      workerCount: map['workerCount'] as String,
    );
  }
}

