// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_rapid7_insight_settings_authentication_header_key_value.dart';

class FeedDetailsRapid7InsightSettingsAuthentication {
  /// Header key-value pairs.
  /// Structure is documented below.
  final pulumi.Input<List<FeedDetailsRapid7InsightSettingsAuthenticationHeaderKeyValue>?>? headerKeyValues;

  /// Creates a new [FeedDetailsRapid7InsightSettingsAuthentication].
  /// [headerKeyValues] Header key-value pairs.
  const FeedDetailsRapid7InsightSettingsAuthentication({
    this.headerKeyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerKeyValues': ?pulumi.Input.mapOptionalInputValue<List<FeedDetailsRapid7InsightSettingsAuthenticationHeaderKeyValue>, List<Map<String, dynamic>>>(headerKeyValues, (value) => pulumi.Input.encodeList<FeedDetailsRapid7InsightSettingsAuthenticationHeaderKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeedDetailsRapid7InsightSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsRapid7InsightSettingsAuthentication(
      headerKeyValues: (() { final guardedValue = map['headerKeyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeedDetailsRapid7InsightSettingsAuthenticationHeaderKeyValue>(guardedValue, (value) => FeedDetailsRapid7InsightSettingsAuthenticationHeaderKeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
