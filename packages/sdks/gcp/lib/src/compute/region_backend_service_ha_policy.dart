// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_ha_policy_leader.dart';

class RegionBackendServiceHaPolicy {
  /// Specifies whether fast IP move is enabled, and if so, the mechanism to achieve it.
  /// Supported values are:
  /// * `DISABLED`: Fast IP Move is disabled. You can only use the haPolicy.leader API to
  /// update the leader.
  /// * `GARP_RA`: Provides a method to very quickly define a new network endpoint as the
  /// leader. This method is faster than updating the leader using the
  /// haPolicy.leader API. Fast IP move works as follows: The VM hosting the
  /// network endpoint that should become the new leader sends either a
  /// Gratuitous ARP (GARP) packet (IPv4) or an ICMPv6 Router Advertisement(RA)
  /// packet (IPv6). Google Cloud immediately but temporarily associates the
  /// forwarding rule IP address with that VM, and both new and in-flight packets
  /// are quickly delivered to that VM.
  /// Possible values are: `DISABLED`, `GARP_RA`.
  final pulumi.Input<String>? fastIpMove;
  /// Selects one of the network endpoints attached to the backend NEGs of this service as the
  /// active endpoint (the leader) that receives all traffic.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceHaPolicyLeader>? leader;

  /// Creates a new [RegionBackendServiceHaPolicy].
  /// [fastIpMove] Specifies whether fast IP move is enabled, and if so, the mechanism to achieve it.
  /// [leader] Selects one of the network endpoints attached to the backend NEGs of this service as the
  RegionBackendServiceHaPolicy({
    this.fastIpMove,
    this.leader,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fastIpMove': ?fastIpMove,
      'leader': ?pulumi.Input.mapOptionalInputValue<RegionBackendServiceHaPolicyLeader, Map<String, dynamic>>(leader, (value) => value.toMap()),
    };
  }

  factory RegionBackendServiceHaPolicy.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceHaPolicy(
      fastIpMove: (() { final guardedValue = map['fastIpMove']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      leader: (() { final guardedValue = map['leader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionBackendServiceHaPolicyLeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

