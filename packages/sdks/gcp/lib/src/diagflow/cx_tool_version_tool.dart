// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_version_tool_connector_spec.dart';
import 'cx_tool_version_tool_data_store_spec.dart';
import 'cx_tool_version_tool_function_spec.dart';
import 'cx_tool_version_tool_open_api_spec.dart';

class CxToolVersionTool {
  /// Integration connectors tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionToolConnectorSpec>? connectorSpec;
  /// Data store search tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionToolDataStoreSpec>? dataStoreSpec;
  /// High level description of the Tool and its usage.
  final pulumi.Input<String> description;
  /// The human-readable name of the tool, unique within the agent.
  final pulumi.Input<String> displayName;
  /// Client side executed function specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionToolFunctionSpec>? functionSpec;
  /// (Output)
  /// The unique identifier of the Tool.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/tools/<Tool ID>.
  final pulumi.Input<String>? name;
  /// OpenAPI specification of the Tool.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionToolOpenApiSpec>? openApiSpec;
  /// (Output)
  /// The tool type.
  final pulumi.Input<String>? toolType;

  /// Creates a new [CxToolVersionTool].
  /// [connectorSpec] Integration connectors tool specification.
  /// [dataStoreSpec] Data store search tool specification.
  /// [description] High level description of the Tool and its usage.
  /// [displayName] The human-readable name of the tool, unique within the agent.
  /// [functionSpec] Client side executed function specification.
  /// [name] (Output)
  /// [openApiSpec] OpenAPI specification of the Tool.
  /// [toolType] (Output)
  CxToolVersionTool({
    this.connectorSpec,
    this.dataStoreSpec,
    required this.description,
    required this.displayName,
    this.functionSpec,
    this.name,
    this.openApiSpec,
    this.toolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorSpec': ?pulumi.Input.mapOptionalInputValue<CxToolVersionToolConnectorSpec, Map<String, dynamic>>(connectorSpec, (value) => value.toMap()),
      'dataStoreSpec': ?pulumi.Input.mapOptionalInputValue<CxToolVersionToolDataStoreSpec, Map<String, dynamic>>(dataStoreSpec, (value) => value.toMap()),
      'description': description,
      'displayName': displayName,
      'functionSpec': ?pulumi.Input.mapOptionalInputValue<CxToolVersionToolFunctionSpec, Map<String, dynamic>>(functionSpec, (value) => value.toMap()),
      'name': ?name,
      'openApiSpec': ?pulumi.Input.mapOptionalInputValue<CxToolVersionToolOpenApiSpec, Map<String, dynamic>>(openApiSpec, (value) => value.toMap()),
      'toolType': ?toolType,
    };
  }

  factory CxToolVersionTool.fromMap(Map<String, dynamic> map) {
    return CxToolVersionTool(
      connectorSpec: map['connectorSpec'] == null ? null : (CxToolVersionToolConnectorSpec.fromMap((map['connectorSpec']! as Map).cast<String, dynamic>())).input(),
      dataStoreSpec: map['dataStoreSpec'] == null ? null : (CxToolVersionToolDataStoreSpec.fromMap((map['dataStoreSpec']! as Map).cast<String, dynamic>())).input(),
      description: (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      functionSpec: map['functionSpec'] == null ? null : (CxToolVersionToolFunctionSpec.fromMap((map['functionSpec']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      openApiSpec: map['openApiSpec'] == null ? null : (CxToolVersionToolOpenApiSpec.fromMap((map['openApiSpec']! as Map).cast<String, dynamic>())).input(),
      toolType: map['toolType'] == null ? null : (map['toolType']! as String).input(),
    );
  }
}

