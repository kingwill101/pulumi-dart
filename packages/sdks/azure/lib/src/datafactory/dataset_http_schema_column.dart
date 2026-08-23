// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetHttpSchemaColumn {
  /// The description of the column.
  final pulumi.Input<String>? description;
  /// The name of the column.
  final pulumi.Input<String> name;
  /// Type of the column. Valid values are `Byte`, `Byte[]`, `Boolean`, `Date`, `DateTime`,`DateTimeOffset`, `Decimal`, `Double`, `Guid`, `Int16`, `Int32`, `Int64`, `Single`, `String`, `TimeSpan`. Please note these values are case sensitive.
  final pulumi.Input<String>? type;

  /// Creates a new [DatasetHttpSchemaColumn].
  /// [description] The description of the column.
  /// [name] The name of the column.
  /// [type] Type of the column. Valid values are `Byte`, `Byte[]`, `Boolean`, `Date`, `DateTime`,`DateTimeOffset`, `Decimal`, `Double`, `Guid`, `Int16`, `Int32`, `Int64`, `Single`, `String`, `TimeSpan`. Please note these values are case sensitive.
  const DatasetHttpSchemaColumn({
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

  factory DatasetHttpSchemaColumn.fromMap(Map<String, dynamic> map) {
    return DatasetHttpSchemaColumn(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
