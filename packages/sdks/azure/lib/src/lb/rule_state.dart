// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// A list of reference to a Backend Address Pool over which this Load Balancing Rule operates.
  ///
  /// &gt; **Note:** In most cases users can only set one Backend Address Pool ID in the `backendAddressPoolIds`. Especially, when the sku of the LB is `Gateway`, users can set up to two IDs in the `backendAddressPoolIds`.
  final pulumi.Input<List<String>?>? backendAddressPoolIds;
  /// The port used for internal connections on the endpoint. Possible values range between 0 and 65535, inclusive. A port of `0` means "Any Port".
  final pulumi.Input<int?>? backendPort;
  /// Is snat enabled for this Load Balancer Rule? Default `false`.
  final pulumi.Input<bool?>? disableOutboundSnat;
  final pulumi.Input<bool?>? enableFloatingIp;
  final pulumi.Input<bool?>? enableTcpReset;
  /// Are the Floating IPs enabled for this Load Balancer Rule? A "floating" IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to `false`.
  final pulumi.Input<bool?>? floatingIpEnabled;
  final pulumi.Input<String?>? frontendIpConfigurationId;
  /// The name of the frontend IP configuration to which the rule is associated.
  final pulumi.Input<String?>? frontendIpConfigurationName;
  /// The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 0 and 65534, inclusive. A port of `0` means "Any Port".
  final pulumi.Input<int?>? frontendPort;
  /// Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `100` minutes. Defaults to `4` minutes.
  final pulumi.Input<int?>? idleTimeoutInMinutes;
  /// Specifies the load balancing distribution type to be used by the Load Balancer. Possible values are `Default`, `SourceIP` and `SourceIPProtocol`. Defaults to `Default.`
  /// * `Default` – The load balancer is configured to use a 5 tuple hash to map traffic to available servers.
  /// * `SourceIP` – The load balancer is configured to use a 2 tuple hash to map traffic to available servers.
  /// * `SourceIPProtocol` – The load balancer is configured to use a 3 tuple hash to map traffic to available servers.
  ///
  /// &gt; **Note:** In the portal, this is known as Session Persistence where the options are `None`, `Client IP` and `Client IP and Protocol` respectively.
  final pulumi.Input<String?>? loadDistribution;
  /// The ID of the Load Balancer in which to create the Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? loadbalancerId;
  /// Specifies the name of the LB Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A reference to a Probe used by this Load Balancing Rule.
  final pulumi.Input<String?>? probeId;
  /// The transport protocol for the external endpoint. Possible values are `Tcp`, `Udp` or `All`.
  final pulumi.Input<String?>? protocol;
  /// Is TCP Reset enabled for this Load Balancer Rule?
  final pulumi.Input<bool?>? tcpResetEnabled;

  /// Creates a new [RuleState].
  /// [backendAddressPoolIds] A list of reference to a Backend Address Pool over which this Load Balancing Rule operates.
  /// [backendPort] The port used for internal connections on the endpoint. Possible values range between 0 and 65535, inclusive. A port of `0` means "Any Port".
  /// [disableOutboundSnat] Is snat enabled for this Load Balancer Rule? Default `false`.
  /// [enableFloatingIp] Optional.
  /// [enableTcpReset] Optional.
  /// [floatingIpEnabled] Are the Floating IPs enabled for this Load Balancer Rule? A "floating" IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to `false`.
  /// [frontendIpConfigurationId] Optional.
  /// [frontendIpConfigurationName] The name of the frontend IP configuration to which the rule is associated.
  /// [frontendPort] The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 0 and 65534, inclusive. A port of `0` means "Any Port".
  /// [idleTimeoutInMinutes] Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `100` minutes. Defaults to `4` minutes.
  /// [loadDistribution] Specifies the load balancing distribution type to be used by the Load Balancer. Possible values are `Default`, `SourceIP` and `SourceIPProtocol`. Defaults to `Default.`
  /// [loadbalancerId] The ID of the Load Balancer in which to create the Rule. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the LB Rule. Changing this forces a new resource to be created.
  /// [probeId] A reference to a Probe used by this Load Balancing Rule.
  /// [protocol] The transport protocol for the external endpoint. Possible values are `Tcp`, `Udp` or `All`.
  /// [tcpResetEnabled] Is TCP Reset enabled for this Load Balancer Rule?
  const RuleState({
    this.backendAddressPoolIds,
    this.backendPort,
    this.disableOutboundSnat,
    this.enableFloatingIp,
    this.enableTcpReset,
    this.floatingIpEnabled,
    this.frontendIpConfigurationId,
    this.frontendIpConfigurationName,
    this.frontendPort,
    this.idleTimeoutInMinutes,
    this.loadDistribution,
    this.loadbalancerId,
    this.name,
    this.probeId,
    this.protocol,
    this.tcpResetEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolIds': ?backendAddressPoolIds,
      'backendPort': ?backendPort,
      'disableOutboundSnat': ?disableOutboundSnat,
      'enableFloatingIp': ?enableFloatingIp,
      'enableTcpReset': ?enableTcpReset,
      'floatingIpEnabled': ?floatingIpEnabled,
      'frontendIpConfigurationId': ?frontendIpConfigurationId,
      'frontendIpConfigurationName': ?frontendIpConfigurationName,
      'frontendPort': ?frontendPort,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'loadDistribution': ?loadDistribution,
      'loadbalancerId': ?loadbalancerId,
      'name': ?name,
      'probeId': ?probeId,
      'protocol': ?protocol,
      'tcpResetEnabled': ?tcpResetEnabled,
    };
  }

  factory RuleState.fromMap(Map<String, dynamic> map) {
    return RuleState(
      backendAddressPoolIds: (() { final guardedValue = map['backendAddressPoolIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backendPort: (() { final guardedValue = map['backendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      disableOutboundSnat: (() { final guardedValue = map['disableOutboundSnat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableFloatingIp: (() { final guardedValue = map['enableFloatingIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableTcpReset: (() { final guardedValue = map['enableTcpReset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      floatingIpEnabled: (() { final guardedValue = map['floatingIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frontendIpConfigurationId: (() { final guardedValue = map['frontendIpConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendIpConfigurationName: (() { final guardedValue = map['frontendIpConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendPort: (() { final guardedValue = map['frontendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      loadDistribution: (() { final guardedValue = map['loadDistribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadbalancerId: (() { final guardedValue = map['loadbalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      probeId: (() { final guardedValue = map['probeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcpResetEnabled: (() { final guardedValue = map['tcpResetEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
