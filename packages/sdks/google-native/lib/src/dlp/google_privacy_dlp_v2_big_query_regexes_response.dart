// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_regex_response.dart';

/// A collection of regular expressions to determine what tables to match against.
class GooglePrivacyDlpV2BigQueryRegexesResponse {
  /// A single BigQuery regular expression pattern to match against one or more tables, datasets, or projects that contain BigQuery tables.
  final pulumi.Input<List<GooglePrivacyDlpV2BigQueryRegexResponse>> patterns;

  /// Creates a new [GooglePrivacyDlpV2BigQueryRegexesResponse].
  /// [patterns] A single BigQuery regular expression pattern to match against one or more tables, datasets, or projects that contain BigQuery tables.
  GooglePrivacyDlpV2BigQueryRegexesResponse({
    required this.patterns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patterns': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2BigQueryRegexResponse>, List<Map<String, dynamic>>>(patterns, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2BigQueryRegexResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2BigQueryRegexesResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryRegexesResponse(
      patterns: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2BigQueryRegexResponse>(map['patterns']!, (value) => GooglePrivacyDlpV2BigQueryRegexResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

