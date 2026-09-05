// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NatPool resources.
class NatPoolState {
  /// The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive.
  final pulumi.Input<int?>? backendPort;
  /// Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group.
  final pulumi.Input<bool?>? floatingIpEnabled;
  final pulumi.Input<String?>? frontendIpConfigurationId;
  /// The name of the frontend IP configuration exposing this rule.
  final pulumi.Input<String?>? frontendIpConfigurationName;
  /// The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
  final pulumi.Input<int?>? frontendPortEnd;
  /// The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
  final pulumi.Input<int?>? frontendPortStart;
  /// Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30`. Defaults to `4`.
  final pulumi.Input<int?>? idleTimeoutInMinutes;
  /// The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? loadbalancerId;
  /// Specifies the name of the NAT pool. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The transport protocol for the external endpoint. Possible values are `All`, `Tcp` and `Udp`.
  final pulumi.Input<String?>? protocol;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// Is TCP Reset enabled for this Load Balancer Rule?
  final pulumi.Input<bool?>? tcpResetEnabled;

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
  const NatPoolState({
    this.backendPort,
    this.floatingIpEnabled,
    this.frontendIpConfigurationId,
    this.frontendIpConfigurationName,
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
      backendPort: (() { final guardedValue = map['backendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      floatingIpEnabled: (() { final guardedValue = map['floatingIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frontendIpConfigurationId: (() { final guardedValue = map['frontendIpConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendIpConfigurationName: (() { final guardedValue = map['frontendIpConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
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
