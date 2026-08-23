// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_agent_tool.dart';
import 'tool_client_function.dart';
import 'tool_data_store_tool.dart';
import 'tool_file_search_tool.dart';
import 'tool_google_search_tool.dart';
import 'tool_python_function.dart';
import 'tool_tool_fake_config.dart';
import 'tool_widget_tool.dart';

/// {@template pulumi_ces_tool_tool_args_doc}
/// The set of arguments for Tool.
/// {@endtemplate}
/// {@macro pulumi_ces_tool_tool_args_doc}
class ToolArgs {
  /// Represents a tool that allows the agent to call another agent.
  /// Structure is documented below.
  final pulumi.Input<ToolAgentTool>? agentTool;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> app;
  /// Represents a client-side function that the agent can invoke. When the
  /// tool is chosen by the agent, control is handed off to the client.
  /// The client is responsible for executing the function and returning the result
  /// as a ToolResponse to continue the interaction with the agent.
  /// Structure is documented below.
  final pulumi.Input<ToolClientFunction>? clientFunction;
  /// Tool to retrieve from Vertex AI Search datastore or engine for grounding.
  /// Accepts either a datastore or an engine, but not both.
  /// See Vertex AI Search:
  /// https://cloud.google.com/generative-ai-app-builder/docs/enterprise-search-introduction.
  /// Structure is documented below.
  final pulumi.Input<ToolDataStoreTool>? dataStoreTool;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  final pulumi.Input<String>? executionType;
  /// The file search tool allows the agent to search across the files uploaded by the
  /// app/agent developer.
  /// Structure is documented below.
  final pulumi.Input<ToolFileSearchTool>? fileSearchTool;
  /// Represents a tool to perform Google web searches for grounding.
  /// See
  /// https://cloud.google.com/vertex-ai/generative-ai/docs/grounding/grounding-with-google-search.
  /// Structure is documented below.
  final pulumi.Input<ToolGoogleSearchTool>? googleSearchTool;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A Python function tool.
  /// Structure is documented below.
  final pulumi.Input<ToolPythonFunction>? pythonFunction;
  /// The timeout for the tool execution. If not set, the default timeout is 30
  /// seconds for SYNCHRONOUS tools and 60 seconds for ASYNCHRONOUS tools.
  final pulumi.Input<String>? timeout;
  /// Configuration for tool behavior in fake mode.
  /// Structure is documented below.
  final pulumi.Input<ToolToolFakeConfig>? toolFakeConfig;
  /// The ID to use for the tool, which will become the final component of
  /// the tool's resource name. If not provided, a unique ID will be
  /// automatically assigned for the tool.
  final pulumi.Input<String> toolId;
  /// Represents a widget tool that the agent can invoke.
  /// Structure is documented below.
  final pulumi.Input<ToolWidgetTool>? widgetTool;

  /// Creates a new [ToolArgs].
  /// [agentTool] Represents a tool that allows the agent to call another agent.
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [clientFunction] Represents a client-side function that the agent can invoke. When the
  /// [dataStoreTool] Tool to retrieve from Vertex AI Search datastore or engine for grounding.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [executionType] Possible values:
  /// [fileSearchTool] The file search tool allows the agent to search across the files uploaded by the
  /// [googleSearchTool] Represents a tool to perform Google web searches for grounding.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [pythonFunction] A Python function tool.
  /// [timeout] The timeout for the tool execution. If not set, the default timeout is 30
  /// [toolFakeConfig] Configuration for tool behavior in fake mode.
  /// [toolId] The ID to use for the tool, which will become the final component of
  /// [widgetTool] Represents a widget tool that the agent can invoke.
  const ToolArgs({
    this.agentTool,
    required this.app,
    this.clientFunction,
    this.dataStoreTool,
    this.deletionPolicy,
    this.executionType,
    this.fileSearchTool,
    this.googleSearchTool,
    required this.location,
    this.project,
    this.pythonFunction,
    this.timeout,
    this.toolFakeConfig,
    required this.toolId,
    this.widgetTool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentTool': ?pulumi.Input.mapOptionalInputValue<ToolAgentTool, Map<String, dynamic>>(agentTool, (value) => value.toMap()),
      'app': app,
      'clientFunction': ?pulumi.Input.mapOptionalInputValue<ToolClientFunction, Map<String, dynamic>>(clientFunction, (value) => value.toMap()),
      'dataStoreTool': ?pulumi.Input.mapOptionalInputValue<ToolDataStoreTool, Map<String, dynamic>>(dataStoreTool, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'executionType': ?executionType,
      'fileSearchTool': ?pulumi.Input.mapOptionalInputValue<ToolFileSearchTool, Map<String, dynamic>>(fileSearchTool, (value) => value.toMap()),
      'googleSearchTool': ?pulumi.Input.mapOptionalInputValue<ToolGoogleSearchTool, Map<String, dynamic>>(googleSearchTool, (value) => value.toMap()),
      'location': location,
      'project': ?project,
      'pythonFunction': ?pulumi.Input.mapOptionalInputValue<ToolPythonFunction, Map<String, dynamic>>(pythonFunction, (value) => value.toMap()),
      'timeout': ?timeout,
      'toolFakeConfig': ?pulumi.Input.mapOptionalInputValue<ToolToolFakeConfig, Map<String, dynamic>>(toolFakeConfig, (value) => value.toMap()),
      'toolId': toolId,
      'widgetTool': ?pulumi.Input.mapOptionalInputValue<ToolWidgetTool, Map<String, dynamic>>(widgetTool, (value) => value.toMap()),
    };
  }

  factory ToolArgs.fromMap(Map<String, dynamic> map) {
    return ToolArgs(
      agentTool: (() { final guardedValue = map['agentTool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolAgentTool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      app: pulumi.Input.fromValue(map['app'] as String),
      clientFunction: (() { final guardedValue = map['clientFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolClientFunction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataStoreTool: (() { final guardedValue = map['dataStoreTool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolDataStoreTool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionType: (() { final guardedValue = map['executionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSearchTool: (() { final guardedValue = map['fileSearchTool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolFileSearchTool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleSearchTool: (() { final guardedValue = map['googleSearchTool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolGoogleSearchTool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pythonFunction: (() { final guardedValue = map['pythonFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolPythonFunction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolFakeConfig: (() { final guardedValue = map['toolFakeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolToolFakeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolId: pulumi.Input.fromValue(map['toolId'] as String),
      widgetTool: (() { final guardedValue = map['widgetTool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolWidgetTool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
