// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with a Compute Engine route.
class RouteInfoResponse {
  /// Destination IP range of the route.
  final pulumi.Input<String> destIpRange;
  /// Destination port ranges of the route. Policy based routes only.
  final pulumi.Input<List<String>> destPortRanges;
  /// Name of a route.
  final pulumi.Input<String> displayName;
  /// Instance tags of the route.
  final pulumi.Input<List<String>> instanceTags;
  /// URI of a NCC Hub. NCC_HUB routes only.
  final pulumi.Input<String> nccHubUri;
  /// URI of a NCC Spoke. NCC_HUB routes only.
  final pulumi.Input<String> nccSpokeUri;
  /// URI of a Compute Engine network. NETWORK routes only.
  final pulumi.Input<String> networkUri;
  /// Next hop of the route.
  final pulumi.Input<String> nextHop;
  /// Type of next hop.
  final pulumi.Input<String> nextHopType;
  /// Priority of the route.
  final pulumi.Input<int> priority;
  /// Protocols of the route. Policy based routes only.
  final pulumi.Input<List<String>> protocols;
  /// Indicates where route is applicable.
  final pulumi.Input<String> routeScope;
  /// Type of route.
  final pulumi.Input<String> routeType;
  /// Source IP address range of the route. Policy based routes only.
  final pulumi.Input<String> srcIpRange;
  /// Source port ranges of the route. Policy based routes only.
  final pulumi.Input<List<String>> srcPortRanges;
  /// URI of a route. Dynamic, peering static and peering dynamic routes do not have an URI. Advertised route from Google Cloud VPC to on-premises network also does not have an URI.
  final pulumi.Input<String> uri;

  /// Creates a new [RouteInfoResponse].
  /// [destIpRange] Destination IP range of the route.
  /// [destPortRanges] Destination port ranges of the route. Policy based routes only.
  /// [displayName] Name of a route.
  /// [instanceTags] Instance tags of the route.
  /// [nccHubUri] URI of a NCC Hub. NCC_HUB routes only.
  /// [nccSpokeUri] URI of a NCC Spoke. NCC_HUB routes only.
  /// [networkUri] URI of a Compute Engine network. NETWORK routes only.
  /// [nextHop] Next hop of the route.
  /// [nextHopType] Type of next hop.
  /// [priority] Priority of the route.
  /// [protocols] Protocols of the route. Policy based routes only.
  /// [routeScope] Indicates where route is applicable.
  /// [routeType] Type of route.
  /// [srcIpRange] Source IP address range of the route. Policy based routes only.
  /// [srcPortRanges] Source port ranges of the route. Policy based routes only.
  /// [uri] URI of a route. Dynamic, peering static and peering dynamic routes do not have an URI. Advertised route from Google Cloud VPC to on-premises network also does not have an URI.
  RouteInfoResponse({
    required this.destIpRange,
    required this.destPortRanges,
    required this.displayName,
    required this.instanceTags,
    required this.nccHubUri,
    required this.nccSpokeUri,
    required this.networkUri,
    required this.nextHop,
    required this.nextHopType,
    required this.priority,
    required this.protocols,
    required this.routeScope,
    required this.routeType,
    required this.srcIpRange,
    required this.srcPortRanges,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destIpRange': destIpRange,
      'destPortRanges': destPortRanges,
      'displayName': displayName,
      'instanceTags': instanceTags,
      'nccHubUri': nccHubUri,
      'nccSpokeUri': nccSpokeUri,
      'networkUri': networkUri,
      'nextHop': nextHop,
      'nextHopType': nextHopType,
      'priority': priority,
      'protocols': protocols,
      'routeScope': routeScope,
      'routeType': routeType,
      'srcIpRange': srcIpRange,
      'srcPortRanges': srcPortRanges,
      'uri': uri,
    };
  }

  factory RouteInfoResponse.fromMap(Map<String, dynamic> map) {
    return RouteInfoResponse(
      destIpRange: pulumi.Input.fromValue(map['destIpRange'] as String),
      destPortRanges: pulumi.Input.fromValue((map['destPortRanges'] as List).cast<String>()),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      instanceTags: pulumi.Input.fromValue((map['instanceTags'] as List).cast<String>()),
      nccHubUri: pulumi.Input.fromValue(map['nccHubUri'] as String),
      nccSpokeUri: pulumi.Input.fromValue(map['nccSpokeUri'] as String),
      networkUri: pulumi.Input.fromValue(map['networkUri'] as String),
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
      nextHopType: pulumi.Input.fromValue(map['nextHopType'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      protocols: pulumi.Input.fromValue((map['protocols'] as List).cast<String>()),
      routeScope: pulumi.Input.fromValue(map['routeScope'] as String),
      routeType: pulumi.Input.fromValue(map['routeType'] as String),
      srcIpRange: pulumi.Input.fromValue(map['srcIpRange'] as String),
      srcPortRanges: pulumi.Input.fromValue((map['srcPortRanges'] as List).cast<String>()),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

