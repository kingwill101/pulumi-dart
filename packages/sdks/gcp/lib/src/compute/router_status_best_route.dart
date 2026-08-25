// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_status_best_route_as_path.dart';
import 'router_status_best_route_param.dart';
import 'router_status_best_route_warning.dart';

class RouterStatusBestRoute {
  final pulumi.Input<List<RouterStatusBestRouteAsPath>> asPaths;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String> deletionPolicy;
  /// An optional description of this resource. Provide this property
  /// when you create the resource.
  final pulumi.Input<String> description;
  /// The destination range of outgoing packets that this route applies to.
  /// Only IPv4 is supported.
  final pulumi.Input<String> destRange;
  /// The name of the router.
  final pulumi.Input<String> name;
  /// The network name or resource link to the parent
  /// network of this subnetwork.
  final pulumi.Input<String> network;
  /// URL to a gateway that should handle matching packets.
  /// Currently, you can only specify the internet gateway, using a full or
  /// partial valid URL:
  /// * 'https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway'
  /// * 'projects/project/global/gateways/default-internet-gateway'
  /// * 'global/gateways/default-internet-gateway'
  /// * The string 'default-internet-gateway'.
  final pulumi.Input<String> nextHopGateway;
  /// The hub network that should handle matching packets, which should conform to RFC1035.
  final pulumi.Input<String> nextHopHub;
  /// The IP address or URL to a forwarding rule of type
  /// loadBalancingScheme=INTERNAL that should handle matching
  /// packets.
  ///
  /// With the GA provider you can only specify the forwarding
  /// rule as a partial or full URL. For example, the following
  /// are all valid values:
  /// * 10.128.0.56
  /// * https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule
  /// * regions/region/forwardingRules/forwardingRule
  ///
  /// When the beta provider, you can also specify the IP address
  /// of a forwarding rule from the same VPC or any peered VPC.
  ///
  /// Note that this can only be used when the destinationRange is
  /// a public (non-RFC 1918) IP CIDR range.
  final pulumi.Input<String> nextHopIlb;
  /// URL to an instance that should handle matching packets.
  /// You can specify this as a full or partial URL. For example:
  /// * 'https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance'
  /// * 'projects/project/zones/zone/instances/instance'
  /// * 'zones/zone/instances/instance'
  /// * Just the instance name, with the zone in 'next_hop_instance_zone'.
  final pulumi.Input<String> nextHopInstance;
  /// The zone of the instance specified in next_hop_instance. Omit if nextHopInstance is specified as a URL.
  final pulumi.Input<String> nextHopInstanceZone;
  /// Internal fixed region-to-region cost that Google Cloud calculates based on factors such as network performance, distance, and available bandwidth between regions.
  final pulumi.Input<String> nextHopInterRegionCost;
  /// Network IP address of an instance that should handle matching packets.
  final pulumi.Input<String> nextHopIp;
  /// Multi-Exit Discriminator, a BGP route metric that indicates the desirability of a particular route in a network.
  final pulumi.Input<String> nextHopMed;
  /// URL to a Network that should handle matching packets.
  final pulumi.Input<String> nextHopNetwork;
  /// Indicates the origin of the route. Can be IGP (Interior Gateway Protocol), EGP (Exterior Gateway Protocol), or INCOMPLETE.
  final pulumi.Input<String> nextHopOrigin;
  /// The network peering name that should handle matching packets, which should conform to RFC1035.
  final pulumi.Input<String> nextHopPeering;
  /// URL to a VpnTunnel that should handle matching packets.
  final pulumi.Input<String> nextHopVpnTunnel;
  /// Additional params passed with the request, but not persisted as part of resource payload
  final pulumi.Input<List<RouterStatusBestRouteParam>> params;
  /// The priority of this route. Priority is used to break ties in cases
  /// where there is more than one matching route of equal prefix length.
  ///
  /// In the case of two routes with equal prefix length, the one with the
  /// lowest-numbered priority value wins.
  ///
  /// Default value is 1000. Valid range is 0 through 65535.
  final pulumi.Input<int> priority;
  /// The ID of the project in which the resource
  /// belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String> project;
  /// The status of the route, which can be one of the following values:
  /// - 'ACTIVE' for an active route
  /// - 'INACTIVE' for an inactive route
  final pulumi.Input<String> routeStatus;
  /// The type of this route, which can be one of the following values:
  /// - 'TRANSIT' for a transit route that this router learned from another Cloud Router and will readvertise to one of its BGP peers
  /// - 'SUBNET' for a route from a subnet of the VPC
  /// - 'BGP' for a route learned from a BGP peer of this router
  /// - 'STATIC' for a static route
  final pulumi.Input<String> routeType;
  final pulumi.Input<String> selfLink;
  /// A list of instance tags to which this route applies.
  final pulumi.Input<List<String>> tags;
  /// If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  final pulumi.Input<List<RouterStatusBestRouteWarning>> warnings;

