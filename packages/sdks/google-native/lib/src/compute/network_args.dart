// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_network_firewall_policy_enforcement_order.dart';
import 'network_routing_config.dart';

/// {@template pulumi_compute_alpha_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_network_args_doc}
class NetworkArgs {
  /// Must be set to create a VPC network. If not set, a legacy network is created. When set to true, the VPC network is created in auto mode. When set to false, the VPC network is created in custom mode. An auto mode VPC network starts with one subnet per region. Each subnet has a predetermined range as described in Auto mode VPC network IP ranges. For custom mode VPC networks, you can add subnets using the subnetworks insert method.
  final pulumi.Input<bool>? autoCreateSubnetworks;
  /// An optional description of this resource. Provide this field when you create the resource.
  final pulumi.Input<String>? description;
  /// Enable ULA internal ipv6 on this network. Enabling this feature will assign a /48 from google defined ULA prefix fd20::/20. .
  final pulumi.Input<bool>? enableUlaInternalIpv6;
  /// When enabling ula internal ipv6, caller optionally can specify the /48 range they want from the google defined ULA prefix fd20::/20. The input must be a valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will fail if the speficied /48 is already in used by another resource. If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field. .
  final pulumi.Input<String>? internalIpv6Range;
  /// Deprecated in favor of subnet mode networks. The range of internal addresses that are legal on this network. This range is a CIDR specification, for example: 192.168.0.0/16. Provided by the client when the network is created.
  final pulumi.Input<String>? ipv4Range;
  /// Maximum Transmission Unit in bytes. The minimum value for this field is 1300 and the maximum value is 8896. The suggested value is 1500, which is the default MTU used on the Internet, or 8896 if you want to use Jumbo frames. If unspecified, the value defaults to 1460.
  final pulumi.Input<int>? mtu;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  final pulumi.Input<String>? name;
  /// The network firewall policy enforcement order. Can be either AFTER_CLASSIC_FIREWALL or BEFORE_CLASSIC_FIREWALL. Defaults to AFTER_CLASSIC_FIREWALL if the field is not specified.
  final pulumi.Input<NetworkNetworkFirewallPolicyEnforcementOrder>? networkFirewallPolicyEnforcementOrder;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The network-level routing configuration for this network. Used by Cloud Router to determine what type of network-wide routing behavior to enforce.
  final pulumi.Input<NetworkRoutingConfig>? routingConfig;

  /// Creates a new [NetworkArgs].
  /// [autoCreateSubnetworks] Must be set to create a VPC network. If not set, a legacy network is created. When set to true, the VPC network is created in auto mode. When set to false, the VPC network is created in custom mode. An auto mode VPC network starts with one subnet per region. Each subnet has a predetermined range as described in Auto mode VPC network IP ranges. For custom mode VPC networks, you can add subnets using the subnetworks insert method.
  /// [description] An optional description of this resource. Provide this field when you create the resource.
  /// [enableUlaInternalIpv6] Enable ULA internal ipv6 on this network. Enabling this feature will assign a /48 from google defined ULA prefix fd20::/20. .
  /// [internalIpv6Range] When enabling ula internal ipv6, caller optionally can specify the /48 range they want from the google defined ULA prefix fd20::/20. The input must be a valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will fail if the speficied /48 is already in used by another resource. If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field. .
  /// [ipv4Range] Deprecated in favor of subnet mode networks. The range of internal addresses that are legal on this network. This range is a CIDR specification, for example: 192.168.0.0/16. Provided by the client when the network is created.
  /// [mtu] Maximum Transmission Unit in bytes. The minimum value for this field is 1300 and the maximum value is 8896. The suggested value is 1500, which is the default MTU used on the Internet, or 8896 if you want to use Jumbo frames. If unspecified, the value defaults to 1460.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  /// [networkFirewallPolicyEnforcementOrder] The network firewall policy enforcement order. Can be either AFTER_CLASSIC_FIREWALL or BEFORE_CLASSIC_FIREWALL. Defaults to AFTER_CLASSIC_FIREWALL if the field is not specified.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [routingConfig] The network-level routing configuration for this network. Used by Cloud Router to determine what type of network-wide routing behavior to enforce.
  const NetworkArgs({
    this.autoCreateSubnetworks,
    this.description,
    this.enableUlaInternalIpv6,
    this.internalIpv6Range,
    this.ipv4Range,
    this.mtu,
    this.name,
    this.networkFirewallPolicyEnforcementOrder,
    this.project,
    this.requestId,
    this.routingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateSubnetworks': ?autoCreateSubnetworks,
      'description': ?description,
      'enableUlaInternalIpv6': ?enableUlaInternalIpv6,
      'internalIpv6Range': ?internalIpv6Range,
      'ipv4Range': ?ipv4Range,
      'mtu': ?mtu,
      'name': ?name,
      'networkFirewallPolicyEnforcementOrder': ?pulumi.Input.mapOptionalInputValue<NetworkNetworkFirewallPolicyEnforcementOrder, String>(networkFirewallPolicyEnforcementOrder, (value) => value.wireValue),
      'project': ?project,
      'requestId': ?requestId,
      'routingConfig': ?pulumi.Input.mapOptionalInputValue<NetworkRoutingConfig, Map<String, dynamic>>(routingConfig, (value) => value.toMap()),
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      autoCreateSubnetworks: (() { final guardedValue = map['autoCreateSubnetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableUlaInternalIpv6: (() { final guardedValue = map['enableUlaInternalIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      internalIpv6Range: (() { final guardedValue = map['internalIpv6Range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4Range: (() { final guardedValue = map['ipv4Range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFirewallPolicyEnforcementOrder: (() { final guardedValue = map['networkFirewallPolicyEnforcementOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkNetworkFirewallPolicyEnforcementOrder.fromValue(guardedValue as String)); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingConfig: (() { final guardedValue = map['routingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkRoutingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

