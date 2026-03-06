// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Optional] The categories attached to this field, used for field-level access control.
class TableFieldSchemaCategories {
  /// A list of category resource names. For example, "projects/1/taxonomies/2/categories/3". At most 5 categories are allowed.
  final pulumi.Input<List<String>>? names;

  /// Creates a new [TableFieldSchemaCategories].
  /// [names] A list of category resource names. For example, "projects/1/taxonomies/2/categories/3". At most 5 categories are allowed.
  const TableFieldSchemaCategories({
    this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': ?names,
    };
  }

  factory TableFieldSchemaCategories.fromMap(Map<String, dynamic> map) {
    return TableFieldSchemaCategories(
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

