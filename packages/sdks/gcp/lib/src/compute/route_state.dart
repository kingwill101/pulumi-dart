// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_as_path.dart';
import 'route_params.dart';
import 'route_warning.dart';

/// Input properties used for looking up and filtering Route resources.
class RouteState {
  /// Structure is documented below.
  final pulumi.Input<List<RouteAsPath>>? asPaths;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource. Provide this property
  /// when you create the resource.
  final pulumi.Input<String>? description;
  /// The destination range of outgoing packets that this route applies to.
  /// Only IPv4 is supported.
  final pulumi.Input<String>? destRange;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The network that this route applies to.
  final pulumi.Input<String>? network;
  /// URL to a gateway that should handle matching packets.
  /// Currently, you can only specify the internet gateway, using a full or
  /// partial valid URL:
  /// * `https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway`
  /// * `projects/project/global/gateways/default-internet-gateway`
  /// * `global/gateways/default-internet-gateway`
  /// * The string `default-internet-gateway`.
  final pulumi.Input<String>? nextHopGateway;
  /// The hub network that should handle matching packets, which should conform to RFC1035.
  final pulumi.Input<String>? nextHopHub;
  /// The IP address or URL to a forwarding rule of type
  /// loadBalancingScheme=INTERNAL that should handle matching
  /// packets.
  /// With the GA provider you can only specify the forwarding
  /// rule as a partial or full URL. For example, the following
  /// are all valid values:
  /// * 10.128.0.56
  /// * https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule
  /// * regions/region/forwardingRules/forwardingRule
  /// When the beta provider, you can also specify the IP address
  /// of a forwarding rule from the same VPC or any peered VPC.
  /// Note that this can only be used when the destinationRange is
  /// a public (non-RFC 1918) IP CIDR range.
  final pulumi.Input<String>? nextHopIlb;
  /// URL to an instance that should handle matching packets.
  /// You can specify this as a full or partial URL. For example:
  /// * `https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance`
  /// * `projects/project/zones/zone/instances/instance`
  /// * `zones/zone/instances/instance`
  /// * Just the instance name, with the zone in `next_hop_instance_zone`.
  final pulumi.Input<String>? nextHopInstance;
  /// (Optional when `next_hop_instance` is
  /// specified)  The zone of the instance specified in
  /// `next_hop_instance`.  Omit if `next_hop_instance` is specified as
  /// a URL.
  final pulumi.Input<String>? nextHopInstanceZone;
  /// Internal fixed region-to-region cost that Google Cloud calculates based on factors such as network performance, distance, and available bandwidth between regions.
  final pulumi.Input<String>? nextHopInterRegionCost;
  /// Network IP address of an instance that should handle matching packets.
  final pulumi.Input<String>? nextHopIp;
  /// Multi-Exit Discriminator, a BGP route metric that indicates the desirability of a particular route in a network.
  final pulumi.Input<String>? nextHopMed;
  /// URL to a Network that should handle matching packets.
  final pulumi.Input<String>? nextHopNetwork;
  /// Indicates the origin of the route. Can be IGP (Interior Gateway Protocol), EGP (Exterior Gateway Protocol), or INCOMPLETE.
  final pulumi.Input<String>? nextHopOrigin;
  /// The network peering name that should handle matching packets, which should conform to RFC1035.
  final pulumi.Input<String>? nextHopPeering;
  /// URL to a VpnTunnel that should handle matching packets.
  final pulumi.Input<String>? nextHopVpnTunnel;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<RouteParams>? params;
  /// The priority of this route. Priority is used to break ties in cases
  /// where there is more than one matching route of equal prefix length.
  /// In the case of two routes with equal prefix length, the one with the
  /// lowest-numbered priority value wins.
  /// Default value is 1000. Valid range is 0 through 65535.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The status of the route, which can be one of the following values:
  /// - 'ACTIVE' for an active route
  /// - 'INACTIVE' for an inactive route
  final pulumi.Input<String>? routeStatus;
  /// The type of this route, which can be one of the following values:
  /// - 'TRANSIT' for a transit route that this router learned from another Cloud Router and will readvertise to one of its BGP peers
  /// - 'SUBNET' for a route from a subnet of the VPC
  /// - 'BGP' for a route learned from a BGP peer of this router
  /// - 'STATIC' for a static route
  final pulumi.Input<String>? routeType;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// A list of instance tags to which this route applies.
  final pulumi.Input<List<String>>? tags;
  /// If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  /// Structure is documented below.
  final pulumi.Input<List<RouteWarning>>? warnings;

