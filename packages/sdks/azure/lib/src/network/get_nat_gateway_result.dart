// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNatGateway.
class GetNatGatewayResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The idle timeout in minutes which is used for the NAT Gateway.
  final int? idleTimeoutInMinutes;
  /// The location where the NAT Gateway exists.
  final String? location;
  final String? name;
  /// A list of existing Public IP Address resource IDs which the NAT Gateway is using.
  final List<String>? publicIpAddressIds;
  /// A list of existing Public IP Prefix resource IDs which the NAT Gateway is using.
  final List<String>? publicIpPrefixIds;
  final String? resourceGroupName;
  /// The Resource GUID of the NAT Gateway.
  final String? resourceGuid;
  /// The SKU used by the NAT Gateway.
  final String? skuName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// A list of Availability Zones which the NAT Gateway exists in.
  final List<String>? zones;

  /// Creates a new [GetNatGatewayResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleTimeoutInMinutes] The idle timeout in minutes which is used for the NAT Gateway.
  /// [location] The location where the NAT Gateway exists.
  /// [name] Optional.
  /// [publicIpAddressIds] A list of existing Public IP Address resource IDs which the NAT Gateway is using.
  /// [publicIpPrefixIds] A list of existing Public IP Prefix resource IDs which the NAT Gateway is using.
  /// [resourceGroupName] Optional.
  /// [resourceGuid] The Resource GUID of the NAT Gateway.
  /// [skuName] The SKU used by the NAT Gateway.
  /// [tags] A mapping of tags assigned to the resource.
  /// [zones] A list of Availability Zones which the NAT Gateway exists in.
  const GetNatGatewayResult({
    this.id,
    this.idleTimeoutInMinutes,
    this.location,
    this.name,
    this.publicIpAddressIds,
    this.publicIpPrefixIds,
    this.resourceGroupName,
    this.resourceGuid,
    this.skuName,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'location': ?location,
      'name': ?name,
      'publicIpAddressIds': ?publicIpAddressIds,
      'publicIpPrefixIds': ?publicIpPrefixIds,
      'resourceGroupName': ?resourceGroupName,
      'resourceGuid': ?resourceGuid,
      'skuName': ?skuName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory GetNatGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIpAddressIds: (() { final guardedValue = map['publicIpAddressIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      publicIpPrefixIds: (() { final guardedValue = map['publicIpPrefixIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
