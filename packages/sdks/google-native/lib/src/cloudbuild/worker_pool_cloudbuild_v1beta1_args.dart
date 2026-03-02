// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_config_cloudbuild_v1beta1.dart';
import 'worker_config_cloudbuild_v1beta1.dart';

/// {@template pulumi_cloudbuild_v1beta1_worker_pool_cloudbuild_v1beta1_args_doc}
/// The set of arguments for WorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1beta1_worker_pool_cloudbuild_v1beta1_args_doc}
class WorkerPoolCloudbuildV1beta1Args {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final pulumi.Input<Map<String, String>>? annotations;
  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  /// Network configuration for the `WorkerPool`.
  final pulumi.Input<NetworkConfigCloudbuildV1beta1>? networkConfig;
  final pulumi.Input<String>? project;
  /// Worker configuration for the `WorkerPool`.
  final pulumi.Input<WorkerConfigCloudbuildV1beta1>? workerConfig;
  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  final pulumi.Input<String> workerPoolId;

  /// Creates a new [WorkerPoolCloudbuildV1beta1Args].
  /// [annotations] User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [displayName] A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  /// [location] Optional.
  /// [networkConfig] Network configuration for the `WorkerPool`.
  /// [project] Optional.
  /// [workerConfig] Worker configuration for the `WorkerPool`.
  /// [workerPoolId] Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  WorkerPoolCloudbuildV1beta1Args({
    this.annotations,
    this.displayName,
    this.location,
    this.networkConfig,
    this.project,
    this.workerConfig,
    required this.workerPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'displayName': ?displayName,
      'location': ?location,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<NetworkConfigCloudbuildV1beta1, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'project': ?project,
      'workerConfig': ?pulumi.Input.mapOptionalInputValue<WorkerConfigCloudbuildV1beta1, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
      'workerPoolId': workerPoolId,
    };
  }

  factory WorkerPoolCloudbuildV1beta1Args.fromMap(Map<String, dynamic> map) {
    return WorkerPoolCloudbuildV1beta1Args(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkConfig: map['networkConfig'] == null ? null : (NetworkConfigCloudbuildV1beta1.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      workerConfig: map['workerConfig'] == null ? null : (WorkerConfigCloudbuildV1beta1.fromMap((map['workerConfig']! as Map).cast<String, dynamic>())).input(),
      workerPoolId: (map['workerPoolId'] as String).input(),
    );
  }
}

