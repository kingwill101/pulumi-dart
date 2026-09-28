// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReservedIp.
class GetReservedIpResult {
  /// The Droplet id that the reserved IP has been assigned to.
  final int? dropletId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ipAddress;
  /// The region that the reserved IP is reserved to.
  final String? region;
  /// The uniform resource name of the reserved IP.
  final String? urn;

  /// Creates a new [GetReservedIpResult].
  /// [dropletId] The Droplet id that the reserved IP has been assigned to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddress] Optional.
  /// [region] The region that the reserved IP is reserved to.
  /// [urn] The uniform resource name of the reserved IP.
  const GetReservedIpResult({
    this.dropletId,
    this.id,
    this.ipAddress,
    this.region,
    this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'region': ?region,
      'urn': ?urn,
    };
  }

  factory GetReservedIpResult.fromMap(Map<String, dynamic> map) {
    return GetReservedIpResult(
      dropletId: (() { final guardedValue = map['dropletId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
