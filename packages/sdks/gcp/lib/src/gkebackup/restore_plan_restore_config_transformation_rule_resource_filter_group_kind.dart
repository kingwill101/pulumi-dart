// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind {
  /// API Group string of a Kubernetes resource, e.g.
  /// "apiextensions.k8s.io", "storage.k8s.io", etc.
  /// Use empty string for core group.
  final pulumi.Input<String>? resourceGroup;
  /// Kind of a Kubernetes resource, e.g.
  /// "CustomResourceDefinition", "StorageClass", etc.
  final pulumi.Input<String>? resourceKind;

  /// Creates a new [RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind].
  /// [resourceGroup] API Group string of a Kubernetes resource, e.g.
  /// [resourceKind] Kind of a Kubernetes resource, e.g.
  RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind({
    this.resourceGroup,
    this.resourceKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroup': ?resourceGroup,
      'resourceKind': ?resourceKind,
    };
  }

  factory RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind.fromMap(Map<String, dynamic> map) {
    return RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind(
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceKind: (() { final guardedValue = map['resourceKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

