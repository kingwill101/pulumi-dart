// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_pan_ioc_settings_authentication_header_key_value.dart';

class FeedDetailsPanIocSettingsAuthentication {
  /// Header key-value pairs.
  /// Structure is documented below.
  final pulumi.Input<List<FeedDetailsPanIocSettingsAuthenticationHeaderKeyValue>?>? headerKeyValues;

  /// Creates a new [FeedDetailsPanIocSettingsAuthentication].
  /// [headerKeyValues] Header key-value pairs.
  const FeedDetailsPanIocSettingsAuthentication({
    this.headerKeyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerKeyValues': ?pulumi.Input.mapOptionalInputValue<List<FeedDetailsPanIocSettingsAuthenticationHeaderKeyValue>, List<Map<String, dynamic>>>(headerKeyValues, (value) => pulumi.Input.encodeList<FeedDetailsPanIocSettingsAuthenticationHeaderKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeedDetailsPanIocSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsPanIocSettingsAuthentication(
      headerKeyValues: (() { final guardedValue = map['headerKeyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeedDetailsPanIocSettingsAuthenticationHeaderKeyValue>(guardedValue, (value) => FeedDetailsPanIocSettingsAuthenticationHeaderKeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
