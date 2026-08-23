// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_okta_settings_authentication_header_key_value.dart';

class FeedDetailsOktaSettingsAuthentication {
  /// Header key-value pairs.
  /// Structure is documented below.
  final pulumi.Input<List<FeedDetailsOktaSettingsAuthenticationHeaderKeyValue>>? headerKeyValues;

  /// Creates a new [FeedDetailsOktaSettingsAuthentication].
  /// [headerKeyValues] Header key-value pairs.
  const FeedDetailsOktaSettingsAuthentication({
    this.headerKeyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerKeyValues': ?pulumi.Input.mapOptionalInputValue<List<FeedDetailsOktaSettingsAuthenticationHeaderKeyValue>, List<Map<String, dynamic>>>(headerKeyValues, (value) => pulumi.Input.encodeList<FeedDetailsOktaSettingsAuthenticationHeaderKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeedDetailsOktaSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsOktaSettingsAuthentication(
      headerKeyValues: (() { final guardedValue = map['headerKeyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeedDetailsOktaSettingsAuthenticationHeaderKeyValue>(guardedValue, (value) => FeedDetailsOktaSettingsAuthenticationHeaderKeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
