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
      'blobStorage':
          ?pulumi.Input.mapOptionalInputValue<
            FluxConfigurationBlobStorage,
            Map<String, dynamic>
          >(blobStorage, (value) => value.toMap()),
      'bucket':
          ?pulumi.Input.mapOptionalInputValue<
            FluxConfigurationBucket,
            Map<String, dynamic>
          >(bucket, (value) => value.toMap()),
      'clusterId': ?clusterId,
      'continuousReconciliationEnabled': ?continuousReconciliationEnabled,
      'gitRepository':
          ?pulumi.Input.mapOptionalInputValue<
            FluxConfigurationGitRepository,
            Map<String, dynamic>
          >(gitRepository, (value) => value.toMap()),
      'kustomizations':
          ?pulumi.Input.mapOptionalInputValue<
            List<FluxConfigurationKustomization>,
            List<Map<String, dynamic>>
          >(
            kustomizations,
            (value) =>
                pulumi.Input.encodeList<
                  FluxConfigurationKustomization,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'namespace': ?namespace,
      'scope': ?scope,
    };
  }

  factory FluxConfigurationState.fromMap(Map<String, dynamic> map) {
    return FluxConfigurationState(
      blobStorage: (() {
        final guardedValue = map['blobStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FluxConfigurationBlobStorage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FluxConfigurationBucket.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      continuousReconciliationEnabled: (() {
        final guardedValue = map['continuousReconciliationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      gitRepository: (() {
        final guardedValue = map['gitRepository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FluxConfigurationGitRepository.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kustomizations: (() {
        final guardedValue = map['kustomizations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FluxConfigurationKustomization>(
            guardedValue,
            (value) => FluxConfigurationKustomization.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
