// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind {
  /// API Group string of a Kubernetes resource, e.g.
  /// "apiextensions.k8s.io", "storage.k8s.io", etc.
  /// Use empty string for core group.
  final pulumi.Input<String>? resourceGroup;
  /// Kind of a Kubernetes resource, e.g.
  /// "CustomResourceDefinition", "StorageClass", etc.
  final pulumi.Input<String>? resourceKind;

  /// Creates a new [RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind].
  /// [resourceGroup] API Group string of a Kubernetes resource, e.g.
  /// [resourceKind] Kind of a Kubernetes resource, e.g.
  RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind({
    this.resourceGroup,
    this.resourceKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroup': ?resourceGroup,
      'resourceKind': ?resourceKind,
    };
  }

  factory RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind.fromMap(Map<String, dynamic> map) {
    return RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKind(
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup'] as String).input(),
      resourceKind: map['resourceKind'] == null ? null : (map['resourceKind'] as String).input(),
    );
  }
}

