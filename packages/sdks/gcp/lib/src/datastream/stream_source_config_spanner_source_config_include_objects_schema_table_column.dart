// ignore_for_file: unused_element, unnecessary_cast


class StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTableColumn {
  /// Column name.
  final String? column;
  /// (Output)
  /// The Spanner data type. Full data types list can be found here:
  /// https://docs.cloud.google.com/spanner/docs/reference/standard-sql/data-types
  final String? dataType;
  /// (Output)
  /// Whether the column is a primary key.
  final bool? isPrimaryKey;
  /// (Output)
  /// The ordinal position of the column in the table.
  final int? ordinalPosition;

  /// Creates a new [StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTableColumn].
  /// [column] Column name.
  /// [dataType] (Output)
  /// [isPrimaryKey] (Output)
  /// [ordinalPosition] (Output)
  StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTableColumn({
    this.column,
    this.dataType,
    this.isPrimaryKey,
    this.ordinalPosition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': ?column,
      'dataType': ?dataType,
      'isPrimaryKey': ?isPrimaryKey,
      'ordinalPosition': ?ordinalPosition,
    };
  }

  factory StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTableColumn.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTableColumn(
      column: map['column'] == null ? null : map['column'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      isPrimaryKey: map['isPrimaryKey'] == null ? null : map['isPrimaryKey'] as bool,
      ordinalPosition: map['ordinalPosition'] == null ? null : map['ordinalPosition'] as int,
    );
  }
}

