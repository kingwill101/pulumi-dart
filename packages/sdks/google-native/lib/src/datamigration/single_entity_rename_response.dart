// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options to configure rule type SingleEntityRename. The rule is used to rename an entity. The rule filter field can refer to only one entity. The rule scope can be one of: Database, Schema, Table, Column, Constraint, Index, View, Function, Stored Procedure, Materialized View, Sequence, UDT, Synonym
class SingleEntityRenameResponse {
  /// The new name of the destination entity
  final pulumi.Input<String> newName;

  /// Creates a new [SingleEntityRenameResponse].
  /// [newName] The new name of the destination entity
  const SingleEntityRenameResponse({
    required this.newName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newName': newName,
    };
  }

  factory SingleEntityRenameResponse.fromMap(Map<String, dynamic> map) {
    return SingleEntityRenameResponse(
      newName: pulumi.Input.fromValue(map['newName'] as String),
    );
  }
}
