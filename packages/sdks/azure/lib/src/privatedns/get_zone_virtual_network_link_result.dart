// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZoneVirtualNetworkLink.
class GetZoneVirtualNetworkLinkResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String privateDnsZoneName;
  /// Whether the auto-registration of virtual machine records in the virtual network in the Private DNS zone is enabled or not.
  final bool registrationEnabled;
  /// The resolution policy of the Private DNS Zone Virtual Network Link.
  final String resolutionPolicy;
  final String resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The ID of the Virtual Network that is linked to the DNS Zone.
  final String virtualNetworkId;

  /// Creates a new [GetZoneVirtualNetworkLinkResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [privateDnsZoneName] Required.
  /// [registrationEnabled] Whether the auto-registration of virtual machine records in the virtual network in the Private DNS zone is enabled or not.
  /// [resolutionPolicy] The resolution policy of the Private DNS Zone Virtual Network Link.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags to assign to the resource.
  /// [virtualNetworkId] The ID of the Virtual Network that is linked to the DNS Zone.
  GetZoneVirtualNetworkLinkResult({
    required this.id,
    required this.name,
    required this.privateDnsZoneName,
    required this.registrationEnabled,
    required this.resolutionPolicy,
    required this.resourceGroupName,
    required this.tags,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'privateDnsZoneName': privateDnsZoneName,
      'registrationEnabled': registrationEnabled,
      'resolutionPolicy': resolutionPolicy,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory GetZoneVirtualNetworkLinkResult.fromMap(Map<String, dynamic> map) {
    return GetZoneVirtualNetworkLinkResult(
      id: map['id'] as String,
      name: map['name'] as String,
      privateDnsZoneName: map['privateDnsZoneName'] as String,
      registrationEnabled: map['registrationEnabled'] as bool,
      resolutionPolicy: map['resolutionPolicy'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualNetworkId: map['virtualNetworkId'] as String,
    );
  }
}

