// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_regexes_response.dart';

/// Specifies a collection of BigQuery tables. Used for Discovery.
class GooglePrivacyDlpV2BigQueryTableCollectionResponse {
  /// A collection of regular expressions to match a BigQuery table against.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryRegexesResponse> includeRegexes;

  /// Creates a new [GooglePrivacyDlpV2BigQueryTableCollectionResponse].
  /// [includeRegexes] A collection of regular expressions to match a BigQuery table against.
  GooglePrivacyDlpV2BigQueryTableCollectionResponse({
    required this.includeRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeRegexes': pulumi.Input.mapInputValue<GooglePrivacyDlpV2BigQueryRegexesResponse, Map<String, dynamic>>(includeRegexes, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2BigQueryTableCollectionResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryTableCollectionResponse(
      includeRegexes: pulumi.Input.fromValue(GooglePrivacyDlpV2BigQueryRegexesResponse.fromMap((map['includeRegexes']! as Map).cast<String, dynamic>())),
    );
  }
}

