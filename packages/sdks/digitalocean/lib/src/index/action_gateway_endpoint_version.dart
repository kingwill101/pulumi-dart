// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_gateway_endpoint_version_network.dart';
import 'action_gateway_endpoint_version_policy.dart';

class ActionGatewayEndpointVersion {
  /// The actor the version's tool calls act as. It must contain 1 to 64 characters from `[A-Za-z0-9._-]`. No operation changes an endpoint's actor, so changing this forces a new endpoint.
  final pulumi.Input<String?>? actorId;
  /// A JSON object of options Gateway applies to the version, such as `preloadTools`, `customInstructions`, or `outputViews`. It is validated as JSON, normalized for comparison, and stored as supplied.
  final pulumi.Input<String?>? config;
  /// The ID of the head version, `&lt;endpoint UUID&gt;.v&lt;version number&gt;`.
  final pulumi.Input<String?>? id;
  /// A VPC the version's tool calls are routed through. See Network below.
  final pulumi.Input<ActionGatewayEndpointVersionNetwork?>? network;
  /// The tools and toolbelts the head version enables, each pinned by the API as `&lt;tool_slug&gt;@&lt;version&gt;` or `toolbelt:&lt;name&gt;@&lt;version&gt;`. Empty when every tool is enabled.
  final pulumi.Input<List<String>?>? pinnedTools;
  /// The tool permission policy. Omitting it asks before every call. See Policy below.
  final pulumi.Input<ActionGatewayEndpointVersionPolicy?>? policy;
  /// The version number the head was promoted from, when it was created by a promotion rather than a publish.
  final pulumi.Input<int?>? promotedFromVersionNumber;
  /// The tools and toolbelts the version enables, each optionally pinned as `&lt;tool_slug&gt;@&lt;version&gt;` or `toolbelt:&lt;name&gt;@&lt;version&gt;`. **Omit the argument to enable every tool, and set an empty list to enable none.** The API distinguishes the two, and so does this resource.
  final pulumi.Input<List<String>?>? tools;
  /// The number of the head version.
  final pulumi.Input<int?>? versionNumber;

  /// Creates a new [ActionGatewayEndpointVersion].
  /// [actorId] The actor the version's tool calls act as. It must contain 1 to 64 characters from `[A-Za-z0-9._-]`. No operation changes an endpoint's actor, so changing this forces a new endpoint.
  /// [config] A JSON object of options Gateway applies to the version, such as `preloadTools`, `customInstructions`, or `outputViews`. It is validated as JSON, normalized for comparison, and stored as supplied.
  /// [id] The ID of the head version, `&lt;endpoint UUID&gt;.v&lt;version number&gt;`.
  /// [network] A VPC the version's tool calls are routed through. See Network below.
  /// [pinnedTools] The tools and toolbelts the head version enables, each pinned by the API as `&lt;tool_slug&gt;@&lt;version&gt;` or `toolbelt:&lt;name&gt;@&lt;version&gt;`. Empty when every tool is enabled.
  /// [policy] The tool permission policy. Omitting it asks before every call. See Policy below.
  /// [promotedFromVersionNumber] The version number the head was promoted from, when it was created by a promotion rather than a publish.
  /// [tools] The tools and toolbelts the version enables, each optionally pinned as `&lt;tool_slug&gt;@&lt;version&gt;` or `toolbelt:&lt;name&gt;@&lt;version&gt;`. **Omit the argument to enable every tool, and set an empty list to enable none.** The API distinguishes the two, and so does this resource.
  /// [versionNumber] The number of the head version.
  const ActionGatewayEndpointVersion({
    this.actorId,
    this.config,
    this.id,
    this.network,
    this.pinnedTools,
    this.policy,
    this.promotedFromVersionNumber,
    this.tools,
    this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actorId': ?actorId,
      'config': ?config,
      'id': ?id,
      'network': ?pulumi.Input.mapOptionalInputValue<ActionGatewayEndpointVersionNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'pinnedTools': ?pinnedTools,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActionGatewayEndpointVersionPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'promotedFromVersionNumber': ?promotedFromVersionNumber,
      'tools': ?tools,
      'versionNumber': ?versionNumber,
    };
  }

  factory ActionGatewayEndpointVersion.fromMap(Map<String, dynamic> map) {
    return ActionGatewayEndpointVersion(
      actorId: (() { final guardedValue = map['actorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionGatewayEndpointVersionNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pinnedTools: (() { final guardedValue = map['pinnedTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionGatewayEndpointVersionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      promotedFromVersionNumber: (() { final guardedValue = map['promotedFromVersionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tools: (() { final guardedValue = map['tools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      versionNumber: (() { final guardedValue = map['versionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
