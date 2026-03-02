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
    this.childAgentUuid,
    this.ifCase,
    this.parentAgentUuid,
    this.rollback,
    this.routeName,
    this.uuid,
  });

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
      childAgentUuid: map['childAgentUuid'] == null ? null : (map['childAgentUuid']! as String).input(),
      ifCase: map['ifCase'] == null ? null : (map['ifCase']! as String).input(),
      parentAgentUuid: map['parentAgentUuid'] == null ? null : (map['parentAgentUuid']! as String).input(),
      rollback: map['rollback'] == null ? null : (map['rollback']! as bool).input(),
      routeName: map['routeName'] == null ? null : (map['routeName']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
    );
  }
}

