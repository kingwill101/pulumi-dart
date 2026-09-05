// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualHub.
class GetVirtualHubResult {
  /// The Address Prefix used for this Virtual Hub.
  final String? addressPrefix;
  /// The ID of the default Route Table in the Virtual Hub.
  final String? defaultRouteTableId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Virtual Hub exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Virtual Hub.
  final Map<String, String>? tags;
  /// The Autonomous System Number of the Virtual Hub BGP router.
  final int? virtualRouterAsn;
  /// The IP addresses of the Virtual Hub BGP router.
  final List<String>? virtualRouterIps;
  /// The ID of the Virtual WAN within which the Virtual Hub exists.
  final String? virtualWanId;

  /// Creates a new [GetVirtualHubResult].
  /// [addressPrefix] The Address Prefix used for this Virtual Hub.
  /// [defaultRouteTableId] The ID of the default Route Table in the Virtual Hub.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Virtual Hub exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Virtual Hub.
  /// [virtualRouterAsn] The Autonomous System Number of the Virtual Hub BGP router.
  /// [virtualRouterIps] The IP addresses of the Virtual Hub BGP router.
  /// [virtualWanId] The ID of the Virtual WAN within which the Virtual Hub exists.
  const GetVirtualHubResult({
    this.addressPrefix,
    this.defaultRouteTableId,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.virtualRouterAsn,
    this.virtualRouterIps,
    this.virtualWanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'defaultRouteTableId': ?defaultRouteTableId,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'virtualRouterAsn': ?virtualRouterAsn,
      'virtualRouterIps': ?virtualRouterIps,
      'virtualWanId': ?virtualWanId,
    };
  }

  factory GetVirtualHubResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubResult(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultRouteTableId: (() { final guardedValue = map['defaultRouteTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      virtualRouterAsn: (() { final guardedValue = map['virtualRouterAsn']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      virtualRouterIps: (() { final guardedValue = map['virtualRouterIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      virtualWanId: (() { final guardedValue = map['virtualWanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
