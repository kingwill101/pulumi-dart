// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualWan.
class GetVirtualWanResult {
  /// Is branch to branch traffic is allowed?
  final bool allowBranchToBranchTraffic;
  /// Is VPN Encryption disabled?
  final bool disableVpnEncryption;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Virtual Wan exists.
  final String location;
  final String name;
  /// The Office365 Local Breakout Category.
  final String office365LocalBreakoutCategory;
  final String resourceGroupName;
  /// Type of Virtual Wan (Basic or Standard).
  final String sku;
  /// A mapping of tags assigned to the Virtual Wan.
  final Map<String, String> tags;
  /// A list of Virtual Hubs IDs attached to this Virtual WAN.
  final List<String> virtualHubIds;
  /// A list of VPN Site IDs attached to this Virtual WAN.
  final List<String> vpnSiteIds;

  /// Creates a new [GetVirtualWanResult].
  /// [allowBranchToBranchTraffic] Is branch to branch traffic is allowed?
  /// [disableVpnEncryption] Is VPN Encryption disabled?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Virtual Wan exists.
  /// [name] Required.
  /// [office365LocalBreakoutCategory] The Office365 Local Breakout Category.
  /// [resourceGroupName] Required.
  /// [sku] Type of Virtual Wan (Basic or Standard).
  /// [tags] A mapping of tags assigned to the Virtual Wan.
  /// [virtualHubIds] A list of Virtual Hubs IDs attached to this Virtual WAN.
  /// [vpnSiteIds] A list of VPN Site IDs attached to this Virtual WAN.
  const GetVirtualWanResult({
    required this.allowBranchToBranchTraffic,
    required this.disableVpnEncryption,
    required this.id,
    required this.location,
    required this.name,
    required this.office365LocalBreakoutCategory,
    required this.resourceGroupName,
    required this.sku,
    required this.tags,
    required this.virtualHubIds,
    required this.vpnSiteIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowBranchToBranchTraffic': allowBranchToBranchTraffic,
      'disableVpnEncryption': disableVpnEncryption,
      'id': id,
      'location': location,
      'name': name,
      'office365LocalBreakoutCategory': office365LocalBreakoutCategory,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': tags,
      'virtualHubIds': virtualHubIds,
      'vpnSiteIds': vpnSiteIds,
    };
  }

  factory GetVirtualWanResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualWanResult(
      allowBranchToBranchTraffic: map['allowBranchToBranchTraffic'] as bool,
      disableVpnEncryption: map['disableVpnEncryption'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      office365LocalBreakoutCategory: map['office365LocalBreakoutCategory'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualHubIds: (map['virtualHubIds'] as List).cast<String>(),
      vpnSiteIds: (map['vpnSiteIds'] as List).cast<String>(),
    );
  }
}
