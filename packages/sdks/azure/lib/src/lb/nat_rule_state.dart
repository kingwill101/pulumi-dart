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
    pulumi.Output<String>? backendAddressPoolId,
    pulumi.Output<String>? backendIpConfigurationId,
    pulumi.Output<int>? backendPort,
    pulumi.Output<bool>? enableFloatingIp,
    pulumi.Output<bool>? enableTcpReset,
    pulumi.Output<bool>? floatingIpEnabled,
    pulumi.Output<String>? frontendIpConfigurationId,
    pulumi.Output<String>? frontendIpConfigurationName,
    pulumi.Output<int>? frontendPort,
    pulumi.Output<int>? frontendPortEnd,
    pulumi.Output<int>? frontendPortStart,
    pulumi.Output<int>? idleTimeoutInMinutes,
    pulumi.Output<String>? loadbalancerId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<bool>? tcpResetEnabled,
  }) :
      backendAddressPoolId = pulumi.Input.asOptionalInput<String>(backendAddressPoolId),
      backendIpConfigurationId = pulumi.Input.asOptionalInput<String>(backendIpConfigurationId),
      backendPort = pulumi.Input.asOptionalInput<int>(backendPort),
      enableFloatingIp = pulumi.Input.asOptionalInput<bool>(enableFloatingIp),
      enableTcpReset = pulumi.Input.asOptionalInput<bool>(enableTcpReset),
      floatingIpEnabled = pulumi.Input.asOptionalInput<bool>(floatingIpEnabled),
      frontendIpConfigurationId = pulumi.Input.asOptionalInput<String>(frontendIpConfigurationId),
      frontendIpConfigurationName = pulumi.Input.asOptionalInput<String>(frontendIpConfigurationName),
      frontendPort = pulumi.Input.asOptionalInput<int>(frontendPort),
      frontendPortEnd = pulumi.Input.asOptionalInput<int>(frontendPortEnd),
      frontendPortStart = pulumi.Input.asOptionalInput<int>(frontendPortStart),
      idleTimeoutInMinutes = pulumi.Input.asOptionalInput<int>(idleTimeoutInMinutes),
      loadbalancerId = pulumi.Input.asOptionalInput<String>(loadbalancerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tcpResetEnabled = pulumi.Input.asOptionalInput<bool>(tcpResetEnabled);

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
      backendAddressPoolId: map['backendAddressPoolId'] == null ? null : pulumi.Output.create<String>(map['backendAddressPoolId'] as String),
      backendIpConfigurationId: map['backendIpConfigurationId'] == null ? null : pulumi.Output.create<String>(map['backendIpConfigurationId'] as String),
      backendPort: map['backendPort'] == null ? null : pulumi.Output.create<int>(map['backendPort'] as int),
      enableFloatingIp: map['enableFloatingIp'] == null ? null : pulumi.Output.create<bool>(map['enableFloatingIp'] as bool),
      enableTcpReset: map['enableTcpReset'] == null ? null : pulumi.Output.create<bool>(map['enableTcpReset'] as bool),
      floatingIpEnabled: map['floatingIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['floatingIpEnabled'] as bool),
      frontendIpConfigurationId: map['frontendIpConfigurationId'] == null ? null : pulumi.Output.create<String>(map['frontendIpConfigurationId'] as String),
      frontendIpConfigurationName: map['frontendIpConfigurationName'] == null ? null : pulumi.Output.create<String>(map['frontendIpConfigurationName'] as String),
      frontendPort: map['frontendPort'] == null ? null : pulumi.Output.create<int>(map['frontendPort'] as int),
      frontendPortEnd: map['frontendPortEnd'] == null ? null : pulumi.Output.create<int>(map['frontendPortEnd'] as int),
      frontendPortStart: map['frontendPortStart'] == null ? null : pulumi.Output.create<int>(map['frontendPortStart'] as int),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : pulumi.Output.create<int>(map['idleTimeoutInMinutes'] as int),
      loadbalancerId: map['loadbalancerId'] == null ? null : pulumi.Output.create<String>(map['loadbalancerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tcpResetEnabled: map['tcpResetEnabled'] == null ? null : pulumi.Output.create<bool>(map['tcpResetEnabled'] as bool),
    );
  }
}

