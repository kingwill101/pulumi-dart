// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_proximity.dart';
import 'google_privacy_dlp_v2_regex.dart';

/// The rule to exclude findings based on a hotword. For record inspection of tables, column names are considered hotwords. An example of this is to exclude a finding if it belongs to a BigQuery column that matches a specific pattern.
class GooglePrivacyDlpV2ExcludeByHotword {
  /// Regular expression pattern defining what qualifies as a hotword.
  final pulumi.Input<GooglePrivacyDlpV2Regex>? hotwordRegex;
  /// Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The windowBefore property in proximity should be set to 1 if the hotword needs to be included in a column header.
  final pulumi.Input<GooglePrivacyDlpV2Proximity>? proximity;

  /// Creates a new [GooglePrivacyDlpV2ExcludeByHotword].
  /// [hotwordRegex] Regular expression pattern defining what qualifies as a hotword.
  /// [proximity] Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The windowBefore property in proximity should be set to 1 if the hotword needs to be included in a column header.
  const GooglePrivacyDlpV2ExcludeByHotword({
    this.hotwordRegex,
    this.proximity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRegex': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Regex, Map<String, dynamic>>(hotwordRegex, (value) => value.toMap()),
      'proximity': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Proximity, Map<String, dynamic>>(proximity, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ExcludeByHotword.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ExcludeByHotword(
      hotwordRegex: (() { final guardedValue = map['hotwordRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2Regex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proximity: (() { final guardedValue = map['proximity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2Proximity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
