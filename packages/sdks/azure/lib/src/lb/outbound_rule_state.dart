// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'outbound_rule_frontend_ip_configuration.dart';

/// Input properties used for looking up and filtering OutboundRule resources.
class OutboundRuleState {
  /// The number of outbound ports to be used for NAT. Defaults to `1024`.
  final pulumi.Input<int>? allocatedOutboundPorts;
  /// The ID of the Backend Address Pool. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  final pulumi.Input<String>? backendAddressPoolId;
  final pulumi.Input<bool>? enableTcpReset;
  /// One or more `frontend_ip_configuration` blocks as defined below.
  final pulumi.Input<List<OutboundRuleFrontendIpConfiguration>>? frontendIpConfigurations;
  /// The timeout for the TCP idle connection Defaults to `4`.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The ID of the Load Balancer in which to create the Outbound Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? loadbalancerId;
  /// Specifies the name of the Outbound Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`.
  final pulumi.Input<String>? protocol;
  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  final pulumi.Input<bool>? tcpResetEnabled;

  /// Creates a new [OutboundRuleState].
  /// [allocatedOutboundPorts] The number of outbound ports to be used for NAT. Defaults to `1024`.
  /// [backendAddressPoolId] The ID of the Backend Address Pool. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  /// [enableTcpReset] Optional.
  /// [frontendIpConfigurations] One or more `frontend_ip_configuration` blocks as defined below.
  /// [idleTimeoutInMinutes] The timeout for the TCP idle connection Defaults to `4`.
  /// [loadbalancerId] The ID of the Load Balancer in which to create the Outbound Rule. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Outbound Rule. Changing this forces a new resource to be created.
  /// [protocol] The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`.
  /// [tcpResetEnabled] Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  OutboundRuleState({
    pulumi.Output<int>? allocatedOutboundPorts,
    pulumi.Output<String>? backendAddressPoolId,
    pulumi.Output<bool>? enableTcpReset,
    pulumi.Output<List<OutboundRuleFrontendIpConfiguration>>? frontendIpConfigurations,
    pulumi.Output<int>? idleTimeoutInMinutes,
    pulumi.Output<String>? loadbalancerId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protocol,
    pulumi.Output<bool>? tcpResetEnabled,
  }) :
      allocatedOutboundPorts = pulumi.Input.asOptionalInput<int>(allocatedOutboundPorts),
      backendAddressPoolId = pulumi.Input.asOptionalInput<String>(backendAddressPoolId),
      enableTcpReset = pulumi.Input.asOptionalInput<bool>(enableTcpReset),
      frontendIpConfigurations = pulumi.Input.asOptionalInput<List<OutboundRuleFrontendIpConfiguration>>(frontendIpConfigurations),
      idleTimeoutInMinutes = pulumi.Input.asOptionalInput<int>(idleTimeoutInMinutes),
      loadbalancerId = pulumi.Input.asOptionalInput<String>(loadbalancerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      tcpResetEnabled = pulumi.Input.asOptionalInput<bool>(tcpResetEnabled);

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
      allocatedOutboundPorts: map['allocatedOutboundPorts'] == null ? null : pulumi.Output.create<int>(map['allocatedOutboundPorts'] as int),
      backendAddressPoolId: map['backendAddressPoolId'] == null ? null : pulumi.Output.create<String>(map['backendAddressPoolId'] as String),
      enableTcpReset: map['enableTcpReset'] == null ? null : pulumi.Output.create<bool>(map['enableTcpReset'] as bool),
      frontendIpConfigurations: map['frontendIpConfigurations'] == null ? null : pulumi.Output.create<List<OutboundRuleFrontendIpConfiguration>>(pulumi.Input.decodeList<OutboundRuleFrontendIpConfiguration>(map['frontendIpConfigurations'], (value) => OutboundRuleFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : pulumi.Output.create<int>(map['idleTimeoutInMinutes'] as int),
      loadbalancerId: map['loadbalancerId'] == null ? null : pulumi.Output.create<String>(map['loadbalancerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      tcpResetEnabled: map['tcpResetEnabled'] == null ? null : pulumi.Output.create<bool>(map['tcpResetEnabled'] as bool),
    );
  }
}

