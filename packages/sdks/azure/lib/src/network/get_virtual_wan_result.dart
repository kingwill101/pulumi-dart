// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualWan.
class GetVirtualWanResult {
  /// Is branch to branch traffic is allowed?
  final bool? allowBranchToBranchTraffic;
  /// Is VPN Encryption disabled?
  final bool? disableVpnEncryption;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Virtual Wan exists.
  final String? location;
  final String? name;
  /// The Office365 Local Breakout Category.
  final String? office365LocalBreakoutCategory;
  final String? resourceGroupName;
  /// Type of Virtual Wan (Basic or Standard).
  final String? sku;
  /// A mapping of tags assigned to the Virtual Wan.
  final Map<String, String>? tags;
  /// A list of Virtual Hubs IDs attached to this Virtual WAN.
  final List<String>? virtualHubIds;
  /// A list of VPN Site IDs attached to this Virtual WAN.
  final List<String>? vpnSiteIds;

  /// Creates a new [GetVirtualWanResult].
  /// [allowBranchToBranchTraffic] Is branch to branch traffic is allowed?
  /// [disableVpnEncryption] Is VPN Encryption disabled?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Virtual Wan exists.
  /// [name] Optional.
  /// [office365LocalBreakoutCategory] The Office365 Local Breakout Category.
  /// [resourceGroupName] Optional.
  /// [sku] Type of Virtual Wan (Basic or Standard).
  /// [tags] A mapping of tags assigned to the Virtual Wan.
  /// [virtualHubIds] A list of Virtual Hubs IDs attached to this Virtual WAN.
  /// [vpnSiteIds] A list of VPN Site IDs attached to this Virtual WAN.
  const GetVirtualWanResult({
    this.allowBranchToBranchTraffic,
    this.disableVpnEncryption,
    this.id,
    this.location,
    this.name,
    this.office365LocalBreakoutCategory,
    this.resourceGroupName,
    this.sku,
    this.tags,
    this.virtualHubIds,
    this.vpnSiteIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowBranchToBranchTraffic': ?allowBranchToBranchTraffic,
      'disableVpnEncryption': ?disableVpnEncryption,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'office365LocalBreakoutCategory': ?office365LocalBreakoutCategory,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
      'virtualHubIds': ?virtualHubIds,
      'vpnSiteIds': ?vpnSiteIds,
    };
  }

  factory GetVirtualWanResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualWanResult(
      allowBranchToBranchTraffic: (() { final guardedValue = map['allowBranchToBranchTraffic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      disableVpnEncryption: (() { final guardedValue = map['disableVpnEncryption']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      office365LocalBreakoutCategory: (() { final guardedValue = map['office365LocalBreakoutCategory']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      virtualHubIds: (() { final guardedValue = map['virtualHubIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vpnSiteIds: (() { final guardedValue = map['vpnSiteIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
