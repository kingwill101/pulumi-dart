// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column.dart';

/// Table's schema.
class Schema {
  /// A list of table custom columns.
  final pulumi.Input<List<Column>>? columns;
  /// Table description.
  final pulumi.Input<String>? description;
  /// Table display name.
  final pulumi.Input<String>? displayName;
  /// Table name.
  final pulumi.Input<String>? name;

  /// Creates a new [Schema].
  /// [columns] A list of table custom columns.
  /// [description] Table description.
  /// [displayName] Table display name.
  /// [name] Table name.
  Schema({
    this.columns,
    this.description,
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<Column>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<Column, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory Schema.fromMap(Map<String, dynamic> map) {
    return Schema(
      columns: map['columns'] == null ? null : (pulumi.Input.decodeList<Column>(map['columns'], (value) => Column.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

