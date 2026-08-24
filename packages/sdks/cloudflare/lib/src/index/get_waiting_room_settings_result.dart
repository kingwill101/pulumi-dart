// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWaitingRoomSettings.
class GetWaitingRoomSettingsResult {
  /// Identifier.
  final String? id;
  /// Whether to allow verified search engine crawlers to bypass all waiting rooms on this zone.
  /// Verified search engine crawlers will not be tracked or counted by the waiting room system,
  /// and will not appear in waiting room analytics.
  final bool? searchEngineCrawlerBypass;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetWaitingRoomSettingsResult].
  /// [id] Identifier.
  /// [searchEngineCrawlerBypass] Whether to allow verified search engine crawlers to bypass all waiting rooms on this zone.
  /// [zoneId] Identifier.
  const GetWaitingRoomSettingsResult({
    this.id,
    this.searchEngineCrawlerBypass,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'searchEngineCrawlerBypass': ?searchEngineCrawlerBypass,
      'zoneId': ?zoneId,
    };
  }

  factory GetWaitingRoomSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetWaitingRoomSettingsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      searchEngineCrawlerBypass: (() { final guardedValue = map['searchEngineCrawlerBypass']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
