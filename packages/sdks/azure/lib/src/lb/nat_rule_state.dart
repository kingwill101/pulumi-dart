// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatRule resources.
class NatRuleState {
  /// Specifies a reference to backendAddressPool resource.
  final pulumi.Input<String>? backendAddressPoolId;
  final pulumi.Input<String>? backendIpConfigurationId;
  /// The port used for internal connections on the endpoint. Possible values range between 1 and 65535, inclusive.
  final pulumi.Input<int>? backendPort;
  final pulumi.Input<bool>? enableFloatingIp;
  final pulumi.Input<bool>? enableTcpReset;
  /// Are the Floating IPs enabled for this Load Balancer Rule? A "floating" IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to `false`.
  final pulumi.Input<bool>? floatingIpEnabled;
  final pulumi.Input<String>? frontendIpConfigurationId;
  /// The name of the frontend IP configuration exposing this rule.
  final pulumi.Input<String>? frontendIpConfigurationName;
  /// The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 1 and 65534, inclusive.
  final pulumi.Input<int>? frontendPort;
  /// The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive.
  final pulumi.Input<int>? frontendPortEnd;
  /// The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive.
  final pulumi.Input<int>? frontendPortStart;
  /// Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30` minutes. Defaults to `4` minutes.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The ID of the Load Balancer in which to create the NAT Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? loadbalancerId;
  /// Specifies the name of the NAT Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`.
  final pulumi.Input<String>? protocol;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Is TCP Reset enabled for this Load Balancer Rule?
  final pulumi.Input<bool>? tcpResetEnabled;

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
  NatRuleState({
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
      backendAddressPoolId: map['backendAddressPoolId'] == null ? null : (map['backendAddressPoolId'] as String).input(),
      backendIpConfigurationId: map['backendIpConfigurationId'] == null ? null : (map['backendIpConfigurationId'] as String).input(),
      backendPort: map['backendPort'] == null ? null : (map['backendPort'] as int).input(),
      enableFloatingIp: map['enableFloatingIp'] == null ? null : (map['enableFloatingIp'] as bool).input(),
      enableTcpReset: map['enableTcpReset'] == null ? null : (map['enableTcpReset'] as bool).input(),
      floatingIpEnabled: map['floatingIpEnabled'] == null ? null : (map['floatingIpEnabled'] as bool).input(),
      frontendIpConfigurationId: map['frontendIpConfigurationId'] == null ? null : (map['frontendIpConfigurationId'] as String).input(),
      frontendIpConfigurationName: map['frontendIpConfigurationName'] == null ? null : (map['frontendIpConfigurationName'] as String).input(),
      frontendPort: map['frontendPort'] == null ? null : (map['frontendPort'] as int).input(),
      frontendPortEnd: map['frontendPortEnd'] == null ? null : (map['frontendPortEnd'] as int).input(),
      frontendPortStart: map['frontendPortStart'] == null ? null : (map['frontendPortStart'] as int).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes'] as int).input(),
      loadbalancerId: map['loadbalancerId'] == null ? null : (map['loadbalancerId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tcpResetEnabled: map['tcpResetEnabled'] == null ? null : (map['tcpResetEnabled'] as bool).input(),
    );
  }
}

