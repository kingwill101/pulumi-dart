// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLogpullRetention.
class GetLogpullRetentionResult {
  /// The log retention flag for Logpull API.
  final bool? flag;
  /// Identifier.
  final String? id;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetLogpullRetentionResult].
  /// [flag] The log retention flag for Logpull API.
  /// [id] Identifier.
  /// [zoneId] Identifier.
  const GetLogpullRetentionResult({
    this.flag,
    this.id,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flag': ?flag,
      'id': ?id,
      'zoneId': ?zoneId,
    };
  }

  factory GetLogpullRetentionResult.fromMap(Map<String, dynamic> map) {
    return GetLogpullRetentionResult(
      flag: (() { final guardedValue = map['flag']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
