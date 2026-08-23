// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A single field mapping of the mapped entity
class FieldMapping {
  /// the column name to be mapped to the identifier
  final pulumi.Input<String>? columnName;
  /// the V3 identifier of the entity
  final pulumi.Input<String>? identifier;

  /// Creates a new [FieldMapping].
  /// [columnName] the column name to be mapped to the identifier
  /// [identifier] the V3 identifier of the entity
  const FieldMapping({
    this.columnName,
    this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': ?columnName,
      'identifier': ?identifier,
    };
  }

  factory FieldMapping.fromMap(Map<String, dynamic> map) {
    return FieldMapping(
      columnName: (() { final guardedValue = map['columnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
