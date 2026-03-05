// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_regex.dart';

/// A collection of regular expressions to determine what tables to match against.
class GooglePrivacyDlpV2BigQueryRegexes {
  /// A single BigQuery regular expression pattern to match against one or more tables, datasets, or projects that contain BigQuery tables.
  final pulumi.Input<List<GooglePrivacyDlpV2BigQueryRegex>>? patterns;

  /// Creates a new [GooglePrivacyDlpV2BigQueryRegexes].
  /// [patterns] A single BigQuery regular expression pattern to match against one or more tables, datasets, or projects that contain BigQuery tables.
  GooglePrivacyDlpV2BigQueryRegexes({
    this.patterns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patterns': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2BigQueryRegex>, List<Map<String, dynamic>>>(patterns, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2BigQueryRegex, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2BigQueryRegexes.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryRegexes(
      patterns: (() { final guardedValue = map['patterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2BigQueryRegex>(guardedValue, (value) => GooglePrivacyDlpV2BigQueryRegex.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

