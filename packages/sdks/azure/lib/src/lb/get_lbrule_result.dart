// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLBRule.
class GetLBRuleResult {
  /// A reference to a Backend Address Pool over which this Load Balancing Rule operates.
  final String? backendAddressPoolId;
  /// The port used for internal connections on the endpoint.
  final int? backendPort;
  /// If outbound SNAT is enabled for this Load Balancer Rule.
  final bool? disableOutboundSnat;
  /// If Floating IPs are enabled for this Load Balancer Rule
  final bool? enableFloatingIp;
  /// If TCP Reset is enabled for this Load Balancer Rule.
  final bool? enableTcpReset;
  final bool? floatingIpEnabled;
  /// The name of the frontend IP configuration to which the rule is associated.
  final String? frontendIpConfigurationName;
  /// The port for the external endpoint.
  final int? frontendPort;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Specifies the idle timeout in minutes for TCP connections.
  final int? idleTimeoutInMinutes;
  /// Specifies the load balancing distribution type used by the Load Balancer.
  final String? loadDistribution;
  final String? loadbalancerId;
  final String? name;
  /// A reference to a Probe used by this Load Balancing Rule.
  final String? probeId;
  /// The transport protocol for the external endpoint.
  final String? protocol;
  final bool? tcpResetEnabled;

  /// Creates a new [GetLBRuleResult].
  /// [backendAddressPoolId] A reference to a Backend Address Pool over which this Load Balancing Rule operates.
  /// [backendPort] The port used for internal connections on the endpoint.
  /// [disableOutboundSnat] If outbound SNAT is enabled for this Load Balancer Rule.
  /// [enableFloatingIp] If Floating IPs are enabled for this Load Balancer Rule
  /// [enableTcpReset] If TCP Reset is enabled for this Load Balancer Rule.
  /// [floatingIpEnabled] Optional.
  /// [frontendIpConfigurationName] The name of the frontend IP configuration to which the rule is associated.
  /// [frontendPort] The port for the external endpoint.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleTimeoutInMinutes] Specifies the idle timeout in minutes for TCP connections.
  /// [loadDistribution] Specifies the load balancing distribution type used by the Load Balancer.
  /// [loadbalancerId] Optional.
  /// [name] Optional.
  /// [probeId] A reference to a Probe used by this Load Balancing Rule.
  /// [protocol] The transport protocol for the external endpoint.
  /// [tcpResetEnabled] Optional.
  const GetLBRuleResult({
    this.backendAddressPoolId,
    this.backendPort,
    this.disableOutboundSnat,
    this.enableFloatingIp,
    this.enableTcpReset,
    this.floatingIpEnabled,
    this.frontendIpConfigurationName,
    this.frontendPort,
    this.id,
    this.idleTimeoutInMinutes,
    this.loadDistribution,
    this.loadbalancerId,
    this.name,
    this.probeId,
    this.protocol,
    this.tcpResetEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': ?backendAddressPoolId,
      'backendPort': ?backendPort,
      'disableOutboundSnat': ?disableOutboundSnat,
      'enableFloatingIp': ?enableFloatingIp,
      'enableTcpReset': ?enableTcpReset,
      'floatingIpEnabled': ?floatingIpEnabled,
      'frontendIpConfigurationName': ?frontendIpConfigurationName,
      'frontendPort': ?frontendPort,
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'loadDistribution': ?loadDistribution,
      'loadbalancerId': ?loadbalancerId,
      'name': ?name,
      'probeId': ?probeId,
      'protocol': ?protocol,
      'tcpResetEnabled': ?tcpResetEnabled,
    };
  }

  factory GetLBRuleResult.fromMap(Map<String, dynamic> map) {
    return GetLBRuleResult(
      backendAddressPoolId: (() { final guardedValue = map['backendAddressPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backendPort: (() { final guardedValue = map['backendPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      disableOutboundSnat: (() { final guardedValue = map['disableOutboundSnat']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableFloatingIp: (() { final guardedValue = map['enableFloatingIp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableTcpReset: (() { final guardedValue = map['enableTcpReset']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      floatingIpEnabled: (() { final guardedValue = map['floatingIpEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      frontendIpConfigurationName: (() { final guardedValue = map['frontendIpConfigurationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frontendPort: (() { final guardedValue = map['frontendPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      loadDistribution: (() { final guardedValue = map['loadDistribution']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadbalancerId: (() { final guardedValue = map['loadbalancerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      probeId: (() { final guardedValue = map['probeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tcpResetEnabled: (() { final guardedValue = map['tcpResetEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
