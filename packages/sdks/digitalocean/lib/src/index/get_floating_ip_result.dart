// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFloatingIp.
class GetFloatingIpResult {
  /// The Droplet id that the floating IP has been assigned to.
  final int dropletId;
  /// The uniform resource name of the floating IP.
  final String floatingIpUrn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ipAddress;
  /// The region that the floating IP is reserved to.
  final String region;

  /// Creates a new [GetFloatingIpResult].
  /// [dropletId] The Droplet id that the floating IP has been assigned to.
  /// [floatingIpUrn] The uniform resource name of the floating IP.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddress] Required.
  /// [region] The region that the floating IP is reserved to.
  const GetFloatingIpResult({
    required this.dropletId,
    required this.floatingIpUrn,
    required this.id,
    required this.ipAddress,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': dropletId,
      'floatingIpUrn': floatingIpUrn,
      'id': id,
      'ipAddress': ipAddress,
      'region': region,
    };
  }

  factory GetFloatingIpResult.fromMap(Map<String, dynamic> map) {
    return GetFloatingIpResult(
      dropletId: map['dropletId'] as int,
      floatingIpUrn: map['floatingIpUrn'] as String,
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
      region: map['region'] as String,
    );
  }
}

