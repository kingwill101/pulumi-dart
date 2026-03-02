// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_network_pass_through_lb_traffic_policy_zonal_affinity.dart';

class RegionBackendServiceNetworkPassThroughLbTrafficPolicy {
  /// When configured, new connections are load balanced across healthy backend endpoints in the local zone.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity>? zonalAffinity;

  /// Creates a new [RegionBackendServiceNetworkPassThroughLbTrafficPolicy].
  /// [zonalAffinity] When configured, new connections are load balanced across healthy backend endpoints in the local zone.
  RegionBackendServiceNetworkPassThroughLbTrafficPolicy({
    this.zonalAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zonalAffinity': ?pulumi.Input.mapOptionalInputValue<RegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity, Map<String, dynamic>>(zonalAffinity, (value) => value.toMap()),
    };
  }

  factory RegionBackendServiceNetworkPassThroughLbTrafficPolicy.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceNetworkPassThroughLbTrafficPolicy(
      zonalAffinity: map['zonalAffinity'] == null ? null : (RegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity.fromMap((map['zonalAffinity'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

