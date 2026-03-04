// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxToolConnectorSpecActionEntityOperation {
  /// ID of the entity.
  final pulumi.Input<String> entityId;

  /// The operation to perform on the entity.
  /// Possible values are: `LIST`, `CREATE`, `UPDATE`, `DELETE`, `GET`.
  final pulumi.Input<String> operation;

  /// Creates a new [CxToolConnectorSpecActionEntityOperation].
  /// [entityId] ID of the entity.
  /// [operation] The operation to perform on the entity.
  CxToolConnectorSpecActionEntityOperation({
    required this.entityId,
    required this.operation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'entityId': entityId, 'operation': operation};
  }

  factory CxToolConnectorSpecActionEntityOperation.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolConnectorSpecActionEntityOperation(
      entityId: pulumi.Input.fromValue(map['entityId'] as String),
      operation: pulumi.Input.fromValue(map['operation'] as String),
    );
  }
}
