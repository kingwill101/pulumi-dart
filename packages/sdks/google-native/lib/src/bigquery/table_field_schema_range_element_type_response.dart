// ignore_for_file: unused_element, unnecessary_cast


/// Optional. The subtype of the RANGE, if the type of this field is RANGE. If the type is RANGE, this field is required. Possible values for the field element type of a RANGE include: - DATE - DATETIME - TIMESTAMP
class TableFieldSchemaRangeElementTypeResponse {
  /// The field element type of a RANGE
  final String type;

  /// Creates a new [TableFieldSchemaRangeElementTypeResponse].
  /// [type] The field element type of a RANGE
  TableFieldSchemaRangeElementTypeResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory TableFieldSchemaRangeElementTypeResponse.fromMap(Map<String, dynamic> map) {
    return TableFieldSchemaRangeElementTypeResponse(
      type: map['type'] as String,
    );
  }
}

