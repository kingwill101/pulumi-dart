// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_mcp_toolset.dart';
import 'toolset_open_api_toolset.dart';
import 'toolset_tool_fake_config.dart';

/// {@template pulumi_ces_toolset_toolset_args_doc}
/// The set of arguments for Toolset.
/// {@endtemplate}
/// {@macro pulumi_ces_toolset_toolset_args_doc}
class ToolsetArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> app;
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
  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  final pulumi.Input<String?>? executionType;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// A toolset that contains a list of tools that are offered by the MCP
  /// server.
  /// Structure is documented below.
  final pulumi.Input<ToolsetMcpToolset?>? mcpToolset;
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
  final pulumi.Input<String> toolsetId;

  /// Creates a new [ToolsetArgs].
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the toolset.
  /// [displayName] The display name of the toolset. Must be unique within the same app.
  /// [executionType] Possible values:
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [mcpToolset] A toolset that contains a list of tools that are offered by the MCP
  /// [openApiToolset] A toolset that contains a list of tools that are defined by an OpenAPI
  /// [project] The ID of the project in which the resource belongs.
  /// [toolFakeConfig] Configuration for tools behavior in fake mode.
  /// [toolsetId] The ID to use for the toolset, which will become the final component of
  const ToolsetArgs({
    required this.app,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.executionType,
    required this.location,
    this.mcpToolset,
    this.openApiToolset,
    this.project,
    this.toolFakeConfig,
    required this.toolsetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': app,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'executionType': ?executionType,
      'location': location,
      'mcpToolset': ?pulumi.Input.mapOptionalInputValue<ToolsetMcpToolset, Map<String, dynamic>>(mcpToolset, (value) => value.toMap()),
      'openApiToolset': ?pulumi.Input.mapOptionalInputValue<ToolsetOpenApiToolset, Map<String, dynamic>>(openApiToolset, (value) => value.toMap()),
      'project': ?project,
      'toolFakeConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetToolFakeConfig, Map<String, dynamic>>(toolFakeConfig, (value) => value.toMap()),
      'toolsetId': toolsetId,
    };
  }

  factory ToolsetArgs.fromMap(Map<String, dynamic> map) {
    return ToolsetArgs(
      app: pulumi.Input.fromValue(map['app'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionType: (() { final guardedValue = map['executionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      mcpToolset: (() { final guardedValue = map['mcpToolset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetMcpToolset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openApiToolset: (() { final guardedValue = map['openApiToolset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetOpenApiToolset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolFakeConfig: (() { final guardedValue = map['toolFakeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetToolFakeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolsetId: pulumi.Input.fromValue(map['toolsetId'] as String),
    );
  }
}
