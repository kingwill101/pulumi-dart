// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_dummy_log_type_settings_authentication_header_key_value.dart';

class FeedDetailsDummyLogTypeSettingsAuthentication {
  /// Header key-value pairs.
  /// Structure is documented below.
  final pulumi.Input<List<FeedDetailsDummyLogTypeSettingsAuthenticationHeaderKeyValue>?>? headerKeyValues;

  /// Creates a new [FeedDetailsDummyLogTypeSettingsAuthentication].
  /// [headerKeyValues] Header key-value pairs.
  const FeedDetailsDummyLogTypeSettingsAuthentication({
    this.headerKeyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerKeyValues': ?pulumi.Input.mapOptionalInputValue<List<FeedDetailsDummyLogTypeSettingsAuthenticationHeaderKeyValue>, List<Map<String, dynamic>>>(headerKeyValues, (value) => pulumi.Input.encodeList<FeedDetailsDummyLogTypeSettingsAuthenticationHeaderKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeedDetailsDummyLogTypeSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsDummyLogTypeSettingsAuthentication(
      headerKeyValues: (() { final guardedValue = map['headerKeyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeedDetailsDummyLogTypeSettingsAuthenticationHeaderKeyValue>(guardedValue, (value) => FeedDetailsDummyLogTypeSettingsAuthenticationHeaderKeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
