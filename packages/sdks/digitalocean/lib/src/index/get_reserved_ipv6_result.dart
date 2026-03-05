// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReservedIpv6.
class GetReservedIpv6Result {
  /// The Droplet id that the reserved IP has been assigned to.
  final int dropletId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ip;
  /// The region that the reserved IPv6 is reserved to.
  final String regionSlug;
  /// The uniform resource name of the reserved IPv6.
  final String urn;

  /// Creates a new [GetReservedIpv6Result].
  /// [dropletId] The Droplet id that the reserved IP has been assigned to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ip] Required.
  /// [regionSlug] The region that the reserved IPv6 is reserved to.
  /// [urn] The uniform resource name of the reserved IPv6.
  GetReservedIpv6Result({
    required this.dropletId,
    required this.id,
    required this.ip,
    required this.regionSlug,
    required this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': dropletId,
      'id': id,
      'ip': ip,
      'regionSlug': regionSlug,
      'urn': urn,
    };
  }

  factory GetReservedIpv6Result.fromMap(Map<String, dynamic> map) {
    return GetReservedIpv6Result(
      dropletId: map['dropletId'] as int,
      id: map['id'] as String,
      ip: map['ip'] as String,
      regionSlug: map['regionSlug'] as String,
      urn: map['urn'] as String,
    );
  }
}

