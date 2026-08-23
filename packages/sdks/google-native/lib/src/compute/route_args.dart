// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_ilb_route_behavior_on_unhealthy.dart';

/// {@template pulumi_compute_alpha_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_route_args_doc}
class RouteArgs {
  /// Whether this route can conflict with existing subnetworks. Setting this to true allows this route to conflict with subnetworks that have already been configured on the corresponding network.
  final pulumi.Input<bool>? allowConflictingSubnetworks;
  /// An optional description of this resource. Provide this field when you create the resource.
  final pulumi.Input<String>? description;
  /// The destination range of outgoing packets that this route applies to. Both IPv4 and IPv6 are supported. Must specify an IPv4 range (e.g. 192.0.2.0/24) or an IPv6 range in RFC 4291 format (e.g. 2001:db8::/32). IPv6 range will be displayed using RFC 5952 compressed format.
  final pulumi.Input<String>? destRange;
  /// ILB route behavior when ILB is deemed unhealthy based on user specified threshold on the Backend Service of the internal load balancing.
  final pulumi.Input<RouteIlbRouteBehaviorOnUnhealthy>? ilbRouteBehaviorOnUnhealthy;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  final pulumi.Input<String>? name;
  /// Fully-qualified URL of the network that this route applies to.
  final pulumi.Input<String>? network;
  /// The URL to a gateway that should handle matching packets. You can only specify the internet gateway using a full or partial valid URL: projects/ project/global/gateways/default-internet-gateway
  final pulumi.Input<String>? nextHopGateway;
  /// The URL to a forwarding rule of type loadBalancingScheme=INTERNAL that should handle matching packets or the IP address of the forwarding Rule. For example, the following are all valid URLs: - 10.128.0.56 - https://www.googleapis.com/compute/v1/projects/project/regions/region /forwardingRules/forwardingRule - regions/region/forwardingRules/forwardingRule
  final pulumi.Input<String>? nextHopIlb;
  /// The URL to an instance that should handle matching packets. You can specify this as a full or partial URL. For example: https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/
  final pulumi.Input<String>? nextHopInstance;
  /// The network IP address of an instance that should handle matching packets. Both IPv6 address and IPv4 addresses are supported. Must specify an IPv4 address in dot-decimal notation (e.g. 192.0.2.99) or an IPv6 address in RFC 4291 format (e.g. 2001:db8::2d9:51:0:0 or 2001:db8:0:0:2d9:51:0:0). IPv6 addresses will be displayed using RFC 5952 compressed format (e.g. 2001:db8::2d9:51:0:0). Should never be an IPv4-mapped IPv6 address.
  final pulumi.Input<String>? nextHopIp;
  /// The URL of the local network if it should handle matching packets.
  final pulumi.Input<String>? nextHopNetwork;
  /// The URL to a VpnTunnel that should handle matching packets.
  final pulumi.Input<String>? nextHopVpnTunnel;
  /// The priority of this route. Priority is used to break ties in cases where there is more than one matching route of equal prefix length. In cases where multiple routes have equal prefix length, the one with the lowest-numbered priority value wins. The default value is `1000`. The priority value must be from `0` to `65535`, inclusive.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// A list of instance tags to which this route applies.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [RouteArgs].
  /// [allowConflictingSubnetworks] Whether this route can conflict with existing subnetworks. Setting this to true allows this route to conflict with subnetworks that have already been configured on the corresponding network.
  /// [description] An optional description of this resource. Provide this field when you create the resource.
  /// [destRange] The destination range of outgoing packets that this route applies to. Both IPv4 and IPv6 are supported. Must specify an IPv4 range (e.g. 192.0.2.0/24) or an IPv6 range in RFC 4291 format (e.g. 2001:db8::/32). IPv6 range will be displayed using RFC 5952 compressed format.
  /// [ilbRouteBehaviorOnUnhealthy] ILB route behavior when ILB is deemed unhealthy based on user specified threshold on the Backend Service of the internal load balancing.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  /// [network] Fully-qualified URL of the network that this route applies to.
  /// [nextHopGateway] The URL to a gateway that should handle matching packets. You can only specify the internet gateway using a full or partial valid URL: projects/ project/global/gateways/default-internet-gateway
  /// [nextHopIlb] The URL to a forwarding rule of type loadBalancingScheme=INTERNAL that should handle matching packets or the IP address of the forwarding Rule. For example, the following are all valid URLs: - 10.128.0.56 - https://www.googleapis.com/compute/v1/projects/project/regions/region /forwardingRules/forwardingRule - regions/region/forwardingRules/forwardingRule
  /// [nextHopInstance] The URL to an instance that should handle matching packets. You can specify this as a full or partial URL. For example: https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/
  /// [nextHopIp] The network IP address of an instance that should handle matching packets. Both IPv6 address and IPv4 addresses are supported. Must specify an IPv4 address in dot-decimal notation (e.g. 192.0.2.99) or an IPv6 address in RFC 4291 format (e.g. 2001:db8::2d9:51:0:0 or 2001:db8:0:0:2d9:51:0:0). IPv6 addresses will be displayed using RFC 5952 compressed format (e.g. 2001:db8::2d9:51:0:0). Should never be an IPv4-mapped IPv6 address.
  /// [nextHopNetwork] The URL of the local network if it should handle matching packets.
  /// [nextHopVpnTunnel] The URL to a VpnTunnel that should handle matching packets.
  /// [priority] The priority of this route. Priority is used to break ties in cases where there is more than one matching route of equal prefix length. In cases where multiple routes have equal prefix length, the one with the lowest-numbered priority value wins. The default value is `1000`. The priority value must be from `0` to `65535`, inclusive.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [tags] A list of instance tags to which this route applies.
  const RouteArgs({
    this.allowConflictingSubnetworks,
    this.description,
    this.destRange,
    this.ilbRouteBehaviorOnUnhealthy,
    this.name,
    this.network,
    this.nextHopGateway,
    this.nextHopIlb,
    this.nextHopInstance,
    this.nextHopIp,
    this.nextHopNetwork,
    this.nextHopVpnTunnel,
    this.priority,
    this.project,
    this.requestId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowConflictingSubnetworks': ?allowConflictingSubnetworks,
      'description': ?description,
      'destRange': ?destRange,
      'ilbRouteBehaviorOnUnhealthy': ?pulumi.Input.mapOptionalInputValue<RouteIlbRouteBehaviorOnUnhealthy, String>(ilbRouteBehaviorOnUnhealthy, (value) => value.wireValue),
      'name': ?name,
      'network': ?network,
      'nextHopGateway': ?nextHopGateway,
      'nextHopIlb': ?nextHopIlb,
      'nextHopInstance': ?nextHopInstance,
      'nextHopIp': ?nextHopIp,
      'nextHopNetwork': ?nextHopNetwork,
      'nextHopVpnTunnel': ?nextHopVpnTunnel,
      'priority': ?priority,
      'project': ?project,
      'requestId': ?requestId,
      'tags': ?tags,
    };
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      allowConflictingSubnetworks: (() { final guardedValue = map['allowConflictingSubnetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destRange: (() { final guardedValue = map['destRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ilbRouteBehaviorOnUnhealthy: (() { final guardedValue = map['ilbRouteBehaviorOnUnhealthy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteIlbRouteBehaviorOnUnhealthy.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopGateway: (() { final guardedValue = map['nextHopGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopIlb: (() { final guardedValue = map['nextHopIlb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopInstance: (() { final guardedValue = map['nextHopInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopIp: (() { final guardedValue = map['nextHopIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopNetwork: (() { final guardedValue = map['nextHopNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopVpnTunnel: (() { final guardedValue = map['nextHopVpnTunnel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
