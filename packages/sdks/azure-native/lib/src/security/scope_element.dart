// ignore_for_file: unused_element, unnecessary_cast


/// A more specific scope used to identify the alerts to suppress.
class ScopeElement {
  /// The alert entity type to suppress by.
  final String? field;

  /// Creates a new [ScopeElement].
  /// [field] The alert entity type to suppress by.
  ScopeElement({
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
    };
  }

  factory ScopeElement.fromMap(Map<String, dynamic> map) {
    return ScopeElement(
      field: map['field'] == null ? null : map['field'] as String,
    );
  }
}

