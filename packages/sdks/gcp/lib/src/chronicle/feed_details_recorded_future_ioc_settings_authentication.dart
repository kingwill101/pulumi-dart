// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_recorded_future_ioc_settings_authentication_header_key_value.dart';

class FeedDetailsRecordedFutureIocSettingsAuthentication {
  /// Header key-value pairs.
  /// Structure is documented below.
  final pulumi.Input<List<FeedDetailsRecordedFutureIocSettingsAuthenticationHeaderKeyValue>?>? headerKeyValues;

  /// Creates a new [FeedDetailsRecordedFutureIocSettingsAuthentication].
  /// [headerKeyValues] Header key-value pairs.
  const FeedDetailsRecordedFutureIocSettingsAuthentication({
    this.headerKeyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerKeyValues': ?pulumi.Input.mapOptionalInputValue<List<FeedDetailsRecordedFutureIocSettingsAuthenticationHeaderKeyValue>, List<Map<String, dynamic>>>(headerKeyValues, (value) => pulumi.Input.encodeList<FeedDetailsRecordedFutureIocSettingsAuthenticationHeaderKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeedDetailsRecordedFutureIocSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsRecordedFutureIocSettingsAuthentication(
      headerKeyValues: (() { final guardedValue = map['headerKeyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeedDetailsRecordedFutureIocSettingsAuthenticationHeaderKeyValue>(guardedValue, (value) => FeedDetailsRecordedFutureIocSettingsAuthenticationHeaderKeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
