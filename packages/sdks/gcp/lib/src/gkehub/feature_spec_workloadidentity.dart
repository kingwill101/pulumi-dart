// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureSpecWorkloadidentity {
  /// Pool to be used for Workload Identity. This pool in trust-domain mode is used with Fleet Tenancy, so that sameness can be enforced. ex: projects/example/locations/global/workloadidentitypools/custompool
  final pulumi.Input<String?>? scopeTenancyPool;

  /// Creates a new [FeatureSpecWorkloadidentity].
  /// [scopeTenancyPool] Pool to be used for Workload Identity. This pool in trust-domain mode is used with Fleet Tenancy, so that sameness can be enforced. ex: projects/example/locations/global/workloadidentitypools/custompool
  const FeatureSpecWorkloadidentity({
    this.scopeTenancyPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopeTenancyPool': ?scopeTenancyPool,
    };
  }

  factory FeatureSpecWorkloadidentity.fromMap(Map<String, dynamic> map) {
    return FeatureSpecWorkloadidentity(
      scopeTenancyPool: (() { final guardedValue = map['scopeTenancyPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
