// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatRule resources.
class NatRuleState {
  /// Specifies a reference to backendAddressPool resource.
  final pulumi.Input<String?>? backendAddressPoolId;
  final pulumi.Input<String?>? backendIpConfigurationId;
  /// The port used for internal connections on the endpoint. Possible values range between 1 and 65535, inclusive.
  final pulumi.Input<int?>? backendPort;
  final pulumi.Input<bool?>? enableFloatingIp;
  final pulumi.Input<bool?>? enableTcpReset;
  /// Are the Floating IPs enabled for this Load Balancer Rule? A "floating" IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to `false`.
  final pulumi.Input<bool?>? floatingIpEnabled;
  final pulumi.Input<String?>? frontendIpConfigurationId;
  /// The name of the frontend IP configuration exposing this rule.
  final pulumi.Input<String?>? frontendIpConfigurationName;
  /// The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 1 and 65534, inclusive.
  final pulumi.Input<int?>? frontendPort;
  /// The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive.
  final pulumi.Input<int?>? frontendPortEnd;
  /// The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive.
  final pulumi.Input<int?>? frontendPortStart;
  /// Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30` minutes. Defaults to `4` minutes.
  final pulumi.Input<int?>? idleTimeoutInMinutes;
  /// The ID of the Load Balancer in which to create the NAT Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? loadbalancerId;
  /// Specifies the name of the NAT Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`.
  final pulumi.Input<String?>? protocol;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// Is TCP Reset enabled for this Load Balancer Rule?
  final pulumi.Input<bool?>? tcpResetEnabled;

  /// Creates a new [NatRuleState].
  /// [backendAddressPoolId] Specifies a reference to backendAddressPool resource.
  /// [backendIpConfigurationId] Optional.
  /// [backendPort] The port used for internal connections on the endpoint. Possible values range between 1 and 65535, inclusive.
  /// [enableFloatingIp] Optional.
  /// [enableTcpReset] Optional.
  /// [floatingIpEnabled] Are the Floating IPs enabled for this Load Balancer Rule? A "floating" IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to `false`.
  /// [frontendIpConfigurationId] Optional.
  /// [frontendIpConfigurationName] The name of the frontend IP configuration exposing this rule.
  /// [frontendPort] The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 1 and 65534, inclusive.
  /// [frontendPortEnd] The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive.
  /// [frontendPortStart] The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive.
  /// [idleTimeoutInMinutes] Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30` minutes. Defaults to `4` minutes.
  /// [loadbalancerId] The ID of the Load Balancer in which to create the NAT Rule. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the NAT Rule. Changing this forces a new resource to be created.
  /// [protocol] The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`.
  /// [resourceGroupName] The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  /// [tcpResetEnabled] Is TCP Reset enabled for this Load Balancer Rule?
  const NatRuleState({
    this.backendAddressPoolId,
    this.backendIpConfigurationId,
    this.backendPort,
    this.enableFloatingIp,
    this.enableTcpReset,
    this.floatingIpEnabled,
    this.frontendIpConfigurationId,
    this.frontendIpConfigurationName,
    this.frontendPort,
    this.frontendPortEnd,
    this.frontendPortStart,
    this.idleTimeoutInMinutes,
    this.loadbalancerId,
    this.name,
    this.protocol,
    this.resourceGroupName,
    this.tcpResetEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': ?backendAddressPoolId,
      'backendIpConfigurationId': ?backendIpConfigurationId,
      'backendPort': ?backendPort,
      'enableFloatingIp': ?enableFloatingIp,
      'enableTcpReset': ?enableTcpReset,
      'floatingIpEnabled': ?floatingIpEnabled,
      'frontendIpConfigurationId': ?frontendIpConfigurationId,
      'frontendIpConfigurationName': ?frontendIpConfigurationName,
      'frontendPort': ?frontendPort,
      'frontendPortEnd': ?frontendPortEnd,
      'frontendPortStart': ?frontendPortStart,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'loadbalancerId': ?loadbalancerId,
      'name': ?name,
      'protocol': ?protocol,
      'resourceGroupName': ?resourceGroupName,
      'tcpResetEnabled': ?tcpResetEnabled,
    };
  }

  factory NatRuleState.fromMap(Map<String, dynamic> map) {
    return NatRuleState(
      backendAddressPoolId: (() { final guardedValue = map['backendAddressPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backendIpConfigurationId: (() { final guardedValue = map['backendIpConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backendPort: (() { final guardedValue = map['backendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      enableFloatingIp: (() { final guardedValue = map['enableFloatingIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableTcpReset: (() { final guardedValue = map['enableTcpReset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      floatingIpEnabled: (() { final guardedValue = map['floatingIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frontendIpConfigurationId: (() { final guardedValue = map['frontendIpConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendIpConfigurationName: (() { final guardedValue = map['frontendIpConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendPort: (() { final guardedValue = map['frontendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      frontendPortEnd: (() { final guardedValue = map['frontendPortEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      frontendPortStart: (() { final guardedValue = map['frontendPortStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      loadbalancerId: (() { final guardedValue = map['loadbalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcpResetEnabled: (() { final guardedValue = map['tcpResetEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
