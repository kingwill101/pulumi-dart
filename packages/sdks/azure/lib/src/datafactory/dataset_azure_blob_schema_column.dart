// ignore_for_file: unused_element, unnecessary_cast


class DatasetAzureBlobSchemaColumn {
  /// The description of the column.
  final String? description;
  /// The name of the column.
  final String name;
  /// Type of the column. Valid values are `Byte`, `Byte[]`, `Boolean`, `Date`, `DateTime`,`DateTimeOffset`, `Decimal`, `Double`, `Guid`, `Int16`, `Int32`, `Int64`, `Single`, `String`, `TimeSpan`. Please note these values are case sensitive.
  final String? type;

  /// Creates a new [DatasetAzureBlobSchemaColumn].
  /// [description] The description of the column.
  /// [name] The name of the column.
  /// [type] Type of the column. Valid values are `Byte`, `Byte[]`, `Boolean`, `Date`, `DateTime`,`DateTimeOffset`, `Decimal`, `Double`, `Guid`, `Int16`, `Int32`, `Int64`, `Single`, `String`, `TimeSpan`. Please note these values are case sensitive.
  DatasetAzureBlobSchemaColumn({
    this.description,
    required this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'type': ?type,
    };
  }

  factory DatasetAzureBlobSchemaColumn.fromMap(Map<String, dynamic> map) {
    return DatasetAzureBlobSchemaColumn(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

