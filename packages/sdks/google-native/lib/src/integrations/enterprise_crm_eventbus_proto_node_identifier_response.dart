// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a node identifier (type + id). Next highest id: 3
class EnterpriseCrmEventbusProtoNodeIdentifierResponse {
  /// Configuration of the edge.
  final pulumi.Input<String> elementIdentifier;
  /// Destination node where the edge ends. It can only be a task config.
  final pulumi.Input<String> elementType;

  /// Creates a new [EnterpriseCrmEventbusProtoNodeIdentifierResponse].
  /// [elementIdentifier] Configuration of the edge.
  /// [elementType] Destination node where the edge ends. It can only be a task config.
  const EnterpriseCrmEventbusProtoNodeIdentifierResponse({
    required this.elementIdentifier,
    required this.elementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementIdentifier': elementIdentifier,
      'elementType': elementType,
    };
  }

  factory EnterpriseCrmEventbusProtoNodeIdentifierResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoNodeIdentifierResponse(
      elementIdentifier: pulumi.Input.fromValue(map['elementIdentifier'] as String),
      elementType: pulumi.Input.fromValue(map['elementType'] as String),
    );
  }
}

