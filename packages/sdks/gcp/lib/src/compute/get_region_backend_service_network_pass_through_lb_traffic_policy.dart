// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_network_pass_through_lb_traffic_policy_zonal_affinity.dart';

class GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy {
  /// When configured, new connections are load balanced across healthy backend endpoints in the local zone.
  final pulumi.Input<List<GetRegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity>> zonalAffinities;

  /// Creates a new [GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy].
  /// [zonalAffinities] When configured, new connections are load balanced across healthy backend endpoints in the local zone.
  const GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy({
    required this.zonalAffinities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zonalAffinities': pulumi.Input.mapInputValue<List<GetRegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity>, List<Map<String, dynamic>>>(zonalAffinities, (value) => pulumi.Input.encodeList<GetRegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy(
      zonalAffinities: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity>(map['zonalAffinities']!, (value) => GetRegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
