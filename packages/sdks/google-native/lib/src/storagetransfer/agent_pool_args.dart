// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bandwidth_limit.dart';

/// {@template pulumi_storagetransfer_v1_agent_pool_args_doc}
/// The set of arguments for AgentPool.
/// {@endtemplate}
/// {@macro pulumi_storagetransfer_v1_agent_pool_args_doc}
class AgentPoolArgs {
  /// Required. The ID of the agent pool to create. The `agent_pool_id` must meet the following requirements: * Length of 128 characters or less. * Not start with the string `goog`. * Start with a lowercase ASCII character, followed by: * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (`-`), periods (`.`), underscores (`_`), or tildes (`~`). * One or more numerals or lowercase ASCII characters. As expressed by the regular expression: `^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$`.
  final pulumi.Input<String> agentPoolId;

  /// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  final pulumi.Input<BandwidthLimit>? bandwidthLimit;

  /// Specifies the client-specified AgentPool description.
  final pulumi.Input<String>? displayName;

  /// Specifies a unique string that identifies the agent pool. Format: `projects/{project_id}/agentPools/{agent_pool_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [AgentPoolArgs].
  /// [agentPoolId] Required. The ID of the agent pool to create. The `agent_pool_id` must meet the following requirements: * Length of 128 characters or less. * Not start with the string `goog`. * Start with a lowercase ASCII character, followed by: * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (`-`), periods (`.`), underscores (`_`), or tildes (`~`). * One or more numerals or lowercase ASCII characters. As expressed by the regular expression: `^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$`.
  /// [bandwidthLimit] Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  /// [displayName] Specifies the client-specified AgentPool description.
  /// [name] Specifies a unique string that identifies the agent pool. Format: `projects/{project_id}/agentPools/{agent_pool_id}`
  /// [project] Optional.
  AgentPoolArgs({
    required this.agentPoolId,
    this.bandwidthLimit,
    this.displayName,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolId': agentPoolId,
      'bandwidthLimit':
          ?pulumi.Input.mapOptionalInputValue<
            BandwidthLimit,
            Map<String, dynamic>
          >(bandwidthLimit, (value) => value.toMap()),
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
    };
  }

  factory AgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return AgentPoolArgs(
      agentPoolId: pulumi.Input.fromValue(map['agentPoolId'] as String),
      bandwidthLimit: (() {
        final guardedValue = map['bandwidthLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BandwidthLimit.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
