// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupInstanceKubernetesClusterBackupDatasourceParameters {
  /// Whether to include cluster scope resources during backup. Default to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? clusterScopedResourcesEnabled;

  /// Specifies the namespaces to be excluded during backup. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? excludedNamespaces;

  /// Specifies the resource types to be excluded during backup. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? excludedResourceTypes;

  /// Specifies the namespaces to be included during backup. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? includedNamespaces;

  /// Specifies the resource types to be included during backup. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? includedResourceTypes;

  /// Specifies the resources with such label selectors to be included during backup. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? labelSelectors;

  /// Whether to take volume snapshots during backup. Default to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? volumeSnapshotEnabled;

  /// Creates a new [BackupInstanceKubernetesClusterBackupDatasourceParameters].
  /// [clusterScopedResourcesEnabled] Whether to include cluster scope resources during backup. Default to `false`. Changing this forces a new resource to be created.
  /// [excludedNamespaces] Specifies the namespaces to be excluded during backup. Changing this forces a new resource to be created.
  /// [excludedResourceTypes] Specifies the resource types to be excluded during backup. Changing this forces a new resource to be created.
  /// [includedNamespaces] Specifies the namespaces to be included during backup. Changing this forces a new resource to be created.
  /// [includedResourceTypes] Specifies the resource types to be included during backup. Changing this forces a new resource to be created.
  /// [labelSelectors] Specifies the resources with such label selectors to be included during backup. Changing this forces a new resource to be created.
  /// [volumeSnapshotEnabled] Whether to take volume snapshots during backup. Default to `false`. Changing this forces a new resource to be created.
  BackupInstanceKubernetesClusterBackupDatasourceParameters({
    this.clusterScopedResourcesEnabled,
    this.excludedNamespaces,
    this.excludedResourceTypes,
    this.includedNamespaces,
    this.includedResourceTypes,
    this.labelSelectors,
    this.volumeSnapshotEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterScopedResourcesEnabled': ?clusterScopedResourcesEnabled,
      'excludedNamespaces': ?excludedNamespaces,
      'excludedResourceTypes': ?excludedResourceTypes,
      'includedNamespaces': ?includedNamespaces,
      'includedResourceTypes': ?includedResourceTypes,
      'labelSelectors': ?labelSelectors,
      'volumeSnapshotEnabled': ?volumeSnapshotEnabled,
    };
  }

  factory BackupInstanceKubernetesClusterBackupDatasourceParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackupInstanceKubernetesClusterBackupDatasourceParameters(
      clusterScopedResourcesEnabled: (() {
        final guardedValue = map['clusterScopedResourcesEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      excludedNamespaces: (() {
        final guardedValue = map['excludedNamespaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      excludedResourceTypes: (() {
        final guardedValue = map['excludedResourceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      includedNamespaces: (() {
        final guardedValue = map['includedNamespaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      includedResourceTypes: (() {
        final guardedValue = map['includedResourceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      labelSelectors: (() {
        final guardedValue = map['labelSelectors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      volumeSnapshotEnabled: (() {
        final guardedValue = map['volumeSnapshotEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
