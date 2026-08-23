// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The subtype of the RANGE, if the type of this field is RANGE. If the type is RANGE, this field is required. Possible values for the field element type of a RANGE include: - DATE - DATETIME - TIMESTAMP
class TableFieldSchemaRangeElementType {
  /// The field element type of a RANGE
  final pulumi.Input<String>? type;

  /// Creates a new [TableFieldSchemaRangeElementType].
  /// [type] The field element type of a RANGE
  const TableFieldSchemaRangeElementType({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory TableFieldSchemaRangeElementType.fromMap(Map<String, dynamic> map) {
    return TableFieldSchemaRangeElementType(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
