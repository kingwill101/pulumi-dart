// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServiceTags.
class GetServiceTagsResult {
  /// List of address prefixes for the service type (and optionally a specific region).
  final List<String>? addressPrefixes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of IPv4 addresses for the service type (and optionally a specific region)
  final List<String>? ipv4Cidrs;
  /// List of IPv6 addresses for the service type (and optionally a specific region)
  final List<String>? ipv6Cidrs;
  final String? location;
  final String? locationFilter;
  /// The name of this Service Tags block.
  final String? name;
  final String? service;

  /// Creates a new [GetServiceTagsResult].
  /// [addressPrefixes] List of address prefixes for the service type (and optionally a specific region).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipv4Cidrs] List of IPv4 addresses for the service type (and optionally a specific region)
  /// [ipv6Cidrs] List of IPv6 addresses for the service type (and optionally a specific region)
  /// [location] Optional.
  /// [locationFilter] Optional.
  /// [name] The name of this Service Tags block.
  /// [service] Optional.
  const GetServiceTagsResult({
    this.addressPrefixes,
    this.id,
    this.ipv4Cidrs,
    this.ipv6Cidrs,
    this.location,
    this.locationFilter,
    this.name,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'id': ?id,
      'ipv4Cidrs': ?ipv4Cidrs,
      'ipv6Cidrs': ?ipv6Cidrs,
      'location': ?location,
      'locationFilter': ?locationFilter,
      'name': ?name,
      'service': ?service,
    };
  }

  factory GetServiceTagsResult.fromMap(Map<String, dynamic> map) {
    return GetServiceTagsResult(
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4Cidrs: (() { final guardedValue = map['ipv4Cidrs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ipv6Cidrs: (() { final guardedValue = map['ipv6Cidrs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationFilter: (() { final guardedValue = map['locationFilter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
