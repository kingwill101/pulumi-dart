// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolConnectorSpecActionEntityOperation {
  /// ID of the entity.
  final pulumi.Input<String> entityId;
  /// The operation to perform on the entity.
  /// Possible values are: `LIST`, `GET`, `CREATE`, `UPDATE`, `DELETE`.
  final pulumi.Input<String> operation;

  /// Creates a new [ToolConnectorSpecActionEntityOperation].
  /// [entityId] ID of the entity.
  /// [operation] The operation to perform on the entity.
  const ToolConnectorSpecActionEntityOperation({
    required this.entityId,
    required this.operation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'operation': operation,
    };
  }

  factory ToolConnectorSpecActionEntityOperation.fromMap(Map<String, dynamic> map) {
    return ToolConnectorSpecActionEntityOperation(
      entityId: pulumi.Input.fromValue(map['entityId'] as String),
      operation: pulumi.Input.fromValue(map['operation'] as String),
    );
  }
}
