// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_network_config.dart';
import 'worker_pool_private_service_connect.dart';
import 'worker_pool_worker_config.dart';

/// Input properties used for looking up and filtering WorkerPool resources.
class WorkerPoolState {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Output only. Time at which the request to create the `WorkerPool` was received.
  final pulumi.Input<String>? createTime;
  /// Output only. Time at which the request to delete the `WorkerPool` was received.
  final pulumi.Input<String>? deleteTime;
  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// The location for the resource
  final pulumi.Input<String>? location;
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
  /// Output only. WorkerPool state. Possible values: STATE_UNSPECIFIED, PENDING, APPROVED, REJECTED, CANCELLED
  final pulumi.Input<String>? state;
  /// Output only. A unique identifier for the `WorkerPool`.
  final pulumi.Input<String>? uid;
  /// Output only. Time at which the request to update the `WorkerPool` was received.
  final pulumi.Input<String>? updateTime;
  /// Configuration to be used for a creating workers in the `WorkerPool`. Structure is documented below.
  final pulumi.Input<WorkerPoolWorkerConfig>? workerConfig;

  /// Creates a new [WorkerPoolState].
  /// [annotations] User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [createTime] Output only. Time at which the request to create the `WorkerPool` was received.
  /// [deleteTime] Output only. Time at which the request to delete the `WorkerPool` was received.
  /// [displayName] A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  /// [effectiveAnnotations] Optional.
  /// [location] The location for the resource
  /// [name] User-defined name of the `WorkerPool`.
  /// [networkConfig] Network configuration for the `WorkerPool`. Structure is documented below.
  /// [privateServiceConnect] Private Service Connect configuration for the pool.
  /// [project] The project for the resource
  /// [state] Output only. WorkerPool state. Possible values: STATE_UNSPECIFIED, PENDING, APPROVED, REJECTED, CANCELLED
  /// [uid] Output only. A unique identifier for the `WorkerPool`.
  /// [updateTime] Output only. Time at which the request to update the `WorkerPool` was received.
  /// [workerConfig] Configuration to be used for a creating workers in the `WorkerPool`. Structure is documented below.
  WorkerPoolState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<WorkerPoolNetworkConfig>? networkConfig,
    pulumi.Output<WorkerPoolPrivateServiceConnect>? privateServiceConnect,
    pulumi.Output<String>? project,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<WorkerPoolWorkerConfig>? workerConfig,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<WorkerPoolNetworkConfig>(networkConfig),
      privateServiceConnect = pulumi.Input.asOptionalInput<WorkerPoolPrivateServiceConnect>(privateServiceConnect),
      project = pulumi.Input.asOptionalInput<String>(project),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      workerConfig = pulumi.Input.asOptionalInput<WorkerPoolWorkerConfig>(workerConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'location': ?location,
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<WorkerPoolNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'privateServiceConnect': ?pulumi.Input.mapOptionalInputValue<WorkerPoolPrivateServiceConnect, Map<String, dynamic>>(privateServiceConnect, (value) => value.toMap()),
      'project': ?project,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'workerConfig': ?pulumi.Input.mapOptionalInputValue<WorkerPoolWorkerConfig, Map<String, dynamic>>(workerConfig, (value) => value.toMap()),
    };
  }

  factory WorkerPoolState.fromMap(Map<String, dynamic> map) {
    return WorkerPoolState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<WorkerPoolNetworkConfig>(WorkerPoolNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      privateServiceConnect: map['privateServiceConnect'] == null ? null : pulumi.Output.create<WorkerPoolPrivateServiceConnect>(WorkerPoolPrivateServiceConnect.fromMap((map['privateServiceConnect'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      workerConfig: map['workerConfig'] == null ? null : pulumi.Output.create<WorkerPoolWorkerConfig>(WorkerPoolWorkerConfig.fromMap((map['workerConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

