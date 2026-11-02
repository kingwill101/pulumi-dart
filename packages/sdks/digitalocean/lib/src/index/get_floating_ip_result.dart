// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFloatingIp.
class GetFloatingIpResult {
  /// The Droplet id that the floating IP has been assigned to.
  final int? dropletId;
  /// The uniform resource name of the floating IP.
  final String? floatingIpUrn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ipAddress;
  /// The region that the floating IP is reserved to.
  final String? region;

  /// Creates a new [GetFloatingIpResult].
  /// [dropletId] The Droplet id that the floating IP has been assigned to.
  /// [floatingIpUrn] The uniform resource name of the floating IP.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddress] Optional.
  /// [region] The region that the floating IP is reserved to.
  const GetFloatingIpResult({
    this.dropletId,
    this.floatingIpUrn,
    this.id,
    this.ipAddress,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'floatingIpUrn': ?floatingIpUrn,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'region': ?region,
    };
  }

  factory GetFloatingIpResult.fromMap(Map<String, dynamic> map) {
    return GetFloatingIpResult(
      dropletId: (() { final guardedValue = map['dropletId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      floatingIpUrn: (() { final guardedValue = map['floatingIpUrn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
