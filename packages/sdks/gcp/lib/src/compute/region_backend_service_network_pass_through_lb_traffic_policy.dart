// ignore_for_file: unused_element, unnecessary_cast

import 'region_backend_service_network_pass_through_lb_traffic_policy_zonal_affinity.dart';

class RegionBackendServiceNetworkPassThroughLbTrafficPolicy {
  /// When configured, new connections are load balanced across healthy backend endpoints in the local zone.
  /// Structure is documented below.
  final RegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity? zonalAffinity;

  /// Creates a new [RegionBackendServiceNetworkPassThroughLbTrafficPolicy].
  /// [zonalAffinity] When configured, new connections are load balanced across healthy backend endpoints in the local zone.
  RegionBackendServiceNetworkPassThroughLbTrafficPolicy({
    this.zonalAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zonalAffinity': ?zonalAffinity == null ? null : zonalAffinity!.toMap(),
    };
  }

  factory RegionBackendServiceNetworkPassThroughLbTrafficPolicy.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceNetworkPassThroughLbTrafficPolicy(
      zonalAffinity: map['zonalAffinity'] == null ? null : RegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity.fromMap((map['zonalAffinity'] as Map).cast<String, dynamic>()),
    );
  }
}

