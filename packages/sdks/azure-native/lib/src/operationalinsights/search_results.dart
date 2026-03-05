// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters of the search job that initiated this table.
class SearchResults {
  /// Search job Description.
  final pulumi.Input<String>? description;
  /// The timestamp to end the search by (UTC)
  final pulumi.Input<String>? endSearchTime;
  /// Limit the search job to return up to specified number of rows.
  final pulumi.Input<int>? limit;
  /// Search job query.
  final pulumi.Input<String>? query;
  /// The timestamp to start the search from (UTC)
  final pulumi.Input<String>? startSearchTime;

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endSearchTime: (() { final guardedValue = map['endSearchTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startSearchTime: (() { final guardedValue = map['startSearchTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

