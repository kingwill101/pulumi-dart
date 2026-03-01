// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// A list of reference to a Backend Address Pool over which this Load Balancing Rule operates.
  ///
  /// > **Note:** In most cases users can only set one Backend Address Pool ID in the `backend_address_pool_ids`. Especially, when the sku of the LB is `Gateway`, users can set up to two IDs in the `backend_address_pool_ids`.
  final pulumi.Input<List<String>>? backendAddressPoolIds;
  /// The port used for internal connections on the endpoint. Possible values range between 0 and 65535, inclusive. A port of `0` means "Any Port".
  final pulumi.Input<int>? backendPort;
  /// Is snat enabled for this Load Balancer Rule? Default `false`.
  final pulumi.Input<bool>? disableOutboundSnat;
  final pulumi.Input<bool>? enableFloatingIp;
  final pulumi.Input<bool>? enableTcpReset;
  /// Are the Floating IPs enabled for this Load Balancer Rule? A "floating" IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to `false`.
  final pulumi.Input<bool>? floatingIpEnabled;
  final pulumi.Input<String>? frontendIpConfigurationId;
  /// The name of the frontend IP configuration to which the rule is associated.
  final pulumi.Input<String>? frontendIpConfigurationName;
  /// The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 0 and 65534, inclusive. A port of `0` means "Any Port".
  final pulumi.Input<int>? frontendPort;
  /// Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `100` minutes. Defaults to `4` minutes.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// Specifies the load balancing distribution type to be used by the Load Balancer. Possible values are `Default`, `SourceIP` and `SourceIPProtocol`. Defaults to `Default.`
  /// * `Default` – The load balancer is configured to use a 5 tuple hash to map traffic to available servers.
  /// * `SourceIP` – The load balancer is configured to use a 2 tuple hash to map traffic to available servers.
  /// * `SourceIPProtocol` – The load balancer is configured to use a 3 tuple hash to map traffic to available servers.
  ///
  /// > **Note:** In the portal, this is known as Session Persistence where the options are `None`, `Client IP` and `Client IP and Protocol` respectively.
  final pulumi.Input<String>? loadDistribution;
  /// The ID of the Load Balancer in which to create the Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? loadbalancerId;
  /// Specifies the name of the LB Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A reference to a Probe used by this Load Balancing Rule.
  final pulumi.Input<String>? probeId;
  /// The transport protocol for the external endpoint. Possible values are `Tcp`, `Udp` or `All`.
  final pulumi.Input<String>? protocol;
  /// Is TCP Reset enabled for this Load Balancer Rule?
  final pulumi.Input<bool>? tcpResetEnabled;

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
  RuleState({
    pulumi.Output<List<String>>? backendAddressPoolIds,
    pulumi.Output<int>? backendPort,
    pulumi.Output<bool>? disableOutboundSnat,
    pulumi.Output<bool>? enableFloatingIp,
    pulumi.Output<bool>? enableTcpReset,
    pulumi.Output<bool>? floatingIpEnabled,
    pulumi.Output<String>? frontendIpConfigurationId,
    pulumi.Output<String>? frontendIpConfigurationName,
    pulumi.Output<int>? frontendPort,
    pulumi.Output<int>? idleTimeoutInMinutes,
    pulumi.Output<String>? loadDistribution,
    pulumi.Output<String>? loadbalancerId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? probeId,
    pulumi.Output<String>? protocol,
    pulumi.Output<bool>? tcpResetEnabled,
  }) :
      backendAddressPoolIds = pulumi.Input.asOptionalInput<List<String>>(backendAddressPoolIds),
      backendPort = pulumi.Input.asOptionalInput<int>(backendPort),
      disableOutboundSnat = pulumi.Input.asOptionalInput<bool>(disableOutboundSnat),
      enableFloatingIp = pulumi.Input.asOptionalInput<bool>(enableFloatingIp),
      enableTcpReset = pulumi.Input.asOptionalInput<bool>(enableTcpReset),
      floatingIpEnabled = pulumi.Input.asOptionalInput<bool>(floatingIpEnabled),
      frontendIpConfigurationId = pulumi.Input.asOptionalInput<String>(frontendIpConfigurationId),
      frontendIpConfigurationName = pulumi.Input.asOptionalInput<String>(frontendIpConfigurationName),
      frontendPort = pulumi.Input.asOptionalInput<int>(frontendPort),
      idleTimeoutInMinutes = pulumi.Input.asOptionalInput<int>(idleTimeoutInMinutes),
      loadDistribution = pulumi.Input.asOptionalInput<String>(loadDistribution),
      loadbalancerId = pulumi.Input.asOptionalInput<String>(loadbalancerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      probeId = pulumi.Input.asOptionalInput<String>(probeId),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      tcpResetEnabled = pulumi.Input.asOptionalInput<bool>(tcpResetEnabled);

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
      backendAddressPoolIds: map['backendAddressPoolIds'] == null ? null : pulumi.Output.create<List<String>>((map['backendAddressPoolIds'] as List).cast<String>()),
      backendPort: map['backendPort'] == null ? null : pulumi.Output.create<int>(map['backendPort'] as int),
      disableOutboundSnat: map['disableOutboundSnat'] == null ? null : pulumi.Output.create<bool>(map['disableOutboundSnat'] as bool),
      enableFloatingIp: map['enableFloatingIp'] == null ? null : pulumi.Output.create<bool>(map['enableFloatingIp'] as bool),
      enableTcpReset: map['enableTcpReset'] == null ? null : pulumi.Output.create<bool>(map['enableTcpReset'] as bool),
      floatingIpEnabled: map['floatingIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['floatingIpEnabled'] as bool),
      frontendIpConfigurationId: map['frontendIpConfigurationId'] == null ? null : pulumi.Output.create<String>(map['frontendIpConfigurationId'] as String),
      frontendIpConfigurationName: map['frontendIpConfigurationName'] == null ? null : pulumi.Output.create<String>(map['frontendIpConfigurationName'] as String),
      frontendPort: map['frontendPort'] == null ? null : pulumi.Output.create<int>(map['frontendPort'] as int),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : pulumi.Output.create<int>(map['idleTimeoutInMinutes'] as int),
      loadDistribution: map['loadDistribution'] == null ? null : pulumi.Output.create<String>(map['loadDistribution'] as String),
      loadbalancerId: map['loadbalancerId'] == null ? null : pulumi.Output.create<String>(map['loadbalancerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      probeId: map['probeId'] == null ? null : pulumi.Output.create<String>(map['probeId'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      tcpResetEnabled: map['tcpResetEnabled'] == null ? null : pulumi.Output.create<bool>(map['tcpResetEnabled'] as bool),
    );
  }
}

