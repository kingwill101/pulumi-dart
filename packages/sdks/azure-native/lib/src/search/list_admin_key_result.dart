// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listAdminKey.
class ListAdminKeyResult {
  /// The primary admin API key of the search service.
  final String primaryKey;
  /// The secondary admin API key of the search service.
  final String secondaryKey;

  /// Creates a new [ListAdminKeyResult].
  /// [primaryKey] The primary admin API key of the search service.
  /// [secondaryKey] The secondary admin API key of the search service.
  ListAdminKeyResult({
    required this.primaryKey,
    required this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': primaryKey,
      'secondaryKey': secondaryKey,
    };
  }

  factory ListAdminKeyResult.fromMap(Map<String, dynamic> map) {
    return ListAdminKeyResult(
      primaryKey: map['primaryKey'] as String,
      secondaryKey: map['secondaryKey'] as String,
    );
  }
}

