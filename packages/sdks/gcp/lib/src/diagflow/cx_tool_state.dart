// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_connector_spec.dart';
import 'cx_tool_data_store_spec.dart';
import 'cx_tool_function_spec.dart';
import 'cx_tool_open_api_spec.dart';

/// Input properties used for looking up and filtering CxTool resources.
class CxToolState {
  /// Integration connectors tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolConnectorSpec>? connectorSpec;
  /// Data store search tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolDataStoreSpec>? dataStoreSpec;
  /// High level description of the Tool and its usage.
  final pulumi.Input<String>? description;
  /// The human-readable name of the tool, unique within the agent.
  final pulumi.Input<String>? displayName;
  /// Client side executed function specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolFunctionSpec>? functionSpec;
  /// The unique identifier of the Tool.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/tools/<Tool ID>.
  final pulumi.Input<String>? name;
  /// OpenAPI specification of the Tool.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolOpenApiSpec>? openApiSpec;
  /// The agent to create a Tool for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;
  /// The tool type.
  final pulumi.Input<String>? toolType;

  /// Creates a new [CxToolState].
  /// [connectorSpec] Integration connectors tool specification.
  /// [dataStoreSpec] Data store search tool specification.
  /// [description] High level description of the Tool and its usage.
  /// [displayName] The human-readable name of the tool, unique within the agent.
  /// [functionSpec] Client side executed function specification.
  /// [name] The unique identifier of the Tool.
  /// [openApiSpec] OpenAPI specification of the Tool.
  /// [parent] The agent to create a Tool for.
  /// [toolType] The tool type.
  CxToolState({
    this.connectorSpec,
    this.dataStoreSpec,
    this.description,
    this.displayName,
    this.functionSpec,
    this.name,
    this.openApiSpec,
    this.parent,
    this.toolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorSpec': ?pulumi.Input.mapOptionalInputValue<CxToolConnectorSpec, Map<String, dynamic>>(connectorSpec, (value) => value.toMap()),
      'dataStoreSpec': ?pulumi.Input.mapOptionalInputValue<CxToolDataStoreSpec, Map<String, dynamic>>(dataStoreSpec, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'functionSpec': ?pulumi.Input.mapOptionalInputValue<CxToolFunctionSpec, Map<String, dynamic>>(functionSpec, (value) => value.toMap()),
      'name': ?name,
      'openApiSpec': ?pulumi.Input.mapOptionalInputValue<CxToolOpenApiSpec, Map<String, dynamic>>(openApiSpec, (value) => value.toMap()),
      'parent': ?parent,
      'toolType': ?toolType,
    };
  }

  factory CxToolState.fromMap(Map<String, dynamic> map) {
    return CxToolState(
      connectorSpec: map['connectorSpec'] == null ? null : (CxToolConnectorSpec.fromMap((map['connectorSpec']! as Map).cast<String, dynamic>())).input(),
      dataStoreSpec: map['dataStoreSpec'] == null ? null : (CxToolDataStoreSpec.fromMap((map['dataStoreSpec']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      functionSpec: map['functionSpec'] == null ? null : (CxToolFunctionSpec.fromMap((map['functionSpec']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      openApiSpec: map['openApiSpec'] == null ? null : (CxToolOpenApiSpec.fromMap((map['openApiSpec']! as Map).cast<String, dynamic>())).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      toolType: map['toolType'] == null ? null : (map['toolType']! as String).input(),
    );
  }
}

