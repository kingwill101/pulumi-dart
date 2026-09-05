// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lboutbound_rule_frontend_ip_configuration.dart';

/// Result data returned by getLBOutboundRule.
class GetLBOutboundRuleResult {
  /// The number of outbound ports used for NAT.
  final int? allocatedOutboundPorts;
  /// The ID of the Backend Address Pool. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  final String? backendAddressPoolId;
  final bool? enableTcpReset;
  /// A `frontendIpConfiguration` block as defined below.
  final List<GetLBOutboundRuleFrontendIpConfiguration>? frontendIpConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The timeout for the TCP idle connection.
  final int? idleTimeoutInMinutes;
  final String? loadbalancerId;
  /// The name of the Frontend IP Configuration.
  final String? name;
  /// The transport protocol for the external endpoint.
  final String? protocol;
  /// Is the bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination enabled? This value is useful when the protocol is set to TCP.
  final bool? tcpResetEnabled;

  /// Creates a new [GetLBOutboundRuleResult].
  /// [allocatedOutboundPorts] The number of outbound ports used for NAT.
  /// [backendAddressPoolId] The ID of the Backend Address Pool. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  /// [enableTcpReset] Optional.
  /// [frontendIpConfigurations] A `frontendIpConfiguration` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleTimeoutInMinutes] The timeout for the TCP idle connection.
  /// [loadbalancerId] Optional.
  /// [name] The name of the Frontend IP Configuration.
  /// [protocol] The transport protocol for the external endpoint.
  /// [tcpResetEnabled] Is the bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination enabled? This value is useful when the protocol is set to TCP.
  const GetLBOutboundRuleResult({
    this.allocatedOutboundPorts,
    this.backendAddressPoolId,
    this.enableTcpReset,
    this.frontendIpConfigurations,
    this.id,
    this.idleTimeoutInMinutes,
    this.loadbalancerId,
    this.name,
    this.protocol,
    this.tcpResetEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedOutboundPorts': ?allocatedOutboundPorts,
      'backendAddressPoolId': ?backendAddressPoolId,
      'enableTcpReset': ?enableTcpReset,
      'frontendIpConfigurations': ?(() { final guardedValue = frontendIpConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLBOutboundRuleFrontendIpConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'loadbalancerId': ?loadbalancerId,
      'name': ?name,
      'protocol': ?protocol,
      'tcpResetEnabled': ?tcpResetEnabled,
    };
  }

  factory GetLBOutboundRuleResult.fromMap(Map<String, dynamic> map) {
    return GetLBOutboundRuleResult(
      allocatedOutboundPorts: (() { final guardedValue = map['allocatedOutboundPorts']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      backendAddressPoolId: (() { final guardedValue = map['backendAddressPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableTcpReset: (() { final guardedValue = map['enableTcpReset']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      frontendIpConfigurations: (() { final guardedValue = map['frontendIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLBOutboundRuleFrontendIpConfiguration>(guardedValue, (value) => GetLBOutboundRuleFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      loadbalancerId: (() { final guardedValue = map['loadbalancerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tcpResetEnabled: (() { final guardedValue = map['tcpResetEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
