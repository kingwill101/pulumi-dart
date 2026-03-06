// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableSchemaForeignTypeInfo {
  /// Specifies the system which defines the foreign data
  /// type.
  final pulumi.Input<String> typeSystem;

  /// Creates a new [TableSchemaForeignTypeInfo].
  /// [typeSystem] Specifies the system which defines the foreign data
  const TableSchemaForeignTypeInfo({
    required this.typeSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'typeSystem': typeSystem,
    };
  }

  factory TableSchemaForeignTypeInfo.fromMap(Map<String, dynamic> map) {
    return TableSchemaForeignTypeInfo(
      typeSystem: pulumi.Input.fromValue(map['typeSystem'] as String),
    );
  }
}

