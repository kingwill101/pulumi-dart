// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_thinkst_canary_settings_authentication_header_key_value.dart';

class FeedDetailsThinkstCanarySettingsAuthentication {
  /// Header key-value pairs.
  /// Structure is documented below.
  final pulumi.Input<List<FeedDetailsThinkstCanarySettingsAuthenticationHeaderKeyValue>>? headerKeyValues;

  /// Creates a new [FeedDetailsThinkstCanarySettingsAuthentication].
  /// [headerKeyValues] Header key-value pairs.
  const FeedDetailsThinkstCanarySettingsAuthentication({
    this.headerKeyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerKeyValues': ?pulumi.Input.mapOptionalInputValue<List<FeedDetailsThinkstCanarySettingsAuthenticationHeaderKeyValue>, List<Map<String, dynamic>>>(headerKeyValues, (value) => pulumi.Input.encodeList<FeedDetailsThinkstCanarySettingsAuthenticationHeaderKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeedDetailsThinkstCanarySettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsThinkstCanarySettingsAuthentication(
      headerKeyValues: (() { final guardedValue = map['headerKeyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeedDetailsThinkstCanarySettingsAuthenticationHeaderKeyValue>(guardedValue, (value) => FeedDetailsThinkstCanarySettingsAuthenticationHeaderKeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