  /// Creates a new [RouterStatusBestRoute].
  /// [asPaths] Required.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [description] An optional description of this resource. Provide this property
  /// [destRange] The destination range of outgoing packets that this route applies to.
  /// [name] The name of the router.
  /// [network] The network name or resource link to the parent
  /// [nextHopGateway] URL to a gateway that should handle matching packets.
  /// [nextHopHub] The hub network that should handle matching packets, which should conform to RFC1035.
  /// [nextHopIlb] The IP address or URL to a forwarding rule of type
  /// [nextHopInstance] URL to an instance that should handle matching packets.
  /// [nextHopInstanceZone] The zone of the instance specified in next_hop_instance. Omit if nextHopInstance is specified as a URL.
  /// [nextHopInterRegionCost] Internal fixed region-to-region cost that Google Cloud calculates based on factors such as network performance, distance, and available bandwidth between regions.
  /// [nextHopIp] Network IP address of an instance that should handle matching packets.
  /// [nextHopMed] Multi-Exit Discriminator, a BGP route metric that indicates the desirability of a particular route in a network.
  /// [nextHopNetwork] URL to a Network that should handle matching packets.
  /// [nextHopOrigin] Indicates the origin of the route. Can be IGP (Interior Gateway Protocol), EGP (Exterior Gateway Protocol), or INCOMPLETE.
  /// [nextHopPeering] The network peering name that should handle matching packets, which should conform to RFC1035.
  /// [nextHopVpnTunnel] URL to a VpnTunnel that should handle matching packets.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [priority] The priority of this route. Priority is used to break ties in cases
  /// [project] The ID of the project in which the resource
  /// [routeStatus] The status of the route, which can be one of the following values:
  /// [routeType] The type of this route, which can be one of the following values:
  /// [selfLink] Required.
  /// [tags] A list of instance tags to which this route applies.
  /// [warnings] If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  const RouterStatusBestRoute({
    required this.asPaths,
    required this.creationTimestamp,
    required this.deletionPolicy,
    required this.description,
    required this.destRange,
    required this.name,
    required this.network,
    required this.nextHopGateway,
    required this.nextHopHub,
    required this.nextHopIlb,
    required this.nextHopInstance,
    required this.nextHopInstanceZone,
    required this.nextHopInterRegionCost,
    required this.nextHopIp,
    required this.nextHopMed,
    required this.nextHopNetwork,
    required this.nextHopOrigin,
    required this.nextHopPeering,
    required this.nextHopVpnTunnel,
    required this.params,
    required this.priority,
    required this.project,
    required this.routeStatus,
    required this.routeType,
    required this.selfLink,
    required this.tags,
    required this.warnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asPaths': pulumi.Input.mapInputValue<List<RouterStatusBestRouteAsPath>, List<Map<String, dynamic>>>(asPaths, (value) => pulumi.Input.encodeList<RouterStatusBestRouteAsPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationTimestamp': creationTimestamp,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'destRange': destRange,
      'name': name,
      'network': network,
      'nextHopGateway': nextHopGateway,
      'nextHopHub': nextHopHub,
      'nextHopIlb': nextHopIlb,
      'nextHopInstance': nextHopInstance,
      'nextHopInstanceZone': nextHopInstanceZone,
      'nextHopInterRegionCost': nextHopInterRegionCost,
      'nextHopIp': nextHopIp,
      'nextHopMed': nextHopMed,
      'nextHopNetwork': nextHopNetwork,
      'nextHopOrigin': nextHopOrigin,
      'nextHopPeering': nextHopPeering,
      'nextHopVpnTunnel': nextHopVpnTunnel,
      'params': pulumi.Input.mapInputValue<List<RouterStatusBestRouteParam>, List<Map<String, dynamic>>>(params, (value) => pulumi.Input.encodeList<RouterStatusBestRouteParam, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': priority,
      'project': project,
      'routeStatus': routeStatus,
      'routeType': routeType,
      'selfLink': selfLink,
      'tags': tags,
      'warnings': pulumi.Input.mapInputValue<List<RouterStatusBestRouteWarning>, List<Map<String, dynamic>>>(warnings, (value) => pulumi.Input.encodeList<RouterStatusBestRouteWarning, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RouterStatusBestRoute.fromMap(Map<String, dynamic> map) {
    return RouterStatusBestRoute(
      asPaths: pulumi.Input.fromValue(pulumi.Input.decodeList<RouterStatusBestRouteAsPath>(map['asPaths']!, (value) => RouterStatusBestRouteAsPath.fromMap((value as Map).cast<String, dynamic>()))),
      creationTimestamp: pulumi.Input.fromValue(map['creationTimestamp'] as String),
      deletionPolicy: pulumi.Input.fromValue(map['deletionPolicy'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      destRange: pulumi.Input.fromValue(map['destRange'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      nextHopGateway: pulumi.Input.fromValue(map['nextHopGateway'] as String),
      nextHopHub: pulumi.Input.fromValue(map['nextHopHub'] as String),
      nextHopIlb: pulumi.Input.fromValue(map['nextHopIlb'] as String),
      nextHopInstance: pulumi.Input.fromValue(map['nextHopInstance'] as String),
      nextHopInstanceZone: pulumi.Input.fromValue(map['nextHopInstanceZone'] as String),
      nextHopInterRegionCost: pulumi.Input.fromValue(map['nextHopInterRegionCost'] as String),
      nextHopIp: pulumi.Input.fromValue(map['nextHopIp'] as String),
      nextHopMed: pulumi.Input.fromValue(map['nextHopMed'] as String),
      nextHopNetwork: pulumi.Input.fromValue(map['nextHopNetwork'] as String),
      nextHopOrigin: pulumi.Input.fromValue(map['nextHopOrigin'] as String),
      nextHopPeering: pulumi.Input.fromValue(map['nextHopPeering'] as String),
      nextHopVpnTunnel: pulumi.Input.fromValue(map['nextHopVpnTunnel'] as String),
      params: pulumi.Input.fromValue(pulumi.Input.decodeList<RouterStatusBestRouteParam>(map['params']!, (value) => RouterStatusBestRouteParam.fromMap((value as Map).cast<String, dynamic>()))),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      project: pulumi.Input.fromValue(map['project'] as String),
      routeStatus: pulumi.Input.fromValue(map['routeStatus'] as String),
      routeType: pulumi.Input.fromValue(map['routeType'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      warnings: pulumi.Input.fromValue(pulumi.Input.decodeList<RouterStatusBestRouteWarning>(map['warnings']!, (value) => RouterStatusBestRouteWarning.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
