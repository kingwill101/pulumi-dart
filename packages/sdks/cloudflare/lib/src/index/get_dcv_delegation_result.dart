// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDcvDelegation.
class GetDcvDelegationResult {
  /// The DCV Delegation unique identifier.
  final String? uuid;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetDcvDelegationResult].
  /// [uuid] The DCV Delegation unique identifier.
  /// [zoneId] Identifier.
  const GetDcvDelegationResult({
    this.uuid,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': ?uuid,
      'zoneId': ?zoneId,
    };
  }

  factory GetDcvDelegationResult.fromMap(Map<String, dynamic> map) {
    return GetDcvDelegationResult(
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
