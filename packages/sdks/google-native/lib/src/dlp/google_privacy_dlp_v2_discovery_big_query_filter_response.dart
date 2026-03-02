// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_table_collection_response.dart';

/// Determines what tables will have profiles generated within an organization or project. Includes the ability to filter by regular expression patterns on project ID, dataset ID, and table ID.
class GooglePrivacyDlpV2DiscoveryBigQueryFilterResponse {
  /// Catch-all. This should always be the last filter in the list because anything above it will apply first. Should only appear once in a configuration. If none is specified, a default one will be added automatically.
  final pulumi.Input<Map<String, dynamic>> otherTables;
  /// A specific set of tables for this filter to apply to. A table collection must be specified in only one filter per config. If a table id or dataset is empty, Cloud DLP assumes all tables in that collection must be profiled. Must specify a project ID.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryTableCollectionResponse> tables;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryBigQueryFilterResponse].
  /// [otherTables] Catch-all. This should always be the last filter in the list because anything above it will apply first. Should only appear once in a configuration. If none is specified, a default one will be added automatically.
  /// [tables] A specific set of tables for this filter to apply to. A table collection must be specified in only one filter per config. If a table id or dataset is empty, Cloud DLP assumes all tables in that collection must be profiled. Must specify a project ID.
  GooglePrivacyDlpV2DiscoveryBigQueryFilterResponse({
    required this.otherTables,
    required this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'otherTables': otherTables,
      'tables': pulumi.Input.mapInputValue<GooglePrivacyDlpV2BigQueryTableCollectionResponse, Map<String, dynamic>>(tables, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DiscoveryBigQueryFilterResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DiscoveryBigQueryFilterResponse(
      otherTables: ((map['otherTables'] as Map).cast<String, dynamic>()).input(),
      tables: (GooglePrivacyDlpV2BigQueryTableCollectionResponse.fromMap((map['tables'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

