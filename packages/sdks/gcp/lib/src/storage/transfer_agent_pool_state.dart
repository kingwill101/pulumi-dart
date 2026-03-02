// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_agent_pool_bandwidth_limit.dart';

/// Input properties used for looking up and filtering TransferAgentPool resources.
class TransferAgentPoolState {
  /// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  /// Structure is documented below.
  final pulumi.Input<TransferAgentPoolBandwidthLimit>? bandwidthLimit;
  /// Specifies the client-specified AgentPool description.
  final pulumi.Input<String>? displayName;
  /// The ID of the agent pool to create.
  /// The agentPoolId must meet the following requirements:
  /// * Length of 128 characters or less.
  /// * Not start with the string goog.
  /// * Start with a lowercase ASCII character, followed by:
  /// * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (-), periods (.), underscores (_), or tildes (~).
  /// * One or more numerals or lowercase ASCII characters.
  /// As expressed by the regular expression: ^(?!goog)a-z?$.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Specifies the state of the AgentPool.
  final pulumi.Input<String>? state;

  /// Creates a new [TransferAgentPoolState].
  /// [bandwidthLimit] Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  /// [displayName] Specifies the client-specified AgentPool description.
  /// [name] The ID of the agent pool to create.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] Specifies the state of the AgentPool.
  TransferAgentPoolState({
    this.bandwidthLimit,
    this.displayName,
    this.name,
    this.project,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthLimit': ?pulumi.Input.mapOptionalInputValue<TransferAgentPoolBandwidthLimit, Map<String, dynamic>>(bandwidthLimit, (value) => value.toMap()),
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
      'state': ?state,
    };
  }

  factory TransferAgentPoolState.fromMap(Map<String, dynamic> map) {
    return TransferAgentPoolState(
      bandwidthLimit: map['bandwidthLimit'] == null ? null : (TransferAgentPoolBandwidthLimit.fromMap((map['bandwidthLimit']! as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

