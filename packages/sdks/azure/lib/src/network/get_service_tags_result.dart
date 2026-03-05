// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServiceTags.
class GetServiceTagsResult {
  /// List of address prefixes for the service type (and optionally a specific region).
  final List<String> addressPrefixes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of IPv4 addresses for the service type (and optionally a specific region)
  final List<String> ipv4Cidrs;
  /// List of IPv6 addresses for the service type (and optionally a specific region)
  final List<String> ipv6Cidrs;
  final String location;
  final String? locationFilter;
  /// The name of this Service Tags block.
  final String name;
  final String service;

  /// Creates a new [GetServiceTagsResult].
  /// [addressPrefixes] List of address prefixes for the service type (and optionally a specific region).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipv4Cidrs] List of IPv4 addresses for the service type (and optionally a specific region)
  /// [ipv6Cidrs] List of IPv6 addresses for the service type (and optionally a specific region)
  /// [location] Required.
  /// [locationFilter] Optional.
  /// [name] The name of this Service Tags block.
  /// [service] Required.
  GetServiceTagsResult({
    required this.addressPrefixes,
    required this.id,
    required this.ipv4Cidrs,
    required this.ipv6Cidrs,
    required this.location,
    this.locationFilter,
    required this.name,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
      'id': id,
      'ipv4Cidrs': ipv4Cidrs,
      'ipv6Cidrs': ipv6Cidrs,
      'location': location,
      'locationFilter': ?locationFilter,
      'name': name,
      'service': service,
    };
  }

  factory GetServiceTagsResult.fromMap(Map<String, dynamic> map) {
    return GetServiceTagsResult(
      addressPrefixes: (map['addressPrefixes'] as List).cast<String>(),
      id: map['id'] as String,
      ipv4Cidrs: (map['ipv4Cidrs'] as List).cast<String>(),
      ipv6Cidrs: (map['ipv6Cidrs'] as List).cast<String>(),
      location: map['location'] as String,
      locationFilter: (() { final guardedValue = map['locationFilter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      service: map['service'] as String,
    );
  }
}

