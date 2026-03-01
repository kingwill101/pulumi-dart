// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatPool resources.
class NatPoolState {
  /// The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive.
  final pulumi.Input<int>? backendPort;
  /// Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group.
  final pulumi.Input<bool>? floatingIpEnabled;
  final pulumi.Input<String>? frontendIpConfigurationId;
  /// The name of the frontend IP configuration exposing this rule.
  final pulumi.Input<String>? frontendIpConfigurationName;
  /// The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
  final pulumi.Input<int>? frontendPortEnd;
  /// The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
  final pulumi.Input<int>? frontendPortStart;
  /// Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30`. Defaults to `4`.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? loadbalancerId;
  /// Specifies the name of the NAT pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The transport protocol for the external endpoint. Possible values are `All`, `Tcp` and `Udp`.
  final pulumi.Input<String>? protocol;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Is TCP Reset enabled for this Load Balancer Rule?
  final pulumi.Input<bool>? tcpResetEnabled;

  /// Creates a new [NatPoolState].
  /// [backendPort] The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive.
  /// [floatingIpEnabled] Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group.
  /// [frontendIpConfigurationId] Optional.
  /// [frontendIpConfigurationName] The name of the frontend IP configuration exposing this rule.
  /// [frontendPortEnd] The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
  /// [frontendPortStart] The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
  /// [idleTimeoutInMinutes] Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30`. Defaults to `4`.
  /// [loadbalancerId] The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the NAT pool. Changing this forces a new resource to be created.
  /// [protocol] The transport protocol for the external endpoint. Possible values are `All`, `Tcp` and `Udp`.
  /// [resourceGroupName] The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  /// [tcpResetEnabled] Is TCP Reset enabled for this Load Balancer Rule?
  NatPoolState({
    pulumi.Output<int>? backendPort,
    pulumi.Output<bool>? floatingIpEnabled,
    pulumi.Output<String>? frontendIpConfigurationId,
    pulumi.Output<String>? frontendIpConfigurationName,
    pulumi.Output<int>? frontendPortEnd,
    pulumi.Output<int>? frontendPortStart,
    pulumi.Output<int>? idleTimeoutInMinutes,
    pulumi.Output<String>? loadbalancerId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<bool>? tcpResetEnabled,
  }) :
      backendPort = pulumi.Input.asOptionalInput<int>(backendPort),
      floatingIpEnabled = pulumi.Input.asOptionalInput<bool>(floatingIpEnabled),
      frontendIpConfigurationId = pulumi.Input.asOptionalInput<String>(frontendIpConfigurationId),
      frontendIpConfigurationName = pulumi.Input.asOptionalInput<String>(frontendIpConfigurationName),
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
      'backendPort': ?backendPort,
      'floatingIpEnabled': ?floatingIpEnabled,
      'frontendIpConfigurationId': ?frontendIpConfigurationId,
      'frontendIpConfigurationName': ?frontendIpConfigurationName,
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

  factory NatPoolState.fromMap(Map<String, dynamic> map) {
    return NatPoolState(
      backendPort: map['backendPort'] == null ? null : pulumi.Output.create<int>(map['backendPort'] as int),
      floatingIpEnabled: map['floatingIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['floatingIpEnabled'] as bool),
      frontendIpConfigurationId: map['frontendIpConfigurationId'] == null ? null : pulumi.Output.create<String>(map['frontendIpConfigurationId'] as String),
      frontendIpConfigurationName: map['frontendIpConfigurationName'] == null ? null : pulumi.Output.create<String>(map['frontendIpConfigurationName'] as String),
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

