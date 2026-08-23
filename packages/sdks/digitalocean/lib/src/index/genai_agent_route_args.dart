// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_genai_agent_route_genai_agent_route_args_doc}
/// The set of arguments for GenaiAgentRoute.
/// {@endtemplate}
/// {@macro pulumi_index_genai_agent_route_genai_agent_route_args_doc}
class GenaiAgentRouteArgs {
  /// The UUID of the child agent.
  final pulumi.Input<String> childAgentUuid;
  /// if-case condition for the route.
  final pulumi.Input<String>? ifCase;
  /// The UUID of the parent agent.
  final pulumi.Input<String> parentAgentUuid;
  final pulumi.Input<bool>? rollback;
  /// A name for the route.
  final pulumi.Input<String>? routeName;

  /// Creates a new [GenaiAgentRouteArgs].
  /// [childAgentUuid] The UUID of the child agent.
  /// [ifCase] if-case condition for the route.
  /// [parentAgentUuid] The UUID of the parent agent.
  /// [rollback] Optional.
  /// [routeName] A name for the route.
  const GenaiAgentRouteArgs({
    required this.childAgentUuid,
    this.ifCase,
    required this.parentAgentUuid,
    this.rollback,
    this.routeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childAgentUuid': childAgentUuid,
      'ifCase': ?ifCase,
      'parentAgentUuid': parentAgentUuid,
      'rollback': ?rollback,
      'routeName': ?routeName,
    };
  }

  factory GenaiAgentRouteArgs.fromMap(Map<String, dynamic> map) {
    return GenaiAgentRouteArgs(
      childAgentUuid: pulumi.Input.fromValue(map['childAgentUuid'] as String),
      ifCase: (() { final guardedValue = map['ifCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentAgentUuid: pulumi.Input.fromValue(map['parentAgentUuid'] as String),
      rollback: (() { final guardedValue = map['rollback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routeName: (() { final guardedValue = map['routeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
