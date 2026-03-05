// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_connector_spec_action_entity_operation.dart';

class CxToolConnectorSpecAction {
  /// ID of a Connection action for the tool to use. This field is part of a required union field `action_spec`.
  final pulumi.Input<String>? connectionActionId;
  /// Entity operation configuration for the tool to use. This field is part of a required union field `action_spec`.
  /// Structure is documented below.
  final pulumi.Input<CxToolConnectorSpecActionEntityOperation>? entityOperation;
  /// Entity fields to use as inputs for the operation.
  /// If no fields are specified, all fields of the Entity will be used.
  final pulumi.Input<List<String>>? inputFields;
  /// Entity fields to return from the operation.
  /// If no fields are specified, all fields of the Entity will be returned.
  final pulumi.Input<List<String>>? outputFields;

  /// Creates a new [CxToolConnectorSpecAction].
  /// [connectionActionId] ID of a Connection action for the tool to use. This field is part of a required union field `action_spec`.
  /// [entityOperation] Entity operation configuration for the tool to use. This field is part of a required union field `action_spec`.
  /// [inputFields] Entity fields to use as inputs for the operation.
  /// [outputFields] Entity fields to return from the operation.
  CxToolConnectorSpecAction({
    this.connectionActionId,
    this.entityOperation,
    this.inputFields,
    this.outputFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionActionId': ?connectionActionId,
      'entityOperation': ?pulumi.Input.mapOptionalInputValue<CxToolConnectorSpecActionEntityOperation, Map<String, dynamic>>(entityOperation, (value) => value.toMap()),
      'inputFields': ?inputFields,
      'outputFields': ?outputFields,
    };
  }

  factory CxToolConnectorSpecAction.fromMap(Map<String, dynamic> map) {
    return CxToolConnectorSpecAction(
      connectionActionId: (() { final guardedValue = map['connectionActionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityOperation: (() { final guardedValue = map['entityOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxToolConnectorSpecActionEntityOperation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputFields: (() { final guardedValue = map['inputFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFields: (() { final guardedValue = map['outputFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

