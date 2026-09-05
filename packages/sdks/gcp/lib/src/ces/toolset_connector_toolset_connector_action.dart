// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_connector_toolset_connector_action_entity_operation.dart';

class ToolsetConnectorToolsetConnectorAction {
  /// ID of a Connection action for the tool to use.
  final pulumi.Input<String?>? connectionActionId;
  /// Entity operation configuration for the tool to use.
  /// Structure is documented below.
  final pulumi.Input<ToolsetConnectorToolsetConnectorActionEntityOperation?>? entityOperation;
  /// Entity fields to use as inputs for the operation.
  final pulumi.Input<List<String>?>? inputFields;
  /// Entity fields to return from the operation.
  final pulumi.Input<List<String>?>? outputFields;

  /// Creates a new [ToolsetConnectorToolsetConnectorAction].
  /// [connectionActionId] ID of a Connection action for the tool to use.
  /// [entityOperation] Entity operation configuration for the tool to use.
  /// [inputFields] Entity fields to use as inputs for the operation.
  /// [outputFields] Entity fields to return from the operation.
  const ToolsetConnectorToolsetConnectorAction({
    this.connectionActionId,
    this.entityOperation,
    this.inputFields,
    this.outputFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionActionId': ?connectionActionId,
      'entityOperation': ?pulumi.Input.mapOptionalInputValue<ToolsetConnectorToolsetConnectorActionEntityOperation, Map<String, dynamic>>(entityOperation, (value) => value.toMap()),
      'inputFields': ?inputFields,
      'outputFields': ?outputFields,
    };
  }

  factory ToolsetConnectorToolsetConnectorAction.fromMap(Map<String, dynamic> map) {
    return ToolsetConnectorToolsetConnectorAction(
      connectionActionId: (() { final guardedValue = map['connectionActionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityOperation: (() { final guardedValue = map['entityOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetConnectorToolsetConnectorActionEntityOperation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputFields: (() { final guardedValue = map['inputFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFields: (() { final guardedValue = map['outputFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
