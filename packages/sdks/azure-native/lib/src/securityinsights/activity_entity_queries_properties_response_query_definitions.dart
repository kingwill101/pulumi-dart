// ignore_for_file: unused_element, unnecessary_cast


/// The Activity query definitions
class ActivityEntityQueriesPropertiesResponseQueryDefinitions {
  /// The Activity query to run on a given entity
  final String? query;

  /// Creates a new [ActivityEntityQueriesPropertiesResponseQueryDefinitions].
  /// [query] The Activity query to run on a given entity
  ActivityEntityQueriesPropertiesResponseQueryDefinitions({
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': ?query,
    };
  }

  factory ActivityEntityQueriesPropertiesResponseQueryDefinitions.fromMap(Map<String, dynamic> map) {
    return ActivityEntityQueriesPropertiesResponseQueryDefinitions(
      query: map['query'] == null ? null : map['query'] as String,
    );
  }
}

