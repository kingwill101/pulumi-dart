// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolsetConnectorToolsetConnectorActionEntityOperation {
  /// ID of the entity.
  final pulumi.Input<String> entityId;
  /// Operation to perform on the entity.
  /// Possible values:
  /// LIST
  /// GET
  /// CREATE
  /// UPDATE
  /// DELETE
  final pulumi.Input<String> operation;

  /// Creates a new [ToolsetConnectorToolsetConnectorActionEntityOperation].
  /// [entityId] ID of the entity.
  /// [operation] Operation to perform on the entity.
  const ToolsetConnectorToolsetConnectorActionEntityOperation({
    required this.entityId,
    required this.operation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'operation': operation,
    };
  }

  factory ToolsetConnectorToolsetConnectorActionEntityOperation.fromMap(Map<String, dynamic> map) {
    return ToolsetConnectorToolsetConnectorActionEntityOperation(
      entityId: pulumi.Input.fromValue(map['entityId'] as String),
      operation: pulumi.Input.fromValue(map['operation'] as String),
    );
  }
}
