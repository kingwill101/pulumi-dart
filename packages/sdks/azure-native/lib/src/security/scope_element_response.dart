// ignore_for_file: unused_element, unnecessary_cast


/// A more specific scope used to identify the alerts to suppress.
class ScopeElementResponse {
  /// The alert entity type to suppress by.
  final String? field;

  /// Creates a new [ScopeElementResponse].
  /// [field] The alert entity type to suppress by.
  ScopeElementResponse({
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
    };
  }

  factory ScopeElementResponse.fromMap(Map<String, dynamic> map) {
    return ScopeElementResponse(
      field: map['field'] == null ? null : map['field'] as String,
    );
  }
}

