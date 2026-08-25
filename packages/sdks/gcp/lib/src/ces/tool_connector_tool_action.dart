// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_connector_tool_action_entity_operation.dart';

class ToolConnectorToolAction {
  /// (Output)
  /// ID of a Connection action for the tool to use.
  final pulumi.Input<String?>? connectionActionId;
  /// (Output)
  /// Entity operation configuration for the tool to use.
  /// Structure is documented below.
  final pulumi.Input<List<ToolConnectorToolActionEntityOperation>?>? entityOperations;
  /// (Output)
  /// Entity fields to use as inputs for the operation.
  final pulumi.Input<List<String>?>? inputFields;
  /// (Output)
  /// Entity fields to return from the operation.
  final pulumi.Input<List<String>?>? outputFields;

  /// Creates a new [ToolConnectorToolAction].
  /// [connectionActionId] (Output)
  /// [entityOperations] (Output)
  /// [inputFields] (Output)
  /// [outputFields] (Output)
  const ToolConnectorToolAction({
    this.connectionActionId,
    this.entityOperations,
    this.inputFields,
    this.outputFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionActionId': ?connectionActionId,
      'entityOperations': ?pulumi.Input.mapOptionalInputValue<List<ToolConnectorToolActionEntityOperation>, List<Map<String, dynamic>>>(entityOperations, (value) => pulumi.Input.encodeList<ToolConnectorToolActionEntityOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputFields': ?inputFields,
      'outputFields': ?outputFields,
    };
  }

  factory ToolConnectorToolAction.fromMap(Map<String, dynamic> map) {
    return ToolConnectorToolAction(
      connectionActionId: (() { final guardedValue = map['connectionActionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityOperations: (() { final guardedValue = map['entityOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolConnectorToolActionEntityOperation>(guardedValue, (value) => ToolConnectorToolActionEntityOperation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputFields: (() { final guardedValue = map['inputFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFields: (() { final guardedValue = map['outputFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
