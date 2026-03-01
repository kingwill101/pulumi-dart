// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_gradientai_agent_route_gradientai_agent_route_args_doc}
/// The set of arguments for GradientaiAgentRoute.
/// {@endtemplate}
/// {@macro pulumi_index_gradientai_agent_route_gradientai_agent_route_args_doc}
class GradientaiAgentRouteArgs {
  /// The UUID of the child agent.
  final pulumi.Input<String> childAgentUuid;
  /// if-case condition for the route.
  final pulumi.Input<String>? ifCase;
  /// The UUID of the parent agent.
  final pulumi.Input<String> parentAgentUuid;
  final pulumi.Input<bool>? rollback;
  /// A name for the route.
  final pulumi.Input<String>? routeName;

  /// Creates a new [GradientaiAgentRouteArgs].
  /// [childAgentUuid] The UUID of the child agent.
  /// [ifCase] if-case condition for the route.
  /// [parentAgentUuid] The UUID of the parent agent.
  /// [rollback] Optional.
  /// [routeName] A name for the route.
  GradientaiAgentRouteArgs({
    required pulumi.Output<String> childAgentUuid,
    pulumi.Output<String>? ifCase,
    required pulumi.Output<String> parentAgentUuid,
    pulumi.Output<bool>? rollback,
    pulumi.Output<String>? routeName,
  }) :
      childAgentUuid = pulumi.Input.asInput<String>(childAgentUuid),
      ifCase = pulumi.Input.asOptionalInput<String>(ifCase),
      parentAgentUuid = pulumi.Input.asInput<String>(parentAgentUuid),
      rollback = pulumi.Input.asOptionalInput<bool>(rollback),
      routeName = pulumi.Input.asOptionalInput<String>(routeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childAgentUuid': childAgentUuid,
      'ifCase': ?ifCase,
      'parentAgentUuid': parentAgentUuid,
      'rollback': ?rollback,
      'routeName': ?routeName,
    };
  }

  factory GradientaiAgentRouteArgs.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentRouteArgs(
      childAgentUuid: pulumi.Output.create<String>(map['childAgentUuid'] as String),
      ifCase: map['ifCase'] == null ? null : pulumi.Output.create<String>(map['ifCase'] as String),
      parentAgentUuid: pulumi.Output.create<String>(map['parentAgentUuid'] as String),
      rollback: map['rollback'] == null ? null : pulumi.Output.create<bool>(map['rollback'] as bool),
      routeName: map['routeName'] == null ? null : pulumi.Output.create<String>(map['routeName'] as String),
    );
  }
}

