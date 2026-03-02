// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_regexes.dart';

/// Specifies a collection of BigQuery tables. Used for Discovery.
class GooglePrivacyDlpV2BigQueryTableCollection {
  /// A collection of regular expressions to match a BigQuery table against.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryRegexes>? includeRegexes;

  /// Creates a new [GooglePrivacyDlpV2BigQueryTableCollection].
  /// [includeRegexes] A collection of regular expressions to match a BigQuery table against.
  GooglePrivacyDlpV2BigQueryTableCollection({
    this.includeRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeRegexes': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2BigQueryRegexes, Map<String, dynamic>>(includeRegexes, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2BigQueryTableCollection.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryTableCollection(
      includeRegexes: map['includeRegexes'] == null ? null : (GooglePrivacyDlpV2BigQueryRegexes.fromMap((map['includeRegexes'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

