// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPublicIpPrefix.
class GetPublicIpPrefixResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Public IP address range, in CIDR notation.
  final String? ipPrefix;
  /// The supported Azure location where the resource exists.
  final String? location;
  final String? name;
  /// The number of bits of the prefix.
  final int? prefixLength;
  final String? resourceGroupName;
  /// The SKU of the Public IP Prefix.
  final String? sku;
  /// The SKU Tier of the Public IP.
  final String? skuTier;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String>? tags;
  /// A list of Availability Zones in which this Public IP Prefix is located.
  final List<String>? zones;

  /// Creates a new [GetPublicIpPrefixResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipPrefix] The Public IP address range, in CIDR notation.
  /// [location] The supported Azure location where the resource exists.
  /// [name] Optional.
  /// [prefixLength] The number of bits of the prefix.
  /// [resourceGroupName] Optional.
  /// [sku] The SKU of the Public IP Prefix.
  /// [skuTier] The SKU Tier of the Public IP.
  /// [tags] A mapping of tags to assigned to the resource.
  /// [zones] A list of Availability Zones in which this Public IP Prefix is located.
  const GetPublicIpPrefixResult({
    this.id,
    this.ipPrefix,
    this.location,
    this.name,
    this.prefixLength,
    this.resourceGroupName,
    this.sku,
    this.skuTier,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ipPrefix': ?ipPrefix,
      'location': ?location,
      'name': ?name,
      'prefixLength': ?prefixLength,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'skuTier': ?skuTier,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory GetPublicIpPrefixResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIpPrefixResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipPrefix: (() { final guardedValue = map['ipPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefixLength: (() { final guardedValue = map['prefixLength']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuTier: (() { final guardedValue = map['skuTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
