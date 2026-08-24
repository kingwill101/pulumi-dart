// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_waiting_room_settings_waiting_room_settings_args_doc}
/// The set of arguments for WaitingRoomSettings.
/// {@endtemplate}
/// {@macro pulumi_index_waiting_room_settings_waiting_room_settings_args_doc}
class WaitingRoomSettingsArgs {
  /// Whether to allow verified search engine crawlers to bypass all waiting rooms on this zone.
  /// Verified search engine crawlers will not be tracked or counted by the waiting room system,
  /// and will not appear in waiting room analytics.
  final pulumi.Input<bool?>? searchEngineCrawlerBypass;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [WaitingRoomSettingsArgs].
  /// [searchEngineCrawlerBypass] Whether to allow verified search engine crawlers to bypass all waiting rooms on this zone.
  /// [zoneId] Identifier.
  const WaitingRoomSettingsArgs({
    this.searchEngineCrawlerBypass,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'searchEngineCrawlerBypass': ?searchEngineCrawlerBypass,
      'zoneId': zoneId,
    };
  }

  factory WaitingRoomSettingsArgs.fromMap(Map<String, dynamic> map) {
    return WaitingRoomSettingsArgs(
      searchEngineCrawlerBypass: (() { final guardedValue = map['searchEngineCrawlerBypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
