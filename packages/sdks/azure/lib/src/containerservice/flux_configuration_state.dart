// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flux_configuration_blob_storage.dart';
import 'flux_configuration_bucket.dart';
import 'flux_configuration_git_repository.dart';
import 'flux_configuration_kustomization.dart';

/// Input properties used for looking up and filtering FluxConfiguration resources.
class FluxConfigurationState {
  /// An `blob_storage` block as defined below.
  final pulumi.Input<FluxConfigurationBlobStorage>? blobStorage;
  /// A `bucket` block as defined below.
  final pulumi.Input<FluxConfigurationBucket>? bucket;
  /// Specifies the Cluster ID. Changing this forces a new Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? clusterId;
  /// Whether the configuration will keep its reconciliation of its kustomizations and sources with the repository. Defaults to `true`.
  final pulumi.Input<bool>? continuousReconciliationEnabled;
  /// A `git_repository` block as defined below.
  final pulumi.Input<FluxConfigurationGitRepository>? gitRepository;
  /// A `kustomizations` block as defined below.
  final pulumi.Input<List<FluxConfigurationKustomization>>? kustomizations;
  /// Specifies the name which should be used for this Kubernetes Flux Configuration. Changing this forces a new Kubernetes Flux Configuration to be created.
  final pulumi.Input<String>? name;
  /// Specifies the namespace to which this configuration is installed to. Changing this forces a new Kubernetes Flux Configuration to be created.
  final pulumi.Input<String>? namespace;
  /// Specifies the scope at which the operator will be installed. Possible values are `cluster` and `namespace`. Defaults to `namespace`. Changing this forces a new Kubernetes Flux Configuration to be created.
  final pulumi.Input<String>? scope;

  /// Creates a new [FluxConfigurationState].
  /// [blobStorage] An `blob_storage` block as defined below.
  /// [bucket] A `bucket` block as defined below.
  /// [clusterId] Specifies the Cluster ID. Changing this forces a new Kubernetes Cluster Extension to be created.
  /// [continuousReconciliationEnabled] Whether the configuration will keep its reconciliation of its kustomizations and sources with the repository. Defaults to `true`.
  /// [gitRepository] A `git_repository` block as defined below.
  /// [kustomizations] A `kustomizations` block as defined below.
  /// [name] Specifies the name which should be used for this Kubernetes Flux Configuration. Changing this forces a new Kubernetes Flux Configuration to be created.
  /// [namespace] Specifies the namespace to which this configuration is installed to. Changing this forces a new Kubernetes Flux Configuration to be created.
  /// [scope] Specifies the scope at which the operator will be installed. Possible values are `cluster` and `namespace`. Defaults to `namespace`. Changing this forces a new Kubernetes Flux Configuration to be created.
  FluxConfigurationState({
    this.blobStorage,
    this.bucket,
    this.clusterId,
    this.continuousReconciliationEnabled,
    this.gitRepository,
    this.kustomizations,
    this.name,
    this.namespace,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobStorage': ?pulumi.Input.mapOptionalInputValue<FluxConfigurationBlobStorage, Map<String, dynamic>>(blobStorage, (value) => value.toMap()),
      'bucket': ?pulumi.Input.mapOptionalInputValue<FluxConfigurationBucket, Map<String, dynamic>>(bucket, (value) => value.toMap()),
      'clusterId': ?clusterId,
      'continuousReconciliationEnabled': ?continuousReconciliationEnabled,
      'gitRepository': ?pulumi.Input.mapOptionalInputValue<FluxConfigurationGitRepository, Map<String, dynamic>>(gitRepository, (value) => value.toMap()),
      'kustomizations': ?pulumi.Input.mapOptionalInputValue<List<FluxConfigurationKustomization>, List<Map<String, dynamic>>>(kustomizations, (value) => pulumi.Input.encodeList<FluxConfigurationKustomization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'namespace': ?namespace,
      'scope': ?scope,
    };
  }

  factory FluxConfigurationState.fromMap(Map<String, dynamic> map) {
    return FluxConfigurationState(
      blobStorage: map['blobStorage'] == null ? null : (FluxConfigurationBlobStorage.fromMap((map['blobStorage'] as Map).cast<String, dynamic>())).input(),
      bucket: map['bucket'] == null ? null : (FluxConfigurationBucket.fromMap((map['bucket'] as Map).cast<String, dynamic>())).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      continuousReconciliationEnabled: map['continuousReconciliationEnabled'] == null ? null : (map['continuousReconciliationEnabled'] as bool).input(),
      gitRepository: map['gitRepository'] == null ? null : (FluxConfigurationGitRepository.fromMap((map['gitRepository'] as Map).cast<String, dynamic>())).input(),
      kustomizations: map['kustomizations'] == null ? null : (pulumi.Input.decodeList<FluxConfigurationKustomization>(map['kustomizations'], (value) => FluxConfigurationKustomization.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
    );
  }
}

