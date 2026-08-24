// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLeakedCredentialCheck.
class GetLeakedCredentialCheckResult {
  /// Determines whether or not Leaked Credential Checks are enabled.
  final bool? enabled;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetLeakedCredentialCheckResult].
  /// [enabled] Determines whether or not Leaked Credential Checks are enabled.
  /// [zoneId] Defines an identifier.
  const GetLeakedCredentialCheckResult({
    this.enabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'zoneId': ?zoneId,
    };
  }

  factory GetLeakedCredentialCheckResult.fromMap(Map<String, dynamic> map) {
    return GetLeakedCredentialCheckResult(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
