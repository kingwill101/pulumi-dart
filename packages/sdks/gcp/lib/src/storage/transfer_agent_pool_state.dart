// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_agent_pool_bandwidth_limit.dart';

/// Input properties used for looking up and filtering TransferAgentPool resources.
class TransferAgentPoolState {
  /// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  /// Structure is documented below.
  final pulumi.Input<TransferAgentPoolBandwidthLimit>? bandwidthLimit;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Specifies the client-specified AgentPool description.
  /// [name] The ID of the agent pool to create.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] Specifies the state of the AgentPool.
  const TransferAgentPoolState({
    this.bandwidthLimit,
    this.deletionPolicy,
    this.displayName,
    this.name,
    this.project,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthLimit': ?pulumi.Input.mapOptionalInputValue<TransferAgentPoolBandwidthLimit, Map<String, dynamic>>(bandwidthLimit, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
      'state': ?state,
    };
  }

  factory TransferAgentPoolState.fromMap(Map<String, dynamic> map) {
    return TransferAgentPoolState(
      bandwidthLimit: (() { final guardedValue = map['bandwidthLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferAgentPoolBandwidthLimit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
