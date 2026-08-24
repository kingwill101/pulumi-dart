// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSnippetRules.
class GetSnippetRulesResult {
  /// Use this field to specify the unique ID of the zone.
  final String? id;
  /// Use this field to specify the unique ID of the zone.
  final String? zoneId;

  /// Creates a new [GetSnippetRulesResult].
  /// [id] Use this field to specify the unique ID of the zone.
  /// [zoneId] Use this field to specify the unique ID of the zone.
  const GetSnippetRulesResult({
    this.id,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'zoneId': ?zoneId,
    };
  }

  factory GetSnippetRulesResult.fromMap(Map<String, dynamic> map) {
    return GetSnippetRulesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
