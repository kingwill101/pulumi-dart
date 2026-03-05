// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_ha_policy_leader_network_endpoint.dart';

class GetRegionBackendServiceHaPolicyLeader {
  /// A fully-qualified URL of the zonal Network Endpoint Group (NEG) that the leader is
  /// attached to.
  final pulumi.Input<String> backendGroup;
  /// The network endpoint within the leader.backendGroup that is designated as the leader.
  final pulumi.Input<List<GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint>> networkEndpoints;

  /// Creates a new [GetRegionBackendServiceHaPolicyLeader].
  /// [backendGroup] A fully-qualified URL of the zonal Network Endpoint Group (NEG) that the leader is
  /// [networkEndpoints] The network endpoint within the leader.backendGroup that is designated as the leader.
  GetRegionBackendServiceHaPolicyLeader({
    required this.backendGroup,
    required this.networkEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendGroup': backendGroup,
      'networkEndpoints': pulumi.Input.mapInputValue<List<GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint>, List<Map<String, dynamic>>>(networkEndpoints, (value) => pulumi.Input.encodeList<GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegionBackendServiceHaPolicyLeader.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceHaPolicyLeader(
      backendGroup: pulumi.Input.fromValue(map['backendGroup'] as String),
      networkEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint>(map['networkEndpoints']!, (value) => GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

