// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'outbound_rule_frontend_ip_configuration.dart';

/// Input properties used for looking up and filtering OutboundRule resources.
class OutboundRuleState {
  /// The number of outbound ports to be used for NAT. Defaults to `1024`.
  final pulumi.Input<int?>? allocatedOutboundPorts;
  /// The ID of the Backend Address Pool. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  final pulumi.Input<String?>? backendAddressPoolId;
  final pulumi.Input<bool?>? enableTcpReset;
  /// One or more `frontendIpConfiguration` blocks as defined below.
  final pulumi.Input<List<OutboundRuleFrontendIpConfiguration>?>? frontendIpConfigurations;
  /// The timeout for the TCP idle connection Defaults to `4`.
  final pulumi.Input<int?>? idleTimeoutInMinutes;
  /// The ID of the Load Balancer in which to create the Outbound Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? loadbalancerId;
  /// Specifies the name of the Outbound Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`.
  final pulumi.Input<String?>? protocol;
  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  final pulumi.Input<bool?>? tcpResetEnabled;

  /// Creates a new [OutboundRuleState].
  /// [allocatedOutboundPorts] The number of outbound ports to be used for NAT. Defaults to `1024`.
  /// [backendAddressPoolId] The ID of the Backend Address Pool. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  /// [enableTcpReset] Optional.
  /// [frontendIpConfigurations] One or more `frontendIpConfiguration` blocks as defined below.
  /// [idleTimeoutInMinutes] The timeout for the TCP idle connection Defaults to `4`.
  /// [loadbalancerId] The ID of the Load Balancer in which to create the Outbound Rule. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Outbound Rule. Changing this forces a new resource to be created.
  /// [protocol] The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`.
  /// [tcpResetEnabled] Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  const OutboundRuleState({
    this.allocatedOutboundPorts,
    this.backendAddressPoolId,
    this.enableTcpReset,
    this.frontendIpConfigurations,
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
      'frontendIpConfigurations': ?pulumi.Input.mapOptionalInputValue<List<OutboundRuleFrontendIpConfiguration>, List<Map<String, dynamic>>>(frontendIpConfigurations, (value) => pulumi.Input.encodeList<OutboundRuleFrontendIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'loadbalancerId': ?loadbalancerId,
      'name': ?name,
      'protocol': ?protocol,
      'tcpResetEnabled': ?tcpResetEnabled,
    };
  }

  factory OutboundRuleState.fromMap(Map<String, dynamic> map) {
    return OutboundRuleState(
      allocatedOutboundPorts: (() { final guardedValue = map['allocatedOutboundPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      backendAddressPoolId: (() { final guardedValue = map['backendAddressPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableTcpReset: (() { final guardedValue = map['enableTcpReset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frontendIpConfigurations: (() { final guardedValue = map['frontendIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OutboundRuleFrontendIpConfiguration>(guardedValue, (value) => OutboundRuleFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      loadbalancerId: (() { final guardedValue = map['loadbalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcpResetEnabled: (() { final guardedValue = map['tcpResetEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
