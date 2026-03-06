// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'port_allowed_address_pair.dart';
import 'port_binding.dart';
import 'port_extra_dhcp_option.dart';
import 'port_fixed_ip.dart';

/// {@template pulumi_networking_port_port_args_doc}
/// The set of arguments for Port.
/// {@endtemplate}
/// {@macro pulumi_networking_port_port_args_doc}
class PortArgs {
  /// Administrative up/down status for the port
  /// (must be `true` or `false` if provided). Changing this updates the
  /// `admin_state_up` of an existing port.
  final pulumi.Input<bool>? adminStateUp;
  /// An IP/MAC Address pair of additional IP
  /// addresses that can be active on this port. The structure is described
  /// below.
  final pulumi.Input<List<PortAllowedAddressPair>>? allowedAddressPairs;
  /// The port binding allows to specify binding information
  /// for the port. The structure is described below.
  final pulumi.Input<PortBinding>? binding;
  /// Human-readable description of the port. Changing
  /// this updates the `description` of an existing port.
  final pulumi.Input<String>? description;
  /// The ID of the device attached to the port. Changing this
  /// creates a new port.
  final pulumi.Input<String>? deviceId;
  /// The device owner of the port. Changing this creates
  /// a new port.
  final pulumi.Input<String>? deviceOwner;
  /// The port DNS name. Available, when Neutron DNS extension
  /// is enabled.
  final pulumi.Input<String>? dnsName;
  /// An extra DHCP option that needs to be configured
  /// on the port. The structure is described below. Can be specified multiple
  /// times.
  final pulumi.Input<List<PortExtraDhcpOption>>? extraDhcpOptions;
  /// An array of desired IPs for
  /// this port. The structure is described below.
  final pulumi.Input<List<PortFixedIp>>? fixedIps;
  /// Specify a specific MAC address for the port. Changing
  /// this creates a new port.
  final pulumi.Input<String>? macAddress;
  /// A unique name for the port. Changing this
  /// updates the `name` of an existing port.
  final pulumi.Input<String>? name;
  /// The ID of the network to attach the port to. Changing
  /// this creates a new port.
  final pulumi.Input<String> networkId;
  /// Create a port with no fixed
  /// IP address. This will also remove any fixed IPs previously set on a port. `true`
  /// is the only valid value for this argument.
  final pulumi.Input<bool>? noFixedIp;
  /// If set to
  /// `true`, then no security groups are applied to the port. If set to `false` and
  /// no `security_group_ids` are specified, then the port will yield to the default
  /// behavior of the Networking service, which is to usually apply the "default"
  /// security group.
  final pulumi.Input<bool>? noSecurityGroups;
  /// Whether to explicitly enable or disable
  /// port security on the port. Port Security is usually enabled by default, so
  /// omitting argument will usually result in a value of `true`. Setting this
  /// explicitly to `false` will disable port security. In order to disable port
  /// security, the port must not have any security groups. Valid values are `true`
  /// and `false`.
  final pulumi.Input<bool>? portSecurityEnabled;
  /// Reference to the associated QoS policy.
  final pulumi.Input<String>? qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a port. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// port.
  final pulumi.Input<String>? region;
  /// A list
  /// of security group IDs to apply to the port. The security groups must be
  /// specified by ID and not name (as opposed to how they are configured with
  /// the Compute Instance).
  final pulumi.Input<List<String>>? securityGroupIds;
  /// A set of string tags for the port.
  final pulumi.Input<List<String>>? tags;
  /// The owner of the port. Required if admin wants
  /// to create a port for another tenant. Changing this creates a new port.
  final pulumi.Input<String>? tenantId;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [PortArgs].
  /// [adminStateUp] Administrative up/down status for the port
  /// [allowedAddressPairs] An IP/MAC Address pair of additional IP
  /// [binding] The port binding allows to specify binding information
  /// [description] Human-readable description of the port. Changing
  /// [deviceId] The ID of the device attached to the port. Changing this
  /// [deviceOwner] The device owner of the port. Changing this creates
  /// [dnsName] The port DNS name. Available, when Neutron DNS extension
  /// [extraDhcpOptions] An extra DHCP option that needs to be configured
  /// [fixedIps] An array of desired IPs for
  /// [macAddress] Specify a specific MAC address for the port. Changing
  /// [name] A unique name for the port. Changing this
  /// [networkId] The ID of the network to attach the port to. Changing
  /// [noFixedIp] Create a port with no fixed
  /// [noSecurityGroups] If set to
  /// [portSecurityEnabled] Whether to explicitly enable or disable
  /// [qosPolicyId] Reference to the associated QoS policy.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [securityGroupIds] A list
  /// [tags] A set of string tags for the port.
  /// [tenantId] The owner of the port. Required if admin wants
  /// [valueSpecs] Map of additional options.
  const PortArgs({
    this.adminStateUp,
    this.allowedAddressPairs,
    this.binding,
    this.description,
    this.deviceId,
    this.deviceOwner,
    this.dnsName,
    this.extraDhcpOptions,
    this.fixedIps,
    this.macAddress,
    this.name,
    required this.networkId,
    this.noFixedIp,
    this.noSecurityGroups,
    this.portSecurityEnabled,
    this.qosPolicyId,
    this.region,
    this.securityGroupIds,
    this.tags,
    this.tenantId,
    this.valueSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'allowedAddressPairs': ?pulumi.Input.mapOptionalInputValue<List<PortAllowedAddressPair>, List<Map<String, dynamic>>>(allowedAddressPairs, (value) => pulumi.Input.encodeList<PortAllowedAddressPair, Map<String, dynamic>>(value, (value) => value.toMap())),
      'binding': ?pulumi.Input.mapOptionalInputValue<PortBinding, Map<String, dynamic>>(binding, (value) => value.toMap()),
      'description': ?description,
      'deviceId': ?deviceId,
      'deviceOwner': ?deviceOwner,
      'dnsName': ?dnsName,
      'extraDhcpOptions': ?pulumi.Input.mapOptionalInputValue<List<PortExtraDhcpOption>, List<Map<String, dynamic>>>(extraDhcpOptions, (value) => pulumi.Input.encodeList<PortExtraDhcpOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fixedIps': ?pulumi.Input.mapOptionalInputValue<List<PortFixedIp>, List<Map<String, dynamic>>>(fixedIps, (value) => pulumi.Input.encodeList<PortFixedIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'macAddress': ?macAddress,
      'name': ?name,
      'networkId': networkId,
      'noFixedIp': ?noFixedIp,
      'noSecurityGroups': ?noSecurityGroups,
      'portSecurityEnabled': ?portSecurityEnabled,
      'qosPolicyId': ?qosPolicyId,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory PortArgs.fromMap(Map<String, dynamic> map) {
    return PortArgs(
      adminStateUp: (() { final guardedValue = map['adminStateUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedAddressPairs: (() { final guardedValue = map['allowedAddressPairs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PortAllowedAddressPair>(guardedValue, (value) => PortAllowedAddressPair.fromMap((value as Map).cast<String, dynamic>()))); })(),
      binding: (() { final guardedValue = map['binding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PortBinding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceId: (() { final guardedValue = map['deviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceOwner: (() { final guardedValue = map['deviceOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extraDhcpOptions: (() { final guardedValue = map['extraDhcpOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PortExtraDhcpOption>(guardedValue, (value) => PortExtraDhcpOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fixedIps: (() { final guardedValue = map['fixedIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PortFixedIp>(guardedValue, (value) => PortFixedIp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: pulumi.Input.fromValue(map['networkId'] as String),
      noFixedIp: (() { final guardedValue = map['noFixedIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      noSecurityGroups: (() { final guardedValue = map['noSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      portSecurityEnabled: (() { final guardedValue = map['portSecurityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      qosPolicyId: (() { final guardedValue = map['qosPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueSpecs: (() { final guardedValue = map['valueSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

