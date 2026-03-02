// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_ha_policy_leader_network_endpoint.dart';

class RegionBackendServiceHaPolicyLeader {
  /// A fully-qualified URL of the zonal Network Endpoint Group (NEG) that the leader is
  /// attached to.
  final pulumi.Input<String>? backendGroup;
  /// The network endpoint within the leader.backendGroup that is designated as the leader.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceHaPolicyLeaderNetworkEndpoint>? networkEndpoint;

  /// Creates a new [RegionBackendServiceHaPolicyLeader].
  /// [backendGroup] A fully-qualified URL of the zonal Network Endpoint Group (NEG) that the leader is
  /// [networkEndpoint] The network endpoint within the leader.backendGroup that is designated as the leader.
  RegionBackendServiceHaPolicyLeader({
    this.backendGroup,
    this.networkEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendGroup': ?backendGroup,
      'networkEndpoint': ?pulumi.Input.mapOptionalInputValue<RegionBackendServiceHaPolicyLeaderNetworkEndpoint, Map<String, dynamic>>(networkEndpoint, (value) => value.toMap()),
    };
  }

  factory RegionBackendServiceHaPolicyLeader.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceHaPolicyLeader(
      backendGroup: map['backendGroup'] == null ? null : (map['backendGroup']! as String).input(),
      networkEndpoint: map['networkEndpoint'] == null ? null : (RegionBackendServiceHaPolicyLeaderNetworkEndpoint.fromMap((map['networkEndpoint']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

