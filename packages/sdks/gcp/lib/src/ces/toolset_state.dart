// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_mcp_toolset.dart';
import 'toolset_open_api_toolset.dart';
import 'toolset_tool_fake_config.dart';

/// Input properties used for looking up and filtering Toolset resources.
class ToolsetState {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? app;
  /// Timestamp when the toolset was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the toolset.
  final pulumi.Input<String?>? description;
  /// The display name of the toolset. Must be unique within the same app.
  final pulumi.Input<String?>? displayName;
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final pulumi.Input<String?>? etag;
  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  final pulumi.Input<String?>? executionType;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// A toolset that contains a list of tools that are offered by the MCP
  /// server.
  /// Structure is documented below.
  final pulumi.Input<ToolsetMcpToolset?>? mcpToolset;
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String?>? name;
  /// A toolset that contains a list of tools that are defined by an OpenAPI
  /// schema.
  /// Structure is documented below.
  final pulumi.Input<ToolsetOpenApiToolset?>? openApiToolset;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Configuration for tools behavior in fake mode.
  /// Structure is documented below.
  final pulumi.Input<ToolsetToolFakeConfig?>? toolFakeConfig;
  /// The ID to use for the toolset, which will become the final component of
  /// the toolset's resource name. If not provided, a unique ID will be
  /// automatically assigned for the toolset.
  final pulumi.Input<String?>? toolsetId;
  /// Timestamp when the toolset was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ToolsetState].
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [createTime] Timestamp when the toolset was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the toolset.
  /// [displayName] The display name of the toolset. Must be unique within the same app.
  /// [etag] ETag used to ensure the object hasn't changed during a read-modify-write
  /// [executionType] Possible values:
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [mcpToolset] A toolset that contains a list of tools that are offered by the MCP
  /// [name] Identifier. The unique identifier of the toolset.
  /// [openApiToolset] A toolset that contains a list of tools that are defined by an OpenAPI
  /// [project] The ID of the project in which the resource belongs.
  /// [toolFakeConfig] Configuration for tools behavior in fake mode.
  /// [toolsetId] The ID to use for the toolset, which will become the final component of
  /// [updateTime] Timestamp when the toolset was last updated.
  const ToolsetState({
    this.app,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.etag,
    this.executionType,
    this.location,
    this.mcpToolset,
    this.name,
    this.openApiToolset,
    this.project,
    this.toolFakeConfig,
    this.toolsetId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': ?app,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'executionType': ?executionType,
      'location': ?location,
      'mcpToolset': ?pulumi.Input.mapOptionalInputValue<ToolsetMcpToolset, Map<String, dynamic>>(mcpToolset, (value) => value.toMap()),
      'name': ?name,
      'openApiToolset': ?pulumi.Input.mapOptionalInputValue<ToolsetOpenApiToolset, Map<String, dynamic>>(openApiToolset, (value) => value.toMap()),
      'project': ?project,
      'toolFakeConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetToolFakeConfig, Map<String, dynamic>>(toolFakeConfig, (value) => value.toMap()),
      'toolsetId': ?toolsetId,
      'updateTime': ?updateTime,
    };
  }

  factory ToolsetState.fromMap(Map<String, dynamic> map) {
    return ToolsetState(
      app: (() { final guardedValue = map['app']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionType: (() { final guardedValue = map['executionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mcpToolset: (() { final guardedValue = map['mcpToolset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetMcpToolset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openApiToolset: (() { final guardedValue = map['openApiToolset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetOpenApiToolset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolFakeConfig: (() { final guardedValue = map['toolFakeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetToolFakeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolsetId: (() { final guardedValue = map['toolsetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
