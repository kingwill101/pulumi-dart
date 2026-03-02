// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The types of BigQuery tables supported by Cloud DLP.
class GooglePrivacyDlpV2BigQueryTableTypesResponse {
  /// A set of BigQuery table types.
  final pulumi.Input<List<String>> types;

  /// Creates a new [GooglePrivacyDlpV2BigQueryTableTypesResponse].
  /// [types] A set of BigQuery table types.
  GooglePrivacyDlpV2BigQueryTableTypesResponse({
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'types': types,
    };
  }

  factory GooglePrivacyDlpV2BigQueryTableTypesResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryTableTypesResponse(
      types: ((map['types'] as List).cast<String>()).input(),
    );
  }
}

