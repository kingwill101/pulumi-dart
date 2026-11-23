// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_gateway_endpoint_insights.dart';
import 'action_gateway_endpoint_version.dart';

/// Input properties used for looking up and filtering ActionGatewayEndpoint resources.
class ActionGatewayEndpointState {
  /// When the endpoint was created.
  final pulumi.Input<String?>? createdAt;
  /// Insights consent, which applies to every version of the endpoint. See Insights below.
  final pulumi.Input<ActionGatewayEndpointInsights?>? insights;
  /// Whether this is the default endpoint that a generic `/mcp` request resolves to for your user.
  final pulumi.Input<bool?>? isDefault;
  /// The MCP URL that follows the endpoint's current head version. Its host can change when a new head version moves the endpoint to a VPC in another region, so do not treat it as a stable hostname.
  final pulumi.Input<String?>? mcpUrl;
  /// The name of the endpoint, unique among your team's active endpoints. It must contain 1 to 64 characters from `[A-Za-z0-9._-]`. Changing the name renames the endpoint in place.
  final pulumi.Input<String?>? name;
  /// When the endpoint was last modified.
  final pulumi.Input<String?>? updatedAt;
  /// The version the configuration describes. See Version below. Changing it publishes a new head version.
  final pulumi.Input<ActionGatewayEndpointVersion?>? version;
  /// The MCP URL pinned to the current head version. It is stable only while Terraform owns the head.
  final pulumi.Input<String?>? versionMcpUrl;

  /// Creates a new [ActionGatewayEndpointState].
  /// [createdAt] When the endpoint was created.
  /// [insights] Insights consent, which applies to every version of the endpoint. See Insights below.
  /// [isDefault] Whether this is the default endpoint that a generic `/mcp` request resolves to for your user.
  /// [mcpUrl] The MCP URL that follows the endpoint's current head version. Its host can change when a new head version moves the endpoint to a VPC in another region, so do not treat it as a stable hostname.
  /// [name] The name of the endpoint, unique among your team's active endpoints. It must contain 1 to 64 characters from `[A-Za-z0-9._-]`. Changing the name renames the endpoint in place.
  /// [updatedAt] When the endpoint was last modified.
  /// [version] The version the configuration describes. See Version below. Changing it publishes a new head version.
  /// [versionMcpUrl] The MCP URL pinned to the current head version. It is stable only while Terraform owns the head.
  const ActionGatewayEndpointState({
    this.createdAt,
    this.insights,
    this.isDefault,
    this.mcpUrl,
    this.name,
    this.updatedAt,
    this.version,
    this.versionMcpUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'insights': ?pulumi.Input.mapOptionalInputValue<ActionGatewayEndpointInsights, Map<String, dynamic>>(insights, (value) => value.toMap()),
      'isDefault': ?isDefault,
      'mcpUrl': ?mcpUrl,
      'name': ?name,
      'updatedAt': ?updatedAt,
      'version': ?pulumi.Input.mapOptionalInputValue<ActionGatewayEndpointVersion, Map<String, dynamic>>(version, (value) => value.toMap()),
      'versionMcpUrl': ?versionMcpUrl,
    };
  }

  factory ActionGatewayEndpointState.fromMap(Map<String, dynamic> map) {
    return ActionGatewayEndpointState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      insights: (() { final guardedValue = map['insights']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionGatewayEndpointInsights.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mcpUrl: (() { final guardedValue = map['mcpUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionGatewayEndpointVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      versionMcpUrl: (() { final guardedValue = map['versionMcpUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
