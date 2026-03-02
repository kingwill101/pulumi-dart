// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceQuotaStatus defines the enforced hard limits and observed use.
class ResourceQuotaStatusPatch {
  /// Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
  final pulumi.Input<Map<String, String>>? hard;
  /// Used is the current observed total usage of the resource in the namespace.
  final pulumi.Input<Map<String, String>>? used;

  /// Creates a new [ResourceQuotaStatusPatch].
  /// [hard] Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
  /// [used] Used is the current observed total usage of the resource in the namespace.
  ResourceQuotaStatusPatch({
    this.hard,
    this.used,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hard': ?hard,
      'used': ?used,
    };
  }

  factory ResourceQuotaStatusPatch.fromMap(Map<String, dynamic> map) {
    return ResourceQuotaStatusPatch(
      hard: map['hard'] == null ? null : ((map['hard'] as Map).cast<String, String>()).input(),
      used: map['used'] == null ? null : ((map['used'] as Map).cast<String, String>()).input(),
    );
  }
}

