// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getByoipPrefix.
class GetByoipPrefixResult {
  /// A boolean indicating whether the prefix is currently being advertised.
  final bool? advertised;
  /// The reason for failure if the status is "failed".
  final String? failureReason;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The CIDR notation of the prefix (e.g., "192.0.2.0/24").
  final String? prefix;
  /// The DigitalOcean region where the prefix is deployed.
  final String? region;
  /// The current status of the BYOIP prefix (e.g., "verified", "pending", "failed").
  final String? status;
  /// The UUID of the BYOIP prefix.
  final String? uuid;

  /// Creates a new [GetByoipPrefixResult].
  /// [advertised] A boolean indicating whether the prefix is currently being advertised.
  /// [failureReason] The reason for failure if the status is "failed".
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [prefix] The CIDR notation of the prefix (e.g., "192.0.2.0/24").
  /// [region] The DigitalOcean region where the prefix is deployed.
  /// [status] The current status of the BYOIP prefix (e.g., "verified", "pending", "failed").
  /// [uuid] The UUID of the BYOIP prefix.
  const GetByoipPrefixResult({
    this.advertised,
    this.failureReason,
    this.id,
    this.prefix,
    this.region,
    this.status,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertised': ?advertised,
      'failureReason': ?failureReason,
      'id': ?id,
      'prefix': ?prefix,
      'region': ?region,
      'status': ?status,
      'uuid': ?uuid,
    };
  }

  factory GetByoipPrefixResult.fromMap(Map<String, dynamic> map) {
    return GetByoipPrefixResult(
      advertised: (() { final guardedValue = map['advertised']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
