// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSemanticGovernancePolicyMcpTools {
  /// The resource name of the McpServer in Agent Registry that is affected by this policy.
  /// Format: `projects/{project}/locations/{location}/mcpServers/{mcpServer}`
  final pulumi.Input<String> mcpServer;
  /// The resource names of the McpTools used by the Agent that is affected by this policy.
  /// At least one tool must be listed.
  final pulumi.Input<List<String>> tools;

  /// Creates a new [AiSemanticGovernancePolicyMcpTools].
  /// [mcpServer] The resource name of the McpServer in Agent Registry that is affected by this policy.
  /// [tools] The resource names of the McpTools used by the Agent that is affected by this policy.
  const AiSemanticGovernancePolicyMcpTools({
    required this.mcpServer,
    required this.tools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mcpServer': mcpServer,
      'tools': tools,
    };
  }

  factory AiSemanticGovernancePolicyMcpTools.fromMap(Map<String, dynamic> map) {
    return AiSemanticGovernancePolicyMcpTools(
      mcpServer: pulumi.Input.fromValue(map['mcpServer'] as String),
      tools: pulumi.Input.fromValue((map['tools'] as List).cast<String>()),
    );
  }
}
