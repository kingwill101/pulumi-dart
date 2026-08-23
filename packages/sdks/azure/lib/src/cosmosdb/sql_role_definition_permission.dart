// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlRoleDefinitionPermission {
  /// A list of data actions that are allowed for the Cosmos DB SQL Role Definition.
  final pulumi.Input<List<String>> dataActions;

  /// Creates a new [SqlRoleDefinitionPermission].
  /// [dataActions] A list of data actions that are allowed for the Cosmos DB SQL Role Definition.
  const SqlRoleDefinitionPermission({
    required this.dataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataActions': dataActions,
    };
  }

  factory SqlRoleDefinitionPermission.fromMap(Map<String, dynamic> map) {
    return SqlRoleDefinitionPermission(
      dataActions: pulumi.Input.fromValue((map['dataActions'] as List).cast<String>()),
    );
  }
}
