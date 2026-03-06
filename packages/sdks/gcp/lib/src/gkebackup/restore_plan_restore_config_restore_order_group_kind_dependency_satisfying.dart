// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying {
  /// API Group of a Kubernetes resource, e.g.
  /// "apiextensions.k8s.io", "storage.k8s.io", etc.
  /// Use empty string for core group.
  final pulumi.Input<String>? resourceGroup;
  /// Kind of a Kubernetes resource, e.g.
  /// "CustomResourceDefinition", "StorageClass", etc.
  final pulumi.Input<String>? resourceKind;

  /// Creates a new [RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying].
  /// [resourceGroup] API Group of a Kubernetes resource, e.g.
  /// [resourceKind] Kind of a Kubernetes resource, e.g.
  const RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying({
    this.resourceGroup,
    this.resourceKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroup': ?resourceGroup,
      'resourceKind': ?resourceKind,
    };
  }

  factory RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying.fromMap(Map<String, dynamic> map) {
    return RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying(
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceKind: (() { final guardedValue = map['resourceKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

