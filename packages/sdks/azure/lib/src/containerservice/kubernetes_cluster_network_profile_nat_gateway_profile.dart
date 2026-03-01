// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterNetworkProfileNatGatewayProfile {
  /// The outcome (resource IDs) of the specified arguments.
  final List<String>? effectiveOutboundIps;
  /// Desired outbound flow idle timeout in minutes for the managed nat gateway. Must be between `4` and `120` inclusive. Defaults to `4`.
  final int? idleTimeoutInMinutes;
  /// Count of desired managed outbound IPs for the managed nat gateway. Must be between `1` and `16` inclusive.
  final int? managedOutboundIpCount;

  /// Creates a new [KubernetesClusterNetworkProfileNatGatewayProfile].
  /// [effectiveOutboundIps] The outcome (resource IDs) of the specified arguments.
  /// [idleTimeoutInMinutes] Desired outbound flow idle timeout in minutes for the managed nat gateway. Must be between `4` and `120` inclusive. Defaults to `4`.
  /// [managedOutboundIpCount] Count of desired managed outbound IPs for the managed nat gateway. Must be between `1` and `16` inclusive.
  KubernetesClusterNetworkProfileNatGatewayProfile({
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
      effectiveOutboundIps: map['effectiveOutboundIps'] == null ? null : (map['effectiveOutboundIps'] as List).cast<String>(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      managedOutboundIpCount: map['managedOutboundIpCount'] == null ? null : map['managedOutboundIpCount'] as int,
    );
  }
}

