// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZoneVirtualNetworkLink.
class GetZoneVirtualNetworkLinkResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? privateDnsZoneName;
  /// Whether the auto-registration of virtual machine records in the virtual network in the Private DNS zone is enabled or not.
  final bool? registrationEnabled;
  /// The resolution policy of the Private DNS Zone Virtual Network Link.
  final String? resolutionPolicy;
  final String? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// The ID of the Virtual Network that is linked to the DNS Zone.
  final String? virtualNetworkId;

  /// Creates a new [GetZoneVirtualNetworkLinkResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [privateDnsZoneName] Optional.
  /// [registrationEnabled] Whether the auto-registration of virtual machine records in the virtual network in the Private DNS zone is enabled or not.
  /// [resolutionPolicy] The resolution policy of the Private DNS Zone Virtual Network Link.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [virtualNetworkId] The ID of the Virtual Network that is linked to the DNS Zone.
  const GetZoneVirtualNetworkLinkResult({
    this.id,
    this.name,
    this.privateDnsZoneName,
    this.registrationEnabled,
    this.resolutionPolicy,
    this.resourceGroupName,
    this.tags,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'privateDnsZoneName': ?privateDnsZoneName,
      'registrationEnabled': ?registrationEnabled,
      'resolutionPolicy': ?resolutionPolicy,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory GetZoneVirtualNetworkLinkResult.fromMap(Map<String, dynamic> map) {
    return GetZoneVirtualNetworkLinkResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDnsZoneName: (() { final guardedValue = map['privateDnsZoneName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registrationEnabled: (() { final guardedValue = map['registrationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resolutionPolicy: (() { final guardedValue = map['resolutionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
