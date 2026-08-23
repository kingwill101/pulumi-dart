// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPublicIpPrefix.
class GetPublicIpPrefixResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Public IP address range, in CIDR notation.
  final String ipPrefix;
  /// The supported Azure location where the resource exists.
  final String location;
  final String name;
  /// The number of bits of the prefix.
  final int prefixLength;
  final String resourceGroupName;
  /// The SKU of the Public IP Prefix.
  final String sku;
  /// The SKU Tier of the Public IP.
  final String skuTier;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String> tags;
  /// A list of Availability Zones in which this Public IP Prefix is located.
  final List<String> zones;

  /// Creates a new [GetPublicIpPrefixResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipPrefix] The Public IP address range, in CIDR notation.
  /// [location] The supported Azure location where the resource exists.
  /// [name] Required.
  /// [prefixLength] The number of bits of the prefix.
  /// [resourceGroupName] Required.
  /// [sku] The SKU of the Public IP Prefix.
  /// [skuTier] The SKU Tier of the Public IP.
  /// [tags] A mapping of tags to assigned to the resource.
  /// [zones] A list of Availability Zones in which this Public IP Prefix is located.
  const GetPublicIpPrefixResult({
    required this.id,
    required this.ipPrefix,
    required this.location,
    required this.name,
    required this.prefixLength,
    required this.resourceGroupName,
    required this.sku,
    required this.skuTier,
    required this.tags,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ipPrefix': ipPrefix,
      'location': location,
      'name': name,
      'prefixLength': prefixLength,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'skuTier': skuTier,
      'tags': tags,
      'zones': zones,
    };
  }

  factory GetPublicIpPrefixResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIpPrefixResult(
      id: map['id'] as String,
      ipPrefix: map['ipPrefix'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      prefixLength: map['prefixLength'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] as String,
      skuTier: map['skuTier'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}
