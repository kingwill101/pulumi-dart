// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_cortex_xdr_settings_authentication_header_key_value.dart';

class FeedDetailsCortexXdrSettingsAuthentication {
  /// Header key-value pairs.
  /// Structure is documented below.
  final pulumi.Input<List<FeedDetailsCortexXdrSettingsAuthenticationHeaderKeyValue>>? headerKeyValues;

  /// Creates a new [FeedDetailsCortexXdrSettingsAuthentication].
  /// [headerKeyValues] Header key-value pairs.
  const FeedDetailsCortexXdrSettingsAuthentication({
    this.headerKeyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerKeyValues': ?pulumi.Input.mapOptionalInputValue<List<FeedDetailsCortexXdrSettingsAuthenticationHeaderKeyValue>, List<Map<String, dynamic>>>(headerKeyValues, (value) => pulumi.Input.encodeList<FeedDetailsCortexXdrSettingsAuthenticationHeaderKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeedDetailsCortexXdrSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsCortexXdrSettingsAuthentication(
      headerKeyValues: (() { final guardedValue = map['headerKeyValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeedDetailsCortexXdrSettingsAuthenticationHeaderKeyValue>(guardedValue, (value) => FeedDetailsCortexXdrSettingsAuthenticationHeaderKeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
