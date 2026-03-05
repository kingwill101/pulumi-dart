// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getVirtualHub.
class GetVirtualHubResult {
  /// The Address Prefix used for this Virtual Hub.
  final String addressPrefix;

  /// The ID of the default Route Table in the Virtual Hub.
  final String defaultRouteTableId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Azure Region where the Virtual Hub exists.
  final String location;
  final String name;
  final String resourceGroupName;

  /// A mapping of tags assigned to the Virtual Hub.
  final Map<String, String> tags;

  /// The Autonomous System Number of the Virtual Hub BGP router.
  final int virtualRouterAsn;

  /// The IP addresses of the Virtual Hub BGP router.
  final List<String> virtualRouterIps;

  /// The ID of the Virtual WAN within which the Virtual Hub exists.
  final String virtualWanId;

  /// Creates a new [GetVirtualHubResult].
  /// [addressPrefix] The Address Prefix used for this Virtual Hub.
  /// [defaultRouteTableId] The ID of the default Route Table in the Virtual Hub.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Virtual Hub exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Virtual Hub.
  /// [virtualRouterAsn] The Autonomous System Number of the Virtual Hub BGP router.
  /// [virtualRouterIps] The IP addresses of the Virtual Hub BGP router.
  /// [virtualWanId] The ID of the Virtual WAN within which the Virtual Hub exists.
  GetVirtualHubResult({
    required this.addressPrefix,
    required this.defaultRouteTableId,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
    required this.virtualRouterAsn,
    required this.virtualRouterIps,
    required this.virtualWanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'defaultRouteTableId': defaultRouteTableId,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'virtualRouterAsn': virtualRouterAsn,
      'virtualRouterIps': virtualRouterIps,
      'virtualWanId': virtualWanId,
    };
  }

  factory GetVirtualHubResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubResult(
      addressPrefix: map['addressPrefix'] as String,
      defaultRouteTableId: map['defaultRouteTableId'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualRouterAsn: map['virtualRouterAsn'] as int,
      virtualRouterIps: (map['virtualRouterIps'] as List).cast<String>(),
      virtualWanId: map['virtualWanId'] as String,
    );
  }
}
