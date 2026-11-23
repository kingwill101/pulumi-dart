// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_gateway_endpoint_version_network.dart';
import 'get_action_gateway_endpoint_version_policy.dart';

class GetActionGatewayEndpointVersion {
  /// An actor ID to filter a `name` lookup by. Endpoints bound to a different actor are ignored.
  final pulumi.Input<String> actorId;
  /// JSON object of options Gateway applies to the version, such as preloadTools or customInstructions
  final pulumi.Input<String> config;
  /// The ID of the endpoint. Conflicts with `name`.
  final pulumi.Input<String> id;
  /// VPC the version's tool calls are routed through
  final pulumi.Input<List<GetActionGatewayEndpointVersionNetwork>> networks;
  /// Tools and toolbelts the head version enables, each pinned by the API as &lt;tool_slug&gt;@&lt;version&gt; or toolbelt:&lt;name&gt;@&lt;version&gt;. Empty when every tool is enabled.
  final pulumi.Input<List<String>> pinnedTools;
  /// Tool permission policy. Omitting it asks before every call.
  final pulumi.Input<List<GetActionGatewayEndpointVersionPolicy>> policies;
  /// Version number the head was promoted from, when it was created by a promotion rather than a publish
  final pulumi.Input<int> promotedFromVersionNumber;
  /// Tools and toolbelts the version enables, each optionally pinned as &lt;tool_slug&gt;@&lt;version&gt; or toolbelt:&lt;name&gt;@&lt;version&gt;. Omit to enable every tool; set an empty list to enable none.
  final pulumi.Input<List<String>> tools;
  /// Version number of the head version
  final pulumi.Input<int> versionNumber;

  /// Creates a new [GetActionGatewayEndpointVersion].
  /// [actorId] An actor ID to filter a `name` lookup by. Endpoints bound to a different actor are ignored.
  /// [config] JSON object of options Gateway applies to the version, such as preloadTools or customInstructions
  /// [id] The ID of the endpoint. Conflicts with `name`.
  /// [networks] VPC the version's tool calls are routed through
  /// [pinnedTools] Tools and toolbelts the head version enables, each pinned by the API as &lt;tool_slug&gt;@&lt;version&gt; or toolbelt:&lt;name&gt;@&lt;version&gt;. Empty when every tool is enabled.
  /// [policies] Tool permission policy. Omitting it asks before every call.
  /// [promotedFromVersionNumber] Version number the head was promoted from, when it was created by a promotion rather than a publish
  /// [tools] Tools and toolbelts the version enables, each optionally pinned as &lt;tool_slug&gt;@&lt;version&gt; or toolbelt:&lt;name&gt;@&lt;version&gt;. Omit to enable every tool; set an empty list to enable none.
  /// [versionNumber] Version number of the head version
  const GetActionGatewayEndpointVersion({
    required this.actorId,
    required this.config,
    required this.id,
    required this.networks,
    required this.pinnedTools,
    required this.policies,
    required this.promotedFromVersionNumber,
    required this.tools,
    required this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actorId': actorId,
      'config': config,
      'id': id,
      'networks': pulumi.Input.mapInputValue<List<GetActionGatewayEndpointVersionNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<GetActionGatewayEndpointVersionNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pinnedTools': pinnedTools,
      'policies': pulumi.Input.mapInputValue<List<GetActionGatewayEndpointVersionPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<GetActionGatewayEndpointVersionPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'promotedFromVersionNumber': promotedFromVersionNumber,
      'tools': tools,
      'versionNumber': versionNumber,
    };
  }

  factory GetActionGatewayEndpointVersion.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayEndpointVersion(
      actorId: pulumi.Input.fromValue(map['actorId'] as String),
      config: pulumi.Input.fromValue(map['config'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      networks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetActionGatewayEndpointVersionNetwork>(map['networks']!, (value) => GetActionGatewayEndpointVersionNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      pinnedTools: pulumi.Input.fromValue((map['pinnedTools'] as List).cast<String>()),
      policies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetActionGatewayEndpointVersionPolicy>(map['policies']!, (value) => GetActionGatewayEndpointVersionPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      promotedFromVersionNumber: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['promotedFromVersionNumber'])),
      tools: pulumi.Input.fromValue((map['tools'] as List).cast<String>()),
      versionNumber: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['versionNumber'])),
    );
  }
}
