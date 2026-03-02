// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_network_config.dart';
import 'worker_pool_private_service_connect.dart';
import 'worker_pool_worker_config.dart';

/// {@template pulumi_cloudbuild_worker_pool_worker_pool_args_doc}
/// The set of arguments for WorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_worker_pool_worker_pool_args_doc}
class WorkerPoolArgs {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  final pulumi.Input<String>? displayName;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// User-defined name of the `WorkerPool`.
  ///
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// Network configuration for the `WorkerPool`. Structure is documented below.
  final pulumi.Input<WorkerPoolNetworkConfig>? networkConfig;
  /// Private Service Connect configuration for the pool.
  final pulumi.Input<WorkerPoolPrivateServiceConnect>? privateServiceConnect;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// Configuration to be used for a creating workers in the `WorkerPool`. Structure is documented below.
  final pulumi.Input<WorkerPoolWorkerConfig>? workerConfig;

  /// Creates a new [WorkerPoolArgs].
  /// [annotations] User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [displayName] A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  /// [location] The location for the resource
  /// [name] User-defined name of the `WorkerPool`.
  /// [networkConfig] Network configuration for the `WorkerPool`. Structure is documented below.
  /// [privateServiceConnect] Private Service Connect configuration for the pool.
  /// [project] The project for the resource
  /// [workerConfig] Configuration to be used for a creating workers in the `WorkerPool`. Structure is documented below.
  WorkerPoolArgs({
    this.annotations,
    this.displayName,
    required this.location,
    this.name,
    this.networkConfig,
    this.privateServiceConnect,
    this.project,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'displayName': ?displayName,
      'location': location,
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<WorkerPoolNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'privateServiceConnect': ?pulumi.Input.mapOptionalInputValue<WorkerPoolPrivateServiceConnect, Map<String, dynamic>>(privateServiceConnect, (value) => value.toMap()),
      'project': ?project,
      'workerConfig': ?pulumi.Input.mapOptionalInputValue<WorkerPoolWorkerConfig, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
    };
  }

  factory WorkerPoolArgs.fromMap(Map<String, dynamic> map) {
    return WorkerPoolArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkConfig: map['networkConfig'] == null ? null : (WorkerPoolNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())).input(),
      privateServiceConnect: map['privateServiceConnect'] == null ? null : (WorkerPoolPrivateServiceConnect.fromMap((map['privateServiceConnect'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      workerConfig: map['workerConfig'] == null ? null : (WorkerPoolWorkerConfig.fromMap((map['workerConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

