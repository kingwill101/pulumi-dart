// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_netskope_alert_settings_authentication_header_key_value.dart';

class FeedDetailsNetskopeAlertSettingsAuthentication {
  /// Header key-value pairs.
  /// Structure is documented below.
  final pulumi.Input<List<FeedDetailsNetskopeAlertSettingsAuthenticationHeaderKeyValue>>? headerKeyValues;

  /// Creates a new [FeedDetailsNetskopeAlertSettingsAuthentication].
  /// [headerKeyValues] Header key-value pairs.
  const FeedDetailsNetskopeAlertSettingsAuthentication({
    this.headerKeyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerKeyValues': ?pulumi.Input.mapOptionalInputValue<List<FeedDetailsNetskopeAlertSettingsAuthenticationHeaderKeyValue>, List<Map<String, dynamic>>>(headerKeyValues, (value) => pulumi.Input.encodeList<FeedDetailsNetskopeAlertSettingsAuthenticationHeaderKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeedDetailsNetskopeAlertSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsNetskopeAlertSettingsAuthentication(
      headerKeyValues: (() { final guardedValue = map['headerKeyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeedDetailsNetskopeAlertSettingsAuthenticationHeaderKeyValue>(guardedValue, (value) => FeedDetailsNetskopeAlertSettingsAuthenticationHeaderKeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
