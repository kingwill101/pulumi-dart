// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLBRule.
class GetLBRuleResult {
  /// A reference to a Backend Address Pool over which this Load Balancing Rule operates.
  final String backendAddressPoolId;
  /// The port used for internal connections on the endpoint.
  final int backendPort;
  /// If outbound SNAT is enabled for this Load Balancer Rule.
  final bool disableOutboundSnat;
  /// If Floating IPs are enabled for this Load Balancer Rule
  final bool enableFloatingIp;
  /// If TCP Reset is enabled for this Load Balancer Rule.
  final bool enableTcpReset;
  final bool floatingIpEnabled;
  /// The name of the frontend IP configuration to which the rule is associated.
  final String frontendIpConfigurationName;
  /// The port for the external endpoint.
  final int frontendPort;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Specifies the idle timeout in minutes for TCP connections.
  final int idleTimeoutInMinutes;
  /// Specifies the load balancing distribution type used by the Load Balancer.
  final String loadDistribution;
  final String loadbalancerId;
  final String name;
  /// A reference to a Probe used by this Load Balancing Rule.
  final String probeId;
  /// The transport protocol for the external endpoint.
  final String protocol;
  final bool tcpResetEnabled;

  /// Creates a new [GetLBRuleResult].
  /// [backendAddressPoolId] A reference to a Backend Address Pool over which this Load Balancing Rule operates.
  /// [backendPort] The port used for internal connections on the endpoint.
  /// [disableOutboundSnat] If outbound SNAT is enabled for this Load Balancer Rule.
  /// [enableFloatingIp] If Floating IPs are enabled for this Load Balancer Rule
  /// [enableTcpReset] If TCP Reset is enabled for this Load Balancer Rule.
  /// [floatingIpEnabled] Required.
  /// [frontendIpConfigurationName] The name of the frontend IP configuration to which the rule is associated.
  /// [frontendPort] The port for the external endpoint.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleTimeoutInMinutes] Specifies the idle timeout in minutes for TCP connections.
  /// [loadDistribution] Specifies the load balancing distribution type used by the Load Balancer.
  /// [loadbalancerId] Required.
  /// [name] Required.
  /// [probeId] A reference to a Probe used by this Load Balancing Rule.
  /// [protocol] The transport protocol for the external endpoint.
  /// [tcpResetEnabled] Required.
  GetLBRuleResult({
    required this.backendAddressPoolId,
    required this.backendPort,
    required this.disableOutboundSnat,
    required this.enableFloatingIp,
    required this.enableTcpReset,
    required this.floatingIpEnabled,
    required this.frontendIpConfigurationName,
    required this.frontendPort,
    required this.id,
    required this.idleTimeoutInMinutes,
    required this.loadDistribution,
    required this.loadbalancerId,
    required this.name,
    required this.probeId,
    required this.protocol,
    required this.tcpResetEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': backendAddressPoolId,
      'backendPort': backendPort,
      'disableOutboundSnat': disableOutboundSnat,
      'enableFloatingIp': enableFloatingIp,
      'enableTcpReset': enableTcpReset,
      'floatingIpEnabled': floatingIpEnabled,
      'frontendIpConfigurationName': frontendIpConfigurationName,
      'frontendPort': frontendPort,
      'id': id,
      'idleTimeoutInMinutes': idleTimeoutInMinutes,
      'loadDistribution': loadDistribution,
      'loadbalancerId': loadbalancerId,
      'name': name,
      'probeId': probeId,
      'protocol': protocol,
      'tcpResetEnabled': tcpResetEnabled,
    };
  }

  factory GetLBRuleResult.fromMap(Map<String, dynamic> map) {
    return GetLBRuleResult(
      backendAddressPoolId: map['backendAddressPoolId'] as String,
      backendPort: map['backendPort'] as int,
      disableOutboundSnat: map['disableOutboundSnat'] as bool,
      enableFloatingIp: map['enableFloatingIp'] as bool,
      enableTcpReset: map['enableTcpReset'] as bool,
      floatingIpEnabled: map['floatingIpEnabled'] as bool,
      frontendIpConfigurationName: map['frontendIpConfigurationName'] as String,
      frontendPort: map['frontendPort'] as int,
      id: map['id'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] as int,
      loadDistribution: map['loadDistribution'] as String,
      loadbalancerId: map['loadbalancerId'] as String,
      name: map['name'] as String,
      probeId: map['probeId'] as String,
      protocol: map['protocol'] as String,
      tcpResetEnabled: map['tcpResetEnabled'] as bool,
    );
  }
}

