// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options to configure rule type SetTablePrimaryKey. The rule is used to specify the columns and name to configure/alter the primary key of a table. The rule filter field can refer to one entity. The rule scope can be one of: Table.
class SetTablePrimaryKeyResponse {
  /// Optional. Name for the primary key
  final pulumi.Input<String> primaryKey;
  /// List of column names for the primary key
  final pulumi.Input<List<String>> primaryKeyColumns;

  /// Creates a new [SetTablePrimaryKeyResponse].
  /// [primaryKey] Optional. Name for the primary key
  /// [primaryKeyColumns] List of column names for the primary key
  const SetTablePrimaryKeyResponse({
    required this.primaryKey,
    required this.primaryKeyColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': primaryKey,
      'primaryKeyColumns': primaryKeyColumns,
    };
  }

  factory SetTablePrimaryKeyResponse.fromMap(Map<String, dynamic> map) {
    return SetTablePrimaryKeyResponse(
      primaryKey: pulumi.Input.fromValue(map['primaryKey'] as String),
      primaryKeyColumns: pulumi.Input.fromValue((map['primaryKeyColumns'] as List).cast<String>()),
    );
  }
}

