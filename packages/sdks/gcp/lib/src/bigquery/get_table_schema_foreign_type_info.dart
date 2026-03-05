// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableSchemaForeignTypeInfo {
  /// Specifies the system which defines the foreign data type.
  final pulumi.Input<String> typeSystem;

  /// Creates a new [GetTableSchemaForeignTypeInfo].
  /// [typeSystem] Specifies the system which defines the foreign data type.
  GetTableSchemaForeignTypeInfo({
    required this.typeSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'typeSystem': typeSystem,
    };
  }

  factory GetTableSchemaForeignTypeInfo.fromMap(Map<String, dynamic> map) {
    return GetTableSchemaForeignTypeInfo(
      typeSystem: pulumi.Input.fromValue(map['typeSystem'] as String),
    );
  }
}

