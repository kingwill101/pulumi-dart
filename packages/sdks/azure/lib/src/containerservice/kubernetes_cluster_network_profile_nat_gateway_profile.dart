// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterNetworkProfileNatGatewayProfile {
  /// The outcome (resource IDs) of the specified arguments.
  final pulumi.Input<List<String>>? effectiveOutboundIps;
  /// Desired outbound flow idle timeout in minutes for the managed nat gateway. Must be between `4` and `120` inclusive. Defaults to `4`.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// Count of desired managed outbound IPs for the managed nat gateway. Must be between `1` and `16` inclusive.
  final pulumi.Input<int>? managedOutboundIpCount;

  /// Creates a new [KubernetesClusterNetworkProfileNatGatewayProfile].
  /// [effectiveOutboundIps] The outcome (resource IDs) of the specified arguments.
  /// [idleTimeoutInMinutes] Desired outbound flow idle timeout in minutes for the managed nat gateway. Must be between `4` and `120` inclusive. Defaults to `4`.
  /// [managedOutboundIpCount] Count of desired managed outbound IPs for the managed nat gateway. Must be between `1` and `16` inclusive.
  const KubernetesClusterNetworkProfileNatGatewayProfile({
    this.effectiveOutboundIps,
    this.idleTimeoutInMinutes,
    this.managedOutboundIpCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveOutboundIps': ?effectiveOutboundIps,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'managedOutboundIpCount': ?managedOutboundIpCount,
    };
  }

  factory KubernetesClusterNetworkProfileNatGatewayProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNetworkProfileNatGatewayProfile(
      effectiveOutboundIps: (() { final guardedValue = map['effectiveOutboundIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      managedOutboundIpCount: (() { final guardedValue = map['managedOutboundIpCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
