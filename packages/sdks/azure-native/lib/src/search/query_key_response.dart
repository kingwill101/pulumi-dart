// ignore_for_file: unused_element, unnecessary_cast


/// Describes an API key for a given Azure AI Search service that conveys read-only permissions on the docs collection of an index.
class QueryKeyResponse {
  /// The value of the query API key.
  final String key;
  /// The name of the query API key. Query names are optional, but assigning a name can help you remember how it's used.
  final String name;

  /// Creates a new [QueryKeyResponse].
  /// [key] The value of the query API key.
  /// [name] The name of the query API key. Query names are optional, but assigning a name can help you remember how it's used.
  QueryKeyResponse({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
    };
  }

  factory QueryKeyResponse.fromMap(Map<String, dynamic> map) {
    return QueryKeyResponse(
      key: map['key'] as String,
      name: map['name'] as String,
    );
  }
}

