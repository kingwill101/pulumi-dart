// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_connector_spec_action.dart';

class ToolConnectorSpec {
  /// Actions for the tool to use.
  /// Structure is documented below.
  final pulumi.Input<List<ToolConnectorSpecAction>> actions;
  /// The full resource name of the referenced Integration Connectors Connection.
  /// Format: `projects/*/locations/*/connections/*`
  final pulumi.Input<String> name;

  /// Creates a new [ToolConnectorSpec].
  /// [actions] Actions for the tool to use.
  /// [name] The full resource name of the referenced Integration Connectors Connection.
  const ToolConnectorSpec({
    required this.actions,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<ToolConnectorSpecAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<ToolConnectorSpecAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory ToolConnectorSpec.fromMap(Map<String, dynamic> map) {
    return ToolConnectorSpec(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<ToolConnectorSpecAction>(map['actions']!, (value) => ToolConnectorSpecAction.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
