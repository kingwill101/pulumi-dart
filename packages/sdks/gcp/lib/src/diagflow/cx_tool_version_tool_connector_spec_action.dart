// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_version_tool_connector_spec_action_entity_operation.dart';

class CxToolVersionToolConnectorSpecAction {
  /// ID of a Connection action for the tool to use. This field is part of a required union field `action_spec`.
  final pulumi.Input<String>? connectionActionId;
  /// Entity operation configuration for the tool to use. This field is part of a required union field `action_spec`.
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionToolConnectorSpecActionEntityOperation>? entityOperation;
  /// Entity fields to use as inputs for the operation.
  /// If no fields are specified, all fields of the Entity will be used.
  final pulumi.Input<List<String>>? inputFields;
  /// Entity fields to return from the operation.
  /// If no fields are specified, all fields of the Entity will be returned.
  final pulumi.Input<List<String>>? outputFields;

  /// Creates a new [CxToolVersionToolConnectorSpecAction].
  /// [connectionActionId] ID of a Connection action for the tool to use. This field is part of a required union field `action_spec`.
  /// [entityOperation] Entity operation configuration for the tool to use. This field is part of a required union field `action_spec`.
  /// [inputFields] Entity fields to use as inputs for the operation.
  /// [outputFields] Entity fields to return from the operation.
  CxToolVersionToolConnectorSpecAction({
    this.connectionActionId,
    this.entityOperation,
    this.inputFields,
    this.outputFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionActionId': ?connectionActionId,
      'entityOperation': ?pulumi.Input.mapOptionalInputValue<CxToolVersionToolConnectorSpecActionEntityOperation, Map<String, dynamic>>(entityOperation, (value) => value.toMap()),
      'inputFields': ?inputFields,
      'outputFields': ?outputFields,
    };
  }

  factory CxToolVersionToolConnectorSpecAction.fromMap(Map<String, dynamic> map) {
    return CxToolVersionToolConnectorSpecAction(
      connectionActionId: map['connectionActionId'] == null ? null : (map['connectionActionId'] as String).input(),
      entityOperation: map['entityOperation'] == null ? null : (CxToolVersionToolConnectorSpecActionEntityOperation.fromMap((map['entityOperation'] as Map).cast<String, dynamic>())).input(),
      inputFields: map['inputFields'] == null ? null : ((map['inputFields'] as List).cast<String>()).input(),
      outputFields: map['outputFields'] == null ? null : ((map['outputFields'] as List).cast<String>()).input(),
    );
  }
}

