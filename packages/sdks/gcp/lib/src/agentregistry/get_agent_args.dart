// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_agentregistry_get_agent_get_agent_args_doc}
/// Arguments for getAgent.
/// {@endtemplate}
/// {@macro pulumi_agentregistry_get_agent_get_agent_args_doc}
class GetAgentArgs {
  /// The unique identifier for the Agent. This or `filter` must be set.
  final pulumi.Input<String?>? agentId;
  /// A filter string that identifies a unique Agent. This or `agentId` must be set.
  final pulumi.Input<String?>? filter;
  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetAgentArgs].
  /// [agentId] The unique identifier for the Agent. This or `filter` must be set.
  /// [filter] A filter string that identifies a unique Agent. This or `agentId` must be set.
  /// [location] The location of the resource.
  /// [project] The project in which the resource belongs. If it
  const GetAgentArgs({
    this.agentId,
    this.filter,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'filter': ?filter,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentArgs(
      agentId: (() { final guardedValue = map['agentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
