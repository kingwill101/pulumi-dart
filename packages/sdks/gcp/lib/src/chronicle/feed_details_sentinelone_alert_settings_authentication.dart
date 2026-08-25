// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_sentinelone_alert_settings_authentication_header_key_value.dart';

class FeedDetailsSentineloneAlertSettingsAuthentication {
  /// Header key-value pairs.
  /// Structure is documented below.
  final pulumi.Input<List<FeedDetailsSentineloneAlertSettingsAuthenticationHeaderKeyValue>?>? headerKeyValues;

  /// Creates a new [FeedDetailsSentineloneAlertSettingsAuthentication].
  /// [headerKeyValues] Header key-value pairs.
  const FeedDetailsSentineloneAlertSettingsAuthentication({
    this.headerKeyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerKeyValues': ?pulumi.Input.mapOptionalInputValue<List<FeedDetailsSentineloneAlertSettingsAuthenticationHeaderKeyValue>, List<Map<String, dynamic>>>(headerKeyValues, (value) => pulumi.Input.encodeList<FeedDetailsSentineloneAlertSettingsAuthenticationHeaderKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeedDetailsSentineloneAlertSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsSentineloneAlertSettingsAuthentication(
      headerKeyValues: (() { final guardedValue = map['headerKeyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeedDetailsSentineloneAlertSettingsAuthenticationHeaderKeyValue>(guardedValue, (value) => FeedDetailsSentineloneAlertSettingsAuthenticationHeaderKeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
