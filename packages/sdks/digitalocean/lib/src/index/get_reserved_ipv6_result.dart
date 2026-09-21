// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReservedIpv6.
class GetReservedIpv6Result {
  /// The Droplet id that the reserved IP has been assigned to.
  final int? dropletId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ip;
  /// The region that the reserved IPv6 is reserved to.
  final String? regionSlug;
  /// The uniform resource name of the reserved IPv6.
  final String? urn;

  /// Creates a new [GetReservedIpv6Result].
  /// [dropletId] The Droplet id that the reserved IP has been assigned to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ip] Optional.
  /// [regionSlug] The region that the reserved IPv6 is reserved to.
  /// [urn] The uniform resource name of the reserved IPv6.
  const GetReservedIpv6Result({
    this.dropletId,
    this.id,
    this.ip,
    this.regionSlug,
    this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'id': ?id,
      'ip': ?ip,
      'regionSlug': ?regionSlug,
      'urn': ?urn,
    };
  }

  factory GetReservedIpv6Result.fromMap(Map<String, dynamic> map) {
    return GetReservedIpv6Result(
      dropletId: (() { final guardedValue = map['dropletId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionSlug: (() { final guardedValue = map['regionSlug']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
