// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_ha_policy_leader.dart';

class GetRegionBackendServiceHaPolicy {
  /// Specifies whether fast IP move is enabled, and if so, the mechanism to achieve it.
  /// Supported values are:
  ///
  /// * 'DISABLED': Fast IP Move is disabled. You can only use the haPolicy.leader API to
  /// update the leader.
  ///
  /// * 'GARP_RA': Provides a method to very quickly define a new network endpoint as the
  /// leader. This method is faster than updating the leader using the
  /// haPolicy.leader API. Fast IP move works as follows: The VM hosting the
  /// network endpoint that should become the new leader sends either a
  /// Gratuitous ARP (GARP) packet (IPv4) or an ICMPv6 Router Advertisement(RA)
  /// packet (IPv6). Google Cloud immediately but temporarily associates the
  /// forwarding rule IP address with that VM, and both new and in-flight packets
  /// are quickly delivered to that VM. Possible values: ["DISABLED", "GARP_RA"]
  final pulumi.Input<String> fastIpMove;
  /// Selects one of the network endpoints attached to the backend NEGs of this service as the
  /// active endpoint (the leader) that receives all traffic.
  final pulumi.Input<List<GetRegionBackendServiceHaPolicyLeader>> leaders;

  /// Creates a new [GetRegionBackendServiceHaPolicy].
  /// [fastIpMove] Specifies whether fast IP move is enabled, and if so, the mechanism to achieve it.
  /// [leaders] Selects one of the network endpoints attached to the backend NEGs of this service as the
  const GetRegionBackendServiceHaPolicy({
    required this.fastIpMove,
    required this.leaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fastIpMove': fastIpMove,
      'leaders': pulumi.Input.mapInputValue<List<GetRegionBackendServiceHaPolicyLeader>, List<Map<String, dynamic>>>(leaders, (value) => pulumi.Input.encodeList<GetRegionBackendServiceHaPolicyLeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegionBackendServiceHaPolicy.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceHaPolicy(
      fastIpMove: pulumi.Input.fromValue(map['fastIpMove'] as String),
      leaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceHaPolicyLeader>(map['leaders']!, (value) => GetRegionBackendServiceHaPolicyLeader.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

