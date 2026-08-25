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
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  final pulumi.Input<String?>? displayName;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// User-defined name of the `WorkerPool`.
  ///
  ///
  /// - - -
  final pulumi.Input<String?>? name;
  /// Network configuration for the `WorkerPool`. Structure is documented below.
  final pulumi.Input<WorkerPoolNetworkConfig?>? networkConfig;
  /// Private Service Connect configuration for the pool.
  final pulumi.Input<WorkerPoolPrivateServiceConnect?>? privateServiceConnect;
  /// The project for the resource
  final pulumi.Input<String?>? project;
  /// Configuration to be used for a creating workers in the `WorkerPool`. Structure is documented below.
  final pulumi.Input<WorkerPoolWorkerConfig?>? workerConfig;

  /// Creates a new [WorkerPoolArgs].
  /// [annotations] User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [displayName] A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  /// [location] The location for the resource
  /// [name] User-defined name of the `WorkerPool`.
  /// [networkConfig] Network configuration for the `WorkerPool`. Structure is documented below.
  /// [privateServiceConnect] Private Service Connect configuration for the pool.
  /// [project] The project for the resource
  /// [workerConfig] Configuration to be used for a creating workers in the `WorkerPool`. Structure is documented below.
  const WorkerPoolArgs({
    this.annotations,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPoolNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateServiceConnect: (() { final guardedValue = map['privateServiceConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPoolPrivateServiceConnect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerConfig: (() { final guardedValue = map['workerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPoolWorkerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
