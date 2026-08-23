// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_connector_spec.dart';
import 'cx_tool_data_store_spec.dart';
import 'cx_tool_function_spec.dart';
import 'cx_tool_open_api_spec.dart';

/// Input properties used for looking up and filtering CxTool resources.
class CxToolState {
  /// (Optional, Beta)
  /// Integration connectors tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolConnectorSpec>? connectorSpec;
  /// Data store search tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolDataStoreSpec>? dataStoreSpec;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// High level description of the Tool and its usage.
  final pulumi.Input<String>? description;
  /// The human-readable name of the tool, unique within the agent.
  final pulumi.Input<String>? displayName;
  /// Client side executed function specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolFunctionSpec>? functionSpec;
  /// The unique identifier of the Tool.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/tools/&lt;Tool ID&gt;.
  final pulumi.Input<String>? name;
  /// OpenAPI specification of the Tool.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `dataStoreSpec`, or `functionSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolOpenApiSpec>? openApiSpec;
  /// The agent to create a Tool for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  final pulumi.Input<String>? parent;
  /// The tool type.
  final pulumi.Input<String>? toolType;

  /// Creates a new [CxToolState].
  /// [connectorSpec] (Optional, Beta)
  /// [dataStoreSpec] Data store search tool specification.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] High level description of the Tool and its usage.
  /// [displayName] The human-readable name of the tool, unique within the agent.
  /// [functionSpec] Client side executed function specification.
  /// [name] The unique identifier of the Tool.
  /// [openApiSpec] OpenAPI specification of the Tool.
  /// [parent] The agent to create a Tool for.
  /// [toolType] The tool type.
  const CxToolState({
    this.connectorSpec,
    this.dataStoreSpec,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      connectorSpec: (() { final guardedValue = map['connectorSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxToolConnectorSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataStoreSpec: (() { final guardedValue = map['dataStoreSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxToolDataStoreSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionSpec: (() { final guardedValue = map['functionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxToolFunctionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openApiSpec: (() { final guardedValue = map['openApiSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxToolOpenApiSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolType: (() { final guardedValue = map['toolType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
