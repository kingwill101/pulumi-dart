// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_connector_spec.dart';
import 'tool_function_spec.dart';
import 'tool_open_api_spec.dart';

/// Input properties used for looking up and filtering Tool resources.
class ToolState {
  /// Optional. Confirmation requirement for the actions. Each key is an action name in the `actionSchemas`.
  /// If an action's confirmation requirement is not specified (either the key is not present, or its value is `CONFIRMATION_REQUIREMENT_UNSPECIFIED`), a default value will be populated depending on the action's method type: GET actions default to `NOT_REQUIRED`, and other actions default to `REQUIRED`.
  /// Valid values are `REQUIRED` and `NOT_REQUIRED`.
  final pulumi.Input<Map<String, String>?>? actionConfirmationRequirement;
  /// Integration connectors tool specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<ToolConnectorSpec?>? connectorSpec;
  /// Output only. Creation time of this tool.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. Human readable description of the tool.
  final pulumi.Input<String?>? description;
  /// Optional. The human-readable name of the tool, unique within the project and location.
  final pulumi.Input<String?>? displayName;
  /// Client side executed function specification.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<ToolFunctionSpec?>? functionSpec;
  /// The location of the tool.
  final pulumi.Input<String?>? location;
  /// The resource name of the tool. Format: `projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/tools/&lt;Tool ID&gt;`.
  final pulumi.Input<String?>? name;
  /// OpenAPI specification of the Tool.
  /// This field is part of a union field `specification`: Only one of `openApiSpec`, `functionSpec`, or `connectorSpec` may be set.
  /// Structure is documented below.
  final pulumi.Input<ToolOpenApiSpec?>? openApiSpec;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Output only. A read only boolean field reflecting Zone Isolation status of the tool.
  final pulumi.Input<bool?>? satisfiesPzi;
  /// Output only. A read only boolean field reflecting Zone Separation status of the tool.
  final pulumi.Input<bool?>? satisfiesPzs;
  /// Optional. The ID to use for the tool, which will become the final component of the tool's resource name.
  /// The tool ID must be compliant with the regression formula `[a-zA-Z][a-zA-Z0-9_-]*` with the characters length in range of [3,64].
  /// If the field is not provided, an Id will be auto-generated.
  final pulumi.Input<String?>? toolId;
  /// Required. A human readable short name of the tool, which should be unique within the project. It should only contain letters, numbers, and underscores, and it will be used by LLM to identify the tool.
  final pulumi.Input<String?>? toolKey;
  /// Output only. Update time of this tool.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ToolState].
  /// [actionConfirmationRequirement] Optional. Confirmation requirement for the actions. Each key is an action name in the `actionSchemas`.
  /// [connectorSpec] Integration connectors tool specification.
  /// [createTime] Output only. Creation time of this tool.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. Human readable description of the tool.
  /// [displayName] Optional. The human-readable name of the tool, unique within the project and location.
  /// [functionSpec] Client side executed function specification.
  /// [location] The location of the tool.
  /// [name] The resource name of the tool. Format: `projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/tools/&lt;Tool ID&gt;`.
  /// [openApiSpec] OpenAPI specification of the Tool.
  /// [project] The ID of the project in which the resource belongs.
  /// [satisfiesPzi] Output only. A read only boolean field reflecting Zone Isolation status of the tool.
  /// [satisfiesPzs] Output only. A read only boolean field reflecting Zone Separation status of the tool.
  /// [toolId] Optional. The ID to use for the tool, which will become the final component of the tool's resource name.
  /// [toolKey] Required. A human readable short name of the tool, which should be unique within the project. It should only contain letters, numbers, and underscores, and it will be used by LLM to identify the tool.
  /// [updateTime] Output only. Update time of this tool.
  const ToolState({
    this.actionConfirmationRequirement,
    this.connectorSpec,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.functionSpec,
    this.location,
    this.name,
    this.openApiSpec,
    this.project,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.toolId,
    this.toolKey,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionConfirmationRequirement': ?actionConfirmationRequirement,
      'connectorSpec': ?pulumi.Input.mapOptionalInputValue<ToolConnectorSpec, Map<String, dynamic>>(connectorSpec, (value) => value.toMap()),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'functionSpec': ?pulumi.Input.mapOptionalInputValue<ToolFunctionSpec, Map<String, dynamic>>(functionSpec, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'openApiSpec': ?pulumi.Input.mapOptionalInputValue<ToolOpenApiSpec, Map<String, dynamic>>(openApiSpec, (value) => value.toMap()),
      'project': ?project,
      'satisfiesPzi': ?satisfiesPzi,
      'satisfiesPzs': ?satisfiesPzs,
      'toolId': ?toolId,
      'toolKey': ?toolKey,
      'updateTime': ?updateTime,
    };
  }

  factory ToolState.fromMap(Map<String, dynamic> map) {
    return ToolState(
      actionConfirmationRequirement: (() { final guardedValue = map['actionConfirmationRequirement']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      connectorSpec: (() { final guardedValue = map['connectorSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolConnectorSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionSpec: (() { final guardedValue = map['functionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolFunctionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openApiSpec: (() { final guardedValue = map['openApiSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolOpenApiSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      satisfiesPzi: (() { final guardedValue = map['satisfiesPzi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      toolId: (() { final guardedValue = map['toolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolKey: (() { final guardedValue = map['toolKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
