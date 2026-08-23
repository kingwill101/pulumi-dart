// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_mandiant_ioc_settings_authentication_header_key_value.dart';

class FeedDetailsMandiantIocSettingsAuthentication {
  /// Header key-value pairs.
  /// Structure is documented below.
  final pulumi.Input<List<FeedDetailsMandiantIocSettingsAuthenticationHeaderKeyValue>>? headerKeyValues;

  /// Creates a new [FeedDetailsMandiantIocSettingsAuthentication].
  /// [headerKeyValues] Header key-value pairs.
  const FeedDetailsMandiantIocSettingsAuthentication({
    this.headerKeyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerKeyValues': ?pulumi.Input.mapOptionalInputValue<List<FeedDetailsMandiantIocSettingsAuthenticationHeaderKeyValue>, List<Map<String, dynamic>>>(headerKeyValues, (value) => pulumi.Input.encodeList<FeedDetailsMandiantIocSettingsAuthenticationHeaderKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeedDetailsMandiantIocSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsMandiantIocSettingsAuthentication(
      headerKeyValues: (() { final guardedValue = map['headerKeyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeedDetailsMandiantIocSettingsAuthenticationHeaderKeyValue>(guardedValue, (value) => FeedDetailsMandiantIocSettingsAuthenticationHeaderKeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
