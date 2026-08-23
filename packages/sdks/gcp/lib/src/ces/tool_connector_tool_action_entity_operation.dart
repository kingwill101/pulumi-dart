// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolConnectorToolActionEntityOperation {
  /// (Output)
  /// ID of the entity.
  final pulumi.Input<String>? entityId;
  /// (Output)
  /// Operation to perform on the entity.
  /// Possible values:
  /// OPERATION_TYPE_UNSPECIFIED
  /// LIST
  /// GET
  /// CREATE
  /// UPDATE
  /// DELETE
  final pulumi.Input<String>? operation;

  /// Creates a new [ToolConnectorToolActionEntityOperation].
  /// [entityId] (Output)
  /// [operation] (Output)
  const ToolConnectorToolActionEntityOperation({
    this.entityId,
    this.operation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': ?entityId,
      'operation': ?operation,
    };
  }

  factory ToolConnectorToolActionEntityOperation.fromMap(Map<String, dynamic> map) {
    return ToolConnectorToolActionEntityOperation(
      entityId: (() { final guardedValue = map['entityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
