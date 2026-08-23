// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_netskope_alert_v2_settings_authentication_header_key_value.dart';

class FeedDetailsNetskopeAlertV2SettingsAuthentication {
  /// Header key-value pairs.
  /// Structure is documented below.
  final pulumi.Input<List<FeedDetailsNetskopeAlertV2SettingsAuthenticationHeaderKeyValue>>? headerKeyValues;

  /// Creates a new [FeedDetailsNetskopeAlertV2SettingsAuthentication].
  /// [headerKeyValues] Header key-value pairs.
  const FeedDetailsNetskopeAlertV2SettingsAuthentication({
    this.headerKeyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerKeyValues': ?pulumi.Input.mapOptionalInputValue<List<FeedDetailsNetskopeAlertV2SettingsAuthenticationHeaderKeyValue>, List<Map<String, dynamic>>>(headerKeyValues, (value) => pulumi.Input.encodeList<FeedDetailsNetskopeAlertV2SettingsAuthenticationHeaderKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeedDetailsNetskopeAlertV2SettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsNetskopeAlertV2SettingsAuthentication(
      headerKeyValues: (() { final guardedValue = map['headerKeyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeedDetailsNetskopeAlertV2SettingsAuthenticationHeaderKeyValue>(guardedValue, (value) => FeedDetailsNetskopeAlertV2SettingsAuthenticationHeaderKeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
