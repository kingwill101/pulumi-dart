// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_nat_pool_nat_pool_args_doc}
/// The set of arguments for NatPool.
/// {@endtemplate}
/// {@macro pulumi_lb_nat_pool_nat_pool_args_doc}
class NatPoolArgs {
  /// The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive.
  final pulumi.Input<int> backendPort;
  /// Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group.
  final pulumi.Input<bool>? floatingIpEnabled;
  /// The name of the frontend IP configuration exposing this rule.
  final pulumi.Input<String> frontendIpConfigurationName;
  /// The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
  final pulumi.Input<int> frontendPortEnd;
  /// The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
  final pulumi.Input<int> frontendPortStart;
  /// Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30`. Defaults to `4`.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created.
  final pulumi.Input<String> loadbalancerId;
  /// Specifies the name of the NAT pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The transport protocol for the external endpoint. Possible values are `All`, `Tcp` and `Udp`.
  final pulumi.Input<String> protocol;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Is TCP Reset enabled for this Load Balancer Rule?
  final pulumi.Input<bool>? tcpResetEnabled;

  /// Creates a new [NatPoolArgs].
  /// [backendPort] The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive.
  /// [floatingIpEnabled] Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group.
  /// [frontendIpConfigurationName] The name of the frontend IP configuration exposing this rule.
  /// [frontendPortEnd] The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
  /// [frontendPortStart] The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
  /// [idleTimeoutInMinutes] Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30`. Defaults to `4`.
  /// [loadbalancerId] The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the NAT pool. Changing this forces a new resource to be created.
  /// [protocol] The transport protocol for the external endpoint. Possible values are `All`, `Tcp` and `Udp`.
  /// [resourceGroupName] The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  /// [tcpResetEnabled] Is TCP Reset enabled for this Load Balancer Rule?
  NatPoolArgs({
    required pulumi.Output<int> backendPort,
    pulumi.Output<bool>? floatingIpEnabled,
    required pulumi.Output<String> frontendIpConfigurationName,
    required pulumi.Output<int> frontendPortEnd,
    required pulumi.Output<int> frontendPortStart,
    pulumi.Output<int>? idleTimeoutInMinutes,
    required pulumi.Output<String> loadbalancerId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> protocol,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? tcpResetEnabled,
  }) :
      backendPort = pulumi.Input.asInput<int>(backendPort),
      floatingIpEnabled = pulumi.Input.asOptionalInput<bool>(floatingIpEnabled),
      frontendIpConfigurationName = pulumi.Input.asInput<String>(frontendIpConfigurationName),
      frontendPortEnd = pulumi.Input.asInput<int>(frontendPortEnd),
      frontendPortStart = pulumi.Input.asInput<int>(frontendPortStart),
      idleTimeoutInMinutes = pulumi.Input.asOptionalInput<int>(idleTimeoutInMinutes),
      loadbalancerId = pulumi.Input.asInput<String>(loadbalancerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      protocol = pulumi.Input.asInput<String>(protocol),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tcpResetEnabled = pulumi.Input.asOptionalInput<bool>(tcpResetEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': backendPort,
      'floatingIpEnabled': ?floatingIpEnabled,
      'frontendIpConfigurationName': frontendIpConfigurationName,
      'frontendPortEnd': frontendPortEnd,
      'frontendPortStart': frontendPortStart,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'loadbalancerId': loadbalancerId,
      'name': ?name,
      'protocol': protocol,
      'resourceGroupName': resourceGroupName,
      'tcpResetEnabled': ?tcpResetEnabled,
    };
  }

  factory NatPoolArgs.fromMap(Map<String, dynamic> map) {
    return NatPoolArgs(
      backendPort: pulumi.Output.create<int>(map['backendPort'] as int),
      floatingIpEnabled: map['floatingIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['floatingIpEnabled'] as bool),
      frontendIpConfigurationName: pulumi.Output.create<String>(map['frontendIpConfigurationName'] as String),
      frontendPortEnd: pulumi.Output.create<int>(map['frontendPortEnd'] as int),
      frontendPortStart: pulumi.Output.create<int>(map['frontendPortStart'] as int),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : pulumi.Output.create<int>(map['idleTimeoutInMinutes'] as int),
      loadbalancerId: pulumi.Output.create<String>(map['loadbalancerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protocol: pulumi.Output.create<String>(map['protocol'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tcpResetEnabled: map['tcpResetEnabled'] == null ? null : pulumi.Output.create<bool>(map['tcpResetEnabled'] as bool),
    );
  }
}

