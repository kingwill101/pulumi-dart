// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GradientaiAgentRoute resources.
class GradientaiAgentRouteState {
  /// The UUID of the child agent.
  final pulumi.Input<String>? childAgentUuid;
  /// if-case condition for the route.
  final pulumi.Input<String>? ifCase;
  /// The UUID of the parent agent.
  final pulumi.Input<String>? parentAgentUuid;
  final pulumi.Input<bool>? rollback;
  /// A name for the route.
  final pulumi.Input<String>? routeName;
  /// The UUID of the linkage
  final pulumi.Input<String>? uuid;

  /// Creates a new [GradientaiAgentRouteState].
  /// [childAgentUuid] The UUID of the child agent.
  /// [ifCase] if-case condition for the route.
  /// [parentAgentUuid] The UUID of the parent agent.
  /// [rollback] Optional.
  /// [routeName] A name for the route.
  /// [uuid] The UUID of the linkage
  GradientaiAgentRouteState({
    pulumi.Output<String>? childAgentUuid,
    pulumi.Output<String>? ifCase,
    pulumi.Output<String>? parentAgentUuid,
    pulumi.Output<bool>? rollback,
    pulumi.Output<String>? routeName,
    pulumi.Output<String>? uuid,
  }) :
      childAgentUuid = pulumi.Input.asOptionalInput<String>(childAgentUuid),
      ifCase = pulumi.Input.asOptionalInput<String>(ifCase),
      parentAgentUuid = pulumi.Input.asOptionalInput<String>(parentAgentUuid),
      rollback = pulumi.Input.asOptionalInput<bool>(rollback),
      routeName = pulumi.Input.asOptionalInput<String>(routeName),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childAgentUuid': ?childAgentUuid,
      'ifCase': ?ifCase,
      'parentAgentUuid': ?parentAgentUuid,
      'rollback': ?rollback,
      'routeName': ?routeName,
      'uuid': ?uuid,
    };
  }

  factory GradientaiAgentRouteState.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentRouteState(
      childAgentUuid: map['childAgentUuid'] == null ? null : pulumi.Output.create<String>(map['childAgentUuid'] as String),
      ifCase: map['ifCase'] == null ? null : pulumi.Output.create<String>(map['ifCase'] as String),
      parentAgentUuid: map['parentAgentUuid'] == null ? null : pulumi.Output.create<String>(map['parentAgentUuid'] as String),
      rollback: map['rollback'] == null ? null : pulumi.Output.create<bool>(map['rollback'] as bool),
      routeName: map['routeName'] == null ? null : pulumi.Output.create<String>(map['routeName'] as String),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

