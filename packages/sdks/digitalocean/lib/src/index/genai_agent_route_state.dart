// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GenaiAgentRoute resources.
class GenaiAgentRouteState {
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

  /// Creates a new [GenaiAgentRouteState].
  /// [childAgentUuid] The UUID of the child agent.
  /// [ifCase] if-case condition for the route.
  /// [parentAgentUuid] The UUID of the parent agent.
  /// [rollback] Optional.
  /// [routeName] A name for the route.
  /// [uuid] The UUID of the linkage
  const GenaiAgentRouteState({
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

  factory GenaiAgentRouteState.fromMap(Map<String, dynamic> map) {
    return GenaiAgentRouteState(
      childAgentUuid: (() { final guardedValue = map['childAgentUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ifCase: (() { final guardedValue = map['ifCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentAgentUuid: (() { final guardedValue = map['parentAgentUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rollback: (() { final guardedValue = map['rollback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routeName: (() { final guardedValue = map['routeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

