// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReservedIp.
class GetReservedIpResult {
  /// The Droplet id that the reserved IP has been assigned to.
  final int dropletId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ipAddress;
  /// The region that the reserved IP is reserved to.
  final String region;
  /// The uniform resource name of the reserved IP.
  final String urn;

  /// Creates a new [GetReservedIpResult].
  /// [dropletId] The Droplet id that the reserved IP has been assigned to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddress] Required.
  /// [region] The region that the reserved IP is reserved to.
  /// [urn] The uniform resource name of the reserved IP.
  const GetReservedIpResult({
    required this.dropletId,
    required this.id,
    required this.ipAddress,
    required this.region,
    required this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': dropletId,
      'id': id,
      'ipAddress': ipAddress,
      'region': region,
      'urn': urn,
    };
  }

  factory GetReservedIpResult.fromMap(Map<String, dynamic> map) {
    return GetReservedIpResult(
      dropletId: map['dropletId'] as int,
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
      region: map['region'] as String,
      urn: map['urn'] as String,
    );
  }
}
