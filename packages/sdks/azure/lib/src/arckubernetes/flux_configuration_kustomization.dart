// ignore_for_file: unused_element, unnecessary_cast


class FluxConfigurationKustomization {
  /// Specifies other kustomizations that this kustomization depends on. This kustomization will not reconcile until all dependencies have completed their reconciliation.
  final List<String>? dependsOns;
  /// Whether garbage collections of Kubernetes objects created by this kustomization is enabled. Defaults to `false`.
  final bool? garbageCollectionEnabled;
  /// Specifies the name of the kustomization.
  final String name;
  /// Specifies the path in the source reference to reconcile on the cluster.
  final String? path;
  /// Whether re-creating Kubernetes resources on the cluster is enabled when patching fails due to an immutable field change. Defaults to `false`.
  final bool? recreatingEnabled;
  /// The interval at which to re-reconcile the kustomization on the cluster in the event of failure on reconciliation. Defaults to `600`.
  final int? retryIntervalInSeconds;
  /// The interval at which to re-reconcile the kustomization on the cluster. Defaults to `600`.
  final int? syncIntervalInSeconds;
  /// The maximum time to attempt to reconcile the kustomization on the cluster. Defaults to `600`.
  final int? timeoutInSeconds;

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
      dependsOns: map['dependsOns'] == null ? null : (map['dependsOns'] as List).cast<String>(),
      garbageCollectionEnabled: map['garbageCollectionEnabled'] == null ? null : map['garbageCollectionEnabled'] as bool,
      name: map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      recreatingEnabled: map['recreatingEnabled'] == null ? null : map['recreatingEnabled'] as bool,
      retryIntervalInSeconds: map['retryIntervalInSeconds'] == null ? null : map['retryIntervalInSeconds'] as int,
      syncIntervalInSeconds: map['syncIntervalInSeconds'] == null ? null : map['syncIntervalInSeconds'] as int,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as int,
    );
  }
}

