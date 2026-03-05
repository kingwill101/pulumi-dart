// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lboutbound_rule_frontend_ip_configuration.dart';

/// Result data returned by getLBOutboundRule.
class GetLBOutboundRuleResult {
  /// The number of outbound ports used for NAT.
  final int allocatedOutboundPorts;
  /// The ID of the Backend Address Pool. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  final String backendAddressPoolId;
  final bool enableTcpReset;
  /// A `frontend_ip_configuration` block as defined below.
  final List<GetLBOutboundRuleFrontendIpConfiguration> frontendIpConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The timeout for the TCP idle connection.
  final int idleTimeoutInMinutes;
  final String loadbalancerId;
  /// The name of the Frontend IP Configuration.
  final String name;
  /// The transport protocol for the external endpoint.
  final String protocol;
  /// Is the bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination enabled? This value is useful when the protocol is set to TCP.
  final bool tcpResetEnabled;

  /// Creates a new [GetLBOutboundRuleResult].
  /// [allocatedOutboundPorts] The number of outbound ports used for NAT.
  /// [backendAddressPoolId] The ID of the Backend Address Pool. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  /// [enableTcpReset] Required.
  /// [frontendIpConfigurations] A `frontend_ip_configuration` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleTimeoutInMinutes] The timeout for the TCP idle connection.
  /// [loadbalancerId] Required.
  /// [name] The name of the Frontend IP Configuration.
  /// [protocol] The transport protocol for the external endpoint.
  /// [tcpResetEnabled] Is the bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination enabled? This value is useful when the protocol is set to TCP.
  GetLBOutboundRuleResult({
    required this.allocatedOutboundPorts,
    required this.backendAddressPoolId,
    required this.enableTcpReset,
    required this.frontendIpConfigurations,
    required this.id,
    required this.idleTimeoutInMinutes,
    required this.loadbalancerId,
    required this.name,
    required this.protocol,
    required this.tcpResetEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedOutboundPorts': allocatedOutboundPorts,
      'backendAddressPoolId': backendAddressPoolId,
      'enableTcpReset': enableTcpReset,
      'frontendIpConfigurations': pulumi.Input.encodeList<GetLBOutboundRuleFrontendIpConfiguration, Map<String, dynamic>>(frontendIpConfigurations, (value) => value.toMap()),
      'id': id,
      'idleTimeoutInMinutes': idleTimeoutInMinutes,
      'loadbalancerId': loadbalancerId,
      'name': name,
      'protocol': protocol,
      'tcpResetEnabled': tcpResetEnabled,
    };
  }

  factory GetLBOutboundRuleResult.fromMap(Map<String, dynamic> map) {
    return GetLBOutboundRuleResult(
      allocatedOutboundPorts: map['allocatedOutboundPorts'] as int,
      backendAddressPoolId: map['backendAddressPoolId'] as String,
      enableTcpReset: map['enableTcpReset'] as bool,
      frontendIpConfigurations: pulumi.Input.decodeList<GetLBOutboundRuleFrontendIpConfiguration>(map['frontendIpConfigurations']!, (value) => GetLBOutboundRuleFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] as int,
      loadbalancerId: map['loadbalancerId'] as String,
      name: map['name'] as String,
      protocol: map['protocol'] as String,
      tcpResetEnabled: map['tcpResetEnabled'] as bool,
    );
  }
}

