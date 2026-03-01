// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flux_configuration_blob_storage.dart';
import 'flux_configuration_bucket.dart';
import 'flux_configuration_git_repository.dart';
import 'flux_configuration_kustomization.dart';

/// {@template pulumi_arckubernetes_flux_configuration_flux_configuration_args_doc}
/// The set of arguments for FluxConfiguration.
/// {@endtemplate}
/// {@macro pulumi_arckubernetes_flux_configuration_flux_configuration_args_doc}
class FluxConfigurationArgs {
  /// An `blob_storage` block as defined below.
  final pulumi.Input<FluxConfigurationBlobStorage>? blobStorage;
  /// A `bucket` block as defined below.
  final pulumi.Input<FluxConfigurationBucket>? bucket;
  /// Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String> clusterId;
  /// Whether the configuration will keep its reconciliation of its kustomizations and sources with the repository. Defaults to `true`.
  final pulumi.Input<bool>? continuousReconciliationEnabled;
  /// A `git_repository` block as defined below.
  final pulumi.Input<FluxConfigurationGitRepository>? gitRepository;
  /// A `kustomizations` block as defined below.
  final pulumi.Input<List<FluxConfigurationKustomization>> kustomizations;
  /// Specifies the name which should be used for this Arc Kubernetes Flux Configuration. Changing this forces a new Arc Kubernetes Flux Configuration to be created.
  final pulumi.Input<String>? name;
  /// Specifies the namespace to which this configuration is installed to. Changing this forces a new Arc Kubernetes Flux Configuration to be created.
  final pulumi.Input<String> namespace;
  /// Specifies the scope at which the operator will be installed. Possible values are `cluster` and `namespace`. Defaults to `namespace`. Changing this forces a new Arc Kubernetes Flux Configuration to be created.
  final pulumi.Input<String>? scope;

  /// Creates a new [FluxConfigurationArgs].
  /// [blobStorage] An `blob_storage` block as defined below.
  /// [bucket] A `bucket` block as defined below.
  /// [clusterId] Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [continuousReconciliationEnabled] Whether the configuration will keep its reconciliation of its kustomizations and sources with the repository. Defaults to `true`.
  /// [gitRepository] A `git_repository` block as defined below.
  /// [kustomizations] A `kustomizations` block as defined below.
  /// [name] Specifies the name which should be used for this Arc Kubernetes Flux Configuration. Changing this forces a new Arc Kubernetes Flux Configuration to be created.
  /// [namespace] Specifies the namespace to which this configuration is installed to. Changing this forces a new Arc Kubernetes Flux Configuration to be created.
  /// [scope] Specifies the scope at which the operator will be installed. Possible values are `cluster` and `namespace`. Defaults to `namespace`. Changing this forces a new Arc Kubernetes Flux Configuration to be created.
  FluxConfigurationArgs({
    pulumi.Output<FluxConfigurationBlobStorage>? blobStorage,
    pulumi.Output<FluxConfigurationBucket>? bucket,
    required pulumi.Output<String> clusterId,
    pulumi.Output<bool>? continuousReconciliationEnabled,
    pulumi.Output<FluxConfigurationGitRepository>? gitRepository,
    required pulumi.Output<List<FluxConfigurationKustomization>> kustomizations,
    pulumi.Output<String>? name,
    required pulumi.Output<String> namespace,
    pulumi.Output<String>? scope,
  }) :
      blobStorage = pulumi.Input.asOptionalInput<FluxConfigurationBlobStorage>(blobStorage),
      bucket = pulumi.Input.asOptionalInput<FluxConfigurationBucket>(bucket),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      continuousReconciliationEnabled = pulumi.Input.asOptionalInput<bool>(continuousReconciliationEnabled),
      gitRepository = pulumi.Input.asOptionalInput<FluxConfigurationGitRepository>(gitRepository),
      kustomizations = pulumi.Input.asInput<List<FluxConfigurationKustomization>>(kustomizations),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespace = pulumi.Input.asInput<String>(namespace),
      scope = pulumi.Input.asOptionalInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobStorage': ?pulumi.Input.mapOptionalInputValue<FluxConfigurationBlobStorage, Map<String, dynamic>>(blobStorage, (value) => value.toMap()),
      'bucket': ?pulumi.Input.mapOptionalInputValue<FluxConfigurationBucket, Map<String, dynamic>>(bucket, (value) => value.toMap()),
      'clusterId': clusterId,
      'continuousReconciliationEnabled': ?continuousReconciliationEnabled,
      'gitRepository': ?pulumi.Input.mapOptionalInputValue<FluxConfigurationGitRepository, Map<String, dynamic>>(gitRepository, (value) => value.toMap()),
      'kustomizations': pulumi.Input.mapInputValue<List<FluxConfigurationKustomization>, List<Map<String, dynamic>>>(kustomizations, (value) => pulumi.Input.encodeList<FluxConfigurationKustomization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'namespace': namespace,
      'scope': ?scope,
    };
  }

  factory FluxConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return FluxConfigurationArgs(
      blobStorage: map['blobStorage'] == null ? null : pulumi.Output.create<FluxConfigurationBlobStorage>(FluxConfigurationBlobStorage.fromMap((map['blobStorage'] as Map).cast<String, dynamic>())),
      bucket: map['bucket'] == null ? null : pulumi.Output.create<FluxConfigurationBucket>(FluxConfigurationBucket.fromMap((map['bucket'] as Map).cast<String, dynamic>())),
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      continuousReconciliationEnabled: map['continuousReconciliationEnabled'] == null ? null : pulumi.Output.create<bool>(map['continuousReconciliationEnabled'] as bool),
      gitRepository: map['gitRepository'] == null ? null : pulumi.Output.create<FluxConfigurationGitRepository>(FluxConfigurationGitRepository.fromMap((map['gitRepository'] as Map).cast<String, dynamic>())),
      kustomizations: pulumi.Output.create<List<FluxConfigurationKustomization>>(pulumi.Input.decodeList<FluxConfigurationKustomization>(map['kustomizations'], (value) => FluxConfigurationKustomization.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespace: pulumi.Output.create<String>(map['namespace'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

