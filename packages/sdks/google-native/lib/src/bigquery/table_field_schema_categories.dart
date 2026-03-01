// ignore_for_file: unused_element, unnecessary_cast


/// [Optional] The categories attached to this field, used for field-level access control.
class TableFieldSchemaCategories {
  /// A list of category resource names. For example, "projects/1/taxonomies/2/categories/3". At most 5 categories are allowed.
  final List<String>? names;

  /// Creates a new [TableFieldSchemaCategories].
  /// [names] A list of category resource names. For example, "projects/1/taxonomies/2/categories/3". At most 5 categories are allowed.
  TableFieldSchemaCategories({
    this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': ?names,
    };
  }

  factory TableFieldSchemaCategories.fromMap(Map<String, dynamic> map) {
    return TableFieldSchemaCategories(
      names: map['names'] == null ? null : (map['names'] as List).cast<String>(),
    );
  }
}

