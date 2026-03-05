// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig {
  /// (Optional)
  final pulumi.Input<int>? asn;
  /// The IP address of the control plane node that
  /// connects to the external peer.
  final pulumi.Input<List<String>>? controlPlaneNodes;
  /// (Optional)
  final pulumi.Input<String>? ipAddress;

  /// Creates a new [BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig].
  /// [asn] (Optional)
  /// [controlPlaneNodes] The IP address of the control plane node that
  /// [ipAddress] (Optional)
  BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig({
    this.asn,
    this.controlPlaneNodes,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'controlPlaneNodes': ?controlPlaneNodes,
      'ipAddress': ?ipAddress,
    };
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig(
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      controlPlaneNodes: (() { final guardedValue = map['controlPlaneNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

