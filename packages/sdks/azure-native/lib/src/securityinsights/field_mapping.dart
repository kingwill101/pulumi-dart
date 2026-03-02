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
  FieldMapping({
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
      columnName: map['columnName'] == null ? null : (map['columnName'] as String).input(),
      identifier: map['identifier'] == null ? null : (map['identifier'] as String).input(),
    );
  }
}

