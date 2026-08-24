// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WaitingRoomSettings resources.
class WaitingRoomSettingsState {
  /// Whether to allow verified search engine crawlers to bypass all waiting rooms on this zone.
  /// Verified search engine crawlers will not be tracked or counted by the waiting room system,
  /// and will not appear in waiting room analytics.
  final pulumi.Input<bool?>? searchEngineCrawlerBypass;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [WaitingRoomSettingsState].
  /// [searchEngineCrawlerBypass] Whether to allow verified search engine crawlers to bypass all waiting rooms on this zone.
  /// [zoneId] Identifier.
  const WaitingRoomSettingsState({
    this.searchEngineCrawlerBypass,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'searchEngineCrawlerBypass': ?searchEngineCrawlerBypass,
      'zoneId': ?zoneId,
    };
  }

  factory WaitingRoomSettingsState.fromMap(Map<String, dynamic> map) {
    return WaitingRoomSettingsState(
      searchEngineCrawlerBypass: (() { final guardedValue = map['searchEngineCrawlerBypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
