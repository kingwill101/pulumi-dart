// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FluxConfigurationKustomization {
  /// Specifies other kustomizations that this kustomization depends on. This kustomization will not reconcile until all dependencies have completed their reconciliation.
  final pulumi.Input<List<String>>? dependsOns;
  /// Whether garbage collections of Kubernetes objects created by this kustomization is enabled. Defaults to `false`.
  final pulumi.Input<bool>? garbageCollectionEnabled;
  /// Specifies the name of the kustomization.
  final pulumi.Input<String> name;
  /// Specifies the path in the source reference to reconcile on the cluster.
  final pulumi.Input<String>? path;
  /// Whether re-creating Kubernetes resources on the cluster is enabled when patching fails due to an immutable field change. Defaults to `false`.
  final pulumi.Input<bool>? recreatingEnabled;
  /// The interval at which to re-reconcile the kustomization on the cluster in the event of failure on reconciliation. Defaults to `600`.
  final pulumi.Input<int>? retryIntervalInSeconds;
  /// The interval at which to re-reconcile the kustomization on the cluster. Defaults to `600`.
  final pulumi.Input<int>? syncIntervalInSeconds;
  /// The maximum time to attempt to reconcile the kustomization on the cluster. Defaults to `600`.
  final pulumi.Input<int>? timeoutInSeconds;

  /// Creates a new [FluxConfigurationKustomization].
  /// [dependsOns] Specifies other kustomizations that this kustomization depends on. This kustomization will not reconcile until all dependencies have completed their reconciliation.
  /// [garbageCollectionEnabled] Whether garbage collections of Kubernetes objects created by this kustomization is enabled. Defaults to `false`.
  /// [name] Specifies the name of the kustomization.
  /// [path] Specifies the path in the source reference to reconcile on the cluster.
  /// [recreatingEnabled] Whether re-creating Kubernetes resources on the cluster is enabled when patching fails due to an immutable field change. Defaults to `false`.
  /// [retryIntervalInSeconds] The interval at which to re-reconcile the kustomization on the cluster in the event of failure on reconciliation. Defaults to `600`.
  /// [syncIntervalInSeconds] The interval at which to re-reconcile the kustomization on the cluster. Defaults to `600`.
  /// [timeoutInSeconds] The maximum time to attempt to reconcile the kustomization on the cluster. Defaults to `600`.
  FluxConfigurationKustomization({
    this.dependsOns,
    this.garbageCollectionEnabled,
    required this.name,
    this.path,
    this.recreatingEnabled,
    this.retryIntervalInSeconds,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOns': ?dependsOns,
      'garbageCollectionEnabled': ?garbageCollectionEnabled,
      'name': name,
      'path': ?path,
      'recreatingEnabled': ?recreatingEnabled,
      'retryIntervalInSeconds': ?retryIntervalInSeconds,
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
    };
  }

  factory FluxConfigurationKustomization.fromMap(Map<String, dynamic> map) {
    return FluxConfigurationKustomization(
      dependsOns: map['dependsOns'] == null ? null : ((map['dependsOns'] as List).cast<String>()).input(),
      garbageCollectionEnabled: map['garbageCollectionEnabled'] == null ? null : (map['garbageCollectionEnabled'] as bool).input(),
      name: (map['name'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      recreatingEnabled: map['recreatingEnabled'] == null ? null : (map['recreatingEnabled'] as bool).input(),
      retryIntervalInSeconds: map['retryIntervalInSeconds'] == null ? null : (map['retryIntervalInSeconds'] as int).input(),
      syncIntervalInSeconds: map['syncIntervalInSeconds'] == null ? null : (map['syncIntervalInSeconds'] as int).input(),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : (map['timeoutInSeconds'] as int).input(),
    );
  }
}

