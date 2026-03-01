// ignore_for_file: unused_element, unnecessary_cast


/// Properties of static CIDR resource.
class StaticCidrPropertiesResponse {
  /// List of IP address prefixes of the resource.
  final List<String>? addressPrefixes;
  final String? description;
  /// Number of IP addresses to allocate for a static CIDR resource. The IP addresses will be assigned based on IpamPools available space.
  final String? numberOfIPAddressesToAllocate;
  /// Provisioning states of a resource.
  final String provisioningState;
  /// Total number of IP addresses allocated for the static CIDR resource.
  final String totalNumberOfIPAddresses;

  /// Creates a new [StaticCidrPropertiesResponse].
  /// [addressPrefixes] List of IP address prefixes of the resource.
  /// [description] Optional.
  /// [numberOfIPAddressesToAllocate] Number of IP addresses to allocate for a static CIDR resource. The IP addresses will be assigned based on IpamPools available space.
  /// [provisioningState] Provisioning states of a resource.
  /// [totalNumberOfIPAddresses] Total number of IP addresses allocated for the static CIDR resource.
  StaticCidrPropertiesResponse({
    this.addressPrefixes,
    this.description,
    this.numberOfIPAddressesToAllocate,
    required this.provisioningState,
    required this.totalNumberOfIPAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'description': ?description,
      'numberOfIPAddressesToAllocate': ?numberOfIPAddressesToAllocate,
      'provisioningState': provisioningState,
      'totalNumberOfIPAddresses': totalNumberOfIPAddresses,
    };
  }

  factory StaticCidrPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StaticCidrPropertiesResponse(
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      numberOfIPAddressesToAllocate: map['numberOfIPAddressesToAllocate'] == null ? null : map['numberOfIPAddressesToAllocate'] as String,
      provisioningState: map['provisioningState'] as String,
      totalNumberOfIPAddresses: map['totalNumberOfIPAddresses'] as String,
    );
  }
}

