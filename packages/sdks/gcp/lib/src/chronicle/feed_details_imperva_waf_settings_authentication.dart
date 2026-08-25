// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_imperva_waf_settings_authentication_header_key_value.dart';

class FeedDetailsImpervaWafSettingsAuthentication {
  /// Header key-value pairs.
  /// Structure is documented below.
  final pulumi.Input<List<FeedDetailsImpervaWafSettingsAuthenticationHeaderKeyValue>?>? headerKeyValues;

  /// Creates a new [FeedDetailsImpervaWafSettingsAuthentication].
  /// [headerKeyValues] Header key-value pairs.
  const FeedDetailsImpervaWafSettingsAuthentication({
    this.headerKeyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerKeyValues': ?pulumi.Input.mapOptionalInputValue<List<FeedDetailsImpervaWafSettingsAuthenticationHeaderKeyValue>, List<Map<String, dynamic>>>(headerKeyValues, (value) => pulumi.Input.encodeList<FeedDetailsImpervaWafSettingsAuthenticationHeaderKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeedDetailsImpervaWafSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsImpervaWafSettingsAuthentication(
      headerKeyValues: (() { final guardedValue = map['headerKeyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeedDetailsImpervaWafSettingsAuthenticationHeaderKeyValue>(guardedValue, (value) => FeedDetailsImpervaWafSettingsAuthenticationHeaderKeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
