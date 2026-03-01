// ignore_for_file: unused_element, unnecessary_cast


class CxToolConnectorSpecActionEntityOperation {
  /// ID of the entity.
  final String entityId;
  /// The operation to perform on the entity.
  /// Possible values are: `LIST`, `CREATE`, `UPDATE`, `DELETE`, `GET`.
  final String operation;

  /// Creates a new [CxToolConnectorSpecActionEntityOperation].
  /// [entityId] ID of the entity.
  /// [operation] The operation to perform on the entity.
  CxToolConnectorSpecActionEntityOperation({
    required this.entityId,
    required this.operation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'operation': operation,
    };
  }

  factory CxToolConnectorSpecActionEntityOperation.fromMap(Map<String, dynamic> map) {
    return CxToolConnectorSpecActionEntityOperation(
      entityId: map['entityId'] as String,
      operation: map['operation'] as String,
    );
  }
}

