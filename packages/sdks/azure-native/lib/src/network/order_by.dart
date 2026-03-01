// ignore_for_file: unused_element, unnecessary_cast


/// Describes a column to sort
class OrderBy {
  /// Describes the actual column name to sort by
  final String? field;
  /// Describes if results should be in ascending/descending order
  final String? order;

  /// Creates a new [OrderBy].
  /// [field] Describes the actual column name to sort by
  /// [order] Describes if results should be in ascending/descending order
  OrderBy({
    this.field,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'order': ?order,
    };
  }

  factory OrderBy.fromMap(Map<String, dynamic> map) {
    return OrderBy(
      field: map['field'] == null ? null : map['field'] as String,
      order: map['order'] == null ? null : map['order'] as String,
    );
  }
}

