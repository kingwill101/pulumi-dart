// ignore_for_file: unused_element, unnecessary_cast


/// Optional. The subtype of the RANGE, if the type of this field is RANGE. If the type is RANGE, this field is required. Possible values for the field element type of a RANGE include: - DATE - DATETIME - TIMESTAMP
class TableFieldSchemaRangeElementType {
  /// The field element type of a RANGE
  final String? type;

  /// Creates a new [TableFieldSchemaRangeElementType].
  /// [type] The field element type of a RANGE
  TableFieldSchemaRangeElementType({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory TableFieldSchemaRangeElementType.fromMap(Map<String, dynamic> map) {
    return TableFieldSchemaRangeElementType(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

