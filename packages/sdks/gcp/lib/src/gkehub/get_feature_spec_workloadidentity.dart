// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureSpecWorkloadidentity {
  /// Pool to be used for Workload Identity. This pool in trust-domain mode is used with Fleet Tenancy, so that sameness can be enforced. ex: projects/example/locations/global/workloadidentitypools/custompool
  final pulumi.Input<String> scopeTenancyPool;

  /// Creates a new [GetFeatureSpecWorkloadidentity].
  /// [scopeTenancyPool] Pool to be used for Workload Identity. This pool in trust-domain mode is used with Fleet Tenancy, so that sameness can be enforced. ex: projects/example/locations/global/workloadidentitypools/custompool
  const GetFeatureSpecWorkloadidentity({
    required this.scopeTenancyPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopeTenancyPool': scopeTenancyPool,
    };
  }

  factory GetFeatureSpecWorkloadidentity.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpecWorkloadidentity(
      scopeTenancyPool: pulumi.Input.fromValue(map['scopeTenancyPool'] as String),
    );
  }
}