  /// Creates a new [RouteState].
  /// [asPaths] Structure is documented below.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property
  /// [destRange] The destination range of outgoing packets that this route applies to.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [network] The network that this route applies to.
  /// [nextHopGateway] URL to a gateway that should handle matching packets.
  /// [nextHopHub] The hub network that should handle matching packets, which should conform to RFC1035.
  /// [nextHopIlb] The IP address or URL to a forwarding rule of type
  /// [nextHopInstance] URL to an instance that should handle matching packets.
  /// [nextHopInstanceZone] (Optional when `next_hop_instance` is
  /// [nextHopInterRegionCost] Internal fixed region-to-region cost that Google Cloud calculates based on factors such as network performance, distance, and available bandwidth between regions.
  /// [nextHopIp] Network IP address of an instance that should handle matching packets.
  /// [nextHopMed] Multi-Exit Discriminator, a BGP route metric that indicates the desirability of a particular route in a network.
  /// [nextHopNetwork] URL to a Network that should handle matching packets.
  /// [nextHopOrigin] Indicates the origin of the route. Can be IGP (Interior Gateway Protocol), EGP (Exterior Gateway Protocol), or INCOMPLETE.
  /// [nextHopPeering] The network peering name that should handle matching packets, which should conform to RFC1035.
  /// [nextHopVpnTunnel] URL to a VpnTunnel that should handle matching packets.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [priority] The priority of this route. Priority is used to break ties in cases
  /// [project] The ID of the project in which the resource belongs.
  /// [routeStatus] The status of the route, which can be one of the following values:
  /// [routeType] The type of this route, which can be one of the following values:
  /// [selfLink] The URI of the created resource.
  /// [tags] A list of instance tags to which this route applies.
  /// [warnings] If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  RouteState({
    this.asPaths,
    this.creationTimestamp,
    this.description,
    this.destRange,
    this.name,
    this.network,
    this.nextHopGateway,
    this.nextHopHub,
    this.nextHopIlb,
    this.nextHopInstance,
    this.nextHopInstanceZone,
    this.nextHopInterRegionCost,
    this.nextHopIp,
    this.nextHopMed,
    this.nextHopNetwork,
    this.nextHopOrigin,
    this.nextHopPeering,
    this.nextHopVpnTunnel,
    this.params,
    this.priority,
    this.project,
    this.routeStatus,
    this.routeType,
    this.selfLink,
    this.tags,
    this.warnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asPaths': ?pulumi.Input.mapOptionalInputValue<List<RouteAsPath>, List<Map<String, dynamic>>>(asPaths, (value) => pulumi.Input.encodeList<RouteAsPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'destRange': ?destRange,
      'name': ?name,
      'network': ?network,
      'nextHopGateway': ?nextHopGateway,
      'nextHopHub': ?nextHopHub,
      'nextHopIlb': ?nextHopIlb,
      'nextHopInstance': ?nextHopInstance,
      'nextHopInstanceZone': ?nextHopInstanceZone,
      'nextHopInterRegionCost': ?nextHopInterRegionCost,
      'nextHopIp': ?nextHopIp,
      'nextHopMed': ?nextHopMed,
      'nextHopNetwork': ?nextHopNetwork,
      'nextHopOrigin': ?nextHopOrigin,
      'nextHopPeering': ?nextHopPeering,
      'nextHopVpnTunnel': ?nextHopVpnTunnel,
      'params': ?pulumi.Input.mapOptionalInputValue<RouteParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'priority': ?priority,
      'project': ?project,
      'routeStatus': ?routeStatus,
      'routeType': ?routeType,
      'selfLink': ?selfLink,
      'tags': ?tags,
      'warnings': ?pulumi.Input.mapOptionalInputValue<List<RouteWarning>, List<Map<String, dynamic>>>(warnings, (value) => pulumi.Input.encodeList<RouteWarning, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RouteState.fromMap(Map<String, dynamic> map) {
    return RouteState(
      asPaths: map['asPaths'] == null ? null : (pulumi.Input.decodeList<RouteAsPath>(map['asPaths']!, (value) => RouteAsPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destRange: map['destRange'] == null ? null : (map['destRange']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      nextHopGateway: map['nextHopGateway'] == null ? null : (map['nextHopGateway']! as String).input(),
      nextHopHub: map['nextHopHub'] == null ? null : (map['nextHopHub']! as String).input(),
      nextHopIlb: map['nextHopIlb'] == null ? null : (map['nextHopIlb']! as String).input(),
      nextHopInstance: map['nextHopInstance'] == null ? null : (map['nextHopInstance']! as String).input(),
      nextHopInstanceZone: map['nextHopInstanceZone'] == null ? null : (map['nextHopInstanceZone']! as String).input(),
      nextHopInterRegionCost: map['nextHopInterRegionCost'] == null ? null : (map['nextHopInterRegionCost']! as String).input(),
      nextHopIp: map['nextHopIp'] == null ? null : (map['nextHopIp']! as String).input(),
      nextHopMed: map['nextHopMed'] == null ? null : (map['nextHopMed']! as String).input(),
      nextHopNetwork: map['nextHopNetwork'] == null ? null : (map['nextHopNetwork']! as String).input(),
      nextHopOrigin: map['nextHopOrigin'] == null ? null : (map['nextHopOrigin']! as String).input(),
      nextHopPeering: map['nextHopPeering'] == null ? null : (map['nextHopPeering']! as String).input(),
      nextHopVpnTunnel: map['nextHopVpnTunnel'] == null ? null : (map['nextHopVpnTunnel']! as String).input(),
      params: map['params'] == null ? null : (RouteParams.fromMap((map['params']! as Map).cast<String, dynamic>())).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      routeStatus: map['routeStatus'] == null ? null : (map['routeStatus']! as String).input(),
      routeType: map['routeType'] == null ? null : (map['routeType']! as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      warnings: map['warnings'] == null ? null : (pulumi.Input.decodeList<RouteWarning>(map['warnings']!, (value) => RouteWarning.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

