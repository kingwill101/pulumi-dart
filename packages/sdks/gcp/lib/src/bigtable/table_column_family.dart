// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableColumnFamily {
  /// The name of the column family.
  final pulumi.Input<String> family;
  /// The type of the column family.
  final pulumi.Input<String?>? type;

  /// Creates a new [TableColumnFamily].
  /// [family] The name of the column family.
  /// [type] The type of the column family.
  const TableColumnFamily({
    required this.family,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'type': ?type,
    };
  }

  factory TableColumnFamily.fromMap(Map<String, dynamic> map) {
    return TableColumnFamily(
      family: pulumi.Input.fromValue(map['family'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
