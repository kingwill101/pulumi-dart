// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_value.dart';

/// Replace each input value with a given `Value`.
class GooglePrivacyDlpV2ReplaceValueConfig {
  /// Value to replace it with.
  final pulumi.Input<GooglePrivacyDlpV2Value>? newValue;

  /// Creates a new [GooglePrivacyDlpV2ReplaceValueConfig].
  /// [newValue] Value to replace it with.
  GooglePrivacyDlpV2ReplaceValueConfig({
    this.newValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newValue': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Value, Map<String, dynamic>>(newValue, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ReplaceValueConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ReplaceValueConfig(
      newValue: (() { final guardedValue = map['newValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2Value.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

