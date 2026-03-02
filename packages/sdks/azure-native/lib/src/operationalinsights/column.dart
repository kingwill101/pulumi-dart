// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Table column.
class Column {
  /// Column data type logical hint.
  final pulumi.Input<String>? dataTypeHint;
  /// Column description.
  final pulumi.Input<String>? description;
  /// Column display name.
  final pulumi.Input<String>? displayName;
  /// Column name.
  final pulumi.Input<String>? name;
  /// Column data type.
  final pulumi.Input<String>? type;

  /// Creates a new [Column].
  /// [dataTypeHint] Column data type logical hint.
  /// [description] Column description.
  /// [displayName] Column display name.
  /// [name] Column name.
  /// [type] Column data type.
  Column({
    this.dataTypeHint,
    this.description,
    this.displayName,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTypeHint': ?dataTypeHint,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'type': ?type,
    };
  }

  factory Column.fromMap(Map<String, dynamic> map) {
    return Column(
      dataTypeHint: map['dataTypeHint'] == null ? null : (map['dataTypeHint'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

