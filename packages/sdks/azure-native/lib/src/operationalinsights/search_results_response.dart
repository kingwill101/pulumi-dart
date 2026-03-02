// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters of the search job that initiated this table.
class SearchResultsResponse {
  /// Search results table async operation id.
  final pulumi.Input<String> azureAsyncOperationId;
  /// Search job Description.
  final pulumi.Input<String>? description;
  /// The timestamp to end the search by (UTC)
  final pulumi.Input<String>? endSearchTime;
  /// Limit the search job to return up to specified number of rows.
  final pulumi.Input<int>? limit;
  /// Search job query.
  final pulumi.Input<String>? query;
  /// The table used in the search job.
  final pulumi.Input<String> sourceTable;
  /// The timestamp to start the search from (UTC)
  final pulumi.Input<String>? startSearchTime;

  /// Creates a new [SearchResultsResponse].
  /// [azureAsyncOperationId] Search results table async operation id.
  /// [description] Search job Description.
  /// [endSearchTime] The timestamp to end the search by (UTC)
  /// [limit] Limit the search job to return up to specified number of rows.
  /// [query] Search job query.
  /// [sourceTable] The table used in the search job.
  /// [startSearchTime] The timestamp to start the search from (UTC)
  SearchResultsResponse({
    required this.azureAsyncOperationId,
    this.description,
    this.endSearchTime,
    this.limit,
    this.query,
    required this.sourceTable,
    this.startSearchTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureAsyncOperationId': azureAsyncOperationId,
      'description': ?description,
      'endSearchTime': ?endSearchTime,
      'limit': ?limit,
      'query': ?query,
      'sourceTable': sourceTable,
      'startSearchTime': ?startSearchTime,
    };
  }

  factory SearchResultsResponse.fromMap(Map<String, dynamic> map) {
    return SearchResultsResponse(
      azureAsyncOperationId: (map['azureAsyncOperationId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      endSearchTime: map['endSearchTime'] == null ? null : (map['endSearchTime'] as String).input(),
      limit: map['limit'] == null ? null : (map['limit'] as int).input(),
      query: map['query'] == null ? null : (map['query'] as String).input(),
      sourceTable: (map['sourceTable'] as String).input(),
      startSearchTime: map['startSearchTime'] == null ? null : (map['startSearchTime'] as String).input(),
    );
  }
}

