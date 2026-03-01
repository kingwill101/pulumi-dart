// ignore_for_file: unused_element, unnecessary_cast


/// IpamPool prefix allocation reference.
class IpamPoolPrefixAllocationResponse {
  /// List of assigned IP address prefixes in the IpamPool of the associated resource.
  final List<String> allocatedAddressPrefixes;
  /// Resource id of the associated Azure IpamPool resource.
  final String? id;
  /// Number of IP addresses to allocate.
  final String? numberOfIpAddresses;

  /// Creates a new [IpamPoolPrefixAllocationResponse].
  /// [allocatedAddressPrefixes] List of assigned IP address prefixes in the IpamPool of the associated resource.
  /// [id] Resource id of the associated Azure IpamPool resource.
  /// [numberOfIpAddresses] Number of IP addresses to allocate.
  IpamPoolPrefixAllocationResponse({
    required this.allocatedAddressPrefixes,
    this.id,
    this.numberOfIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAddressPrefixes': allocatedAddressPrefixes,
      'id': ?id,
      'numberOfIpAddresses': ?numberOfIpAddresses,
    };
  }

  factory IpamPoolPrefixAllocationResponse.fromMap(Map<String, dynamic> map) {
    return IpamPoolPrefixAllocationResponse(
      allocatedAddressPrefixes: (map['allocatedAddressPrefixes'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      numberOfIpAddresses: map['numberOfIpAddresses'] == null ? null : map['numberOfIpAddresses'] as String,
    );
  }
}

