// ignore_for_file: unused_element, unnecessary_cast


/// A key property for the reference data set. A reference data set can have multiple key properties.
class ReferenceDataSetKeyProperty {
  /// The name of the key property.
  final String? name;
  /// The type of the key property.
  final String? type;

  /// Creates a new [ReferenceDataSetKeyProperty].
  /// [name] The name of the key property.
  /// [type] The type of the key property.
  ReferenceDataSetKeyProperty({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory ReferenceDataSetKeyProperty.fromMap(Map<String, dynamic> map) {
    return ReferenceDataSetKeyProperty(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

