// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_node_identifier_element_type.dart';

/// Represents a node identifier (type + id). Next highest id: 3
class EnterpriseCrmEventbusProtoNodeIdentifier {
  /// Configuration of the edge.
  final pulumi.Input<String>? elementIdentifier;
  /// Destination node where the edge ends. It can only be a task config.
  final pulumi.Input<EnterpriseCrmEventbusProtoNodeIdentifierElementType>? elementType;

  /// Creates a new [EnterpriseCrmEventbusProtoNodeIdentifier].
  /// [elementIdentifier] Configuration of the edge.
  /// [elementType] Destination node where the edge ends. It can only be a task config.
  EnterpriseCrmEventbusProtoNodeIdentifier({
    this.elementIdentifier,
    this.elementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementIdentifier': ?elementIdentifier,
      'elementType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoNodeIdentifierElementType, String>(elementType, (value) => value.value),
    };
  }

  factory EnterpriseCrmEventbusProtoNodeIdentifier.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoNodeIdentifier(
      elementIdentifier: map['elementIdentifier'] == null ? null : (map['elementIdentifier']! as String).input(),
      elementType: map['elementType'] == null ? null : (EnterpriseCrmEventbusProtoNodeIdentifierElementType.fromValue(map['elementType']! as String)).input(),
    );
  }
}

