// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_time_part_config_part_to_extract.dart';

/// For use with `Date`, `Timestamp`, and `TimeOfDay`, extract or preserve a portion of the value.
class GooglePrivacyDlpV2TimePartConfig {
  /// The part of the time to keep.
  final pulumi.Input<GooglePrivacyDlpV2TimePartConfigPartToExtract>?
  partToExtract;

  /// Creates a new [GooglePrivacyDlpV2TimePartConfig].
  /// [partToExtract] The part of the time to keep.
  GooglePrivacyDlpV2TimePartConfig({this.partToExtract});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partToExtract':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2TimePartConfigPartToExtract,
            String
          >(partToExtract, (value) => value.wireValue),
    };
  }

  factory GooglePrivacyDlpV2TimePartConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TimePartConfig(
      partToExtract: (() {
        final guardedValue = map['partToExtract'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2TimePartConfigPartToExtract.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
