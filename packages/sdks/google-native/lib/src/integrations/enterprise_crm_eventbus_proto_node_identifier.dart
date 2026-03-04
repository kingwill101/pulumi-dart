// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_node_identifier_element_type.dart';

/// Represents a node identifier (type + id). Next highest id: 3
class EnterpriseCrmEventbusProtoNodeIdentifier {
  /// Configuration of the edge.
  final pulumi.Input<String>? elementIdentifier;

  /// Destination node where the edge ends. It can only be a task config.
  final pulumi.Input<EnterpriseCrmEventbusProtoNodeIdentifierElementType>?
  elementType;

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
      'elementType':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoNodeIdentifierElementType,
            String
          >(elementType, (value) => value.wireValue),
    };
  }

  factory EnterpriseCrmEventbusProtoNodeIdentifier.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoNodeIdentifier(
      elementIdentifier: (() {
        final guardedValue = map['elementIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      elementType: (() {
        final guardedValue = map['elementType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoNodeIdentifierElementType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
