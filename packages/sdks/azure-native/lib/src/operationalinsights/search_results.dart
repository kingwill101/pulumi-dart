// ignore_for_file: unused_element, unnecessary_cast


/// Parameters of the search job that initiated this table.
class SearchResults {
  /// Search job Description.
  final String? description;
  /// The timestamp to end the search by (UTC)
  final String? endSearchTime;
  /// Limit the search job to return up to specified number of rows.
  final int? limit;
  /// Search job query.
  final String? query;
  /// The timestamp to start the search from (UTC)
  final String? startSearchTime;

  /// Creates a new [SearchResults].
  /// [description] Search job Description.
  /// [endSearchTime] The timestamp to end the search by (UTC)
  /// [limit] Limit the search job to return up to specified number of rows.
  /// [query] Search job query.
  /// [startSearchTime] The timestamp to start the search from (UTC)
  SearchResults({
    this.description,
    this.endSearchTime,
    this.limit,
    this.query,
    this.startSearchTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endSearchTime': ?endSearchTime,
      'limit': ?limit,
      'query': ?query,
      'startSearchTime': ?startSearchTime,
    };
  }

  factory SearchResults.fromMap(Map<String, dynamic> map) {
    return SearchResults(
      description: map['description'] == null ? null : map['description'] as String,
      endSearchTime: map['endSearchTime'] == null ? null : map['endSearchTime'] as String,
      limit: map['limit'] == null ? null : map['limit'] as int,
      query: map['query'] == null ? null : map['query'] as String,
      startSearchTime: map['startSearchTime'] == null ? null : map['startSearchTime'] as String,
    );
  }
}

