// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Pool resources.
class PoolState {
  /// Specifies whether NATs are automatically enabled or disabled for any connections using this pool, [ Default : `yes`, Possible Values `yes` or `no`].
  final pulumi.Input<String>? allowNat;
  /// Specifies whether SNATs are automatically enabled or disabled for any connections using this pool,[ Default : `yes`, Possible Values `yes` or `no`].
  final pulumi.Input<String>? allowSnat;
  /// Specifies descriptive text that identifies the pool.
  final pulumi.Input<String>? description;
  /// Specifies the load balancing method. The default is `round-robin`. Possible options: [`dynamic-ratio-member`,`dynamic-ratio-node`, `fastest-app-response`,`fastest-node`, `least-connections-members`,`least-connections-node`,`least-sessions`,`observed-member`,`observed-node`,`predictive-member`,`predictive-node`,`ratio-least-connections-member`,`ratio-least-connections-node`,`ratio-member`,`ratio-node`,`ratio-session`,`round-robin`,`weighted-least-connections-member`,`weighted-least-connections-node`]
  final pulumi.Input<String>? loadBalancingMode;
  /// Specifies whether the system load balances traffic according to the priority number assigned to the pool member,Default Value is `0` meaning `disabled`.
  final pulumi.Input<int>? minimumActiveMembers;
  /// List of monitor names to associate with the pool
  final pulumi.Input<List<String>>? monitors;
  /// Name of the pool,it should be `full path`.The full path is the combination of the `partition + name` of the pool.(For example `/Common/my-pool`)
  final pulumi.Input<String>? name;
  /// Specifies the number of times the system tries to contact a new pool member after a passive failure.
  final pulumi.Input<int>? reselectTries;
  /// Specifies how the system should respond when the target pool member becomes unavailable. The default is `None`, Possible values: `[none, reset, reselect, drop]`.
  final pulumi.Input<String>? serviceDownAction;
  /// Specifies the duration during which the system sends less traffic to a newly-enabled pool member.
  final pulumi.Input<int>? slowRampTime;

  /// Creates a new [PoolState].
  /// [allowNat] Specifies whether NATs are automatically enabled or disabled for any connections using this pool, [ Default : `yes`, Possible Values `yes` or `no`].
  /// [allowSnat] Specifies whether SNATs are automatically enabled or disabled for any connections using this pool,[ Default : `yes`, Possible Values `yes` or `no`].
  /// [description] Specifies descriptive text that identifies the pool.
  /// [loadBalancingMode] Specifies the load balancing method. The default is `round-robin`. Possible options: [`dynamic-ratio-member`,`dynamic-ratio-node`, `fastest-app-response`,`fastest-node`, `least-connections-members`,`least-connections-node`,`least-sessions`,`observed-member`,`observed-node`,`predictive-member`,`predictive-node`,`ratio-least-connections-member`,`ratio-least-connections-node`,`ratio-member`,`ratio-node`,`ratio-session`,`round-robin`,`weighted-least-connections-member`,`weighted-least-connections-node`]
  /// [minimumActiveMembers] Specifies whether the system load balances traffic according to the priority number assigned to the pool member,Default Value is `0` meaning `disabled`.
  /// [monitors] List of monitor names to associate with the pool
  /// [name] Name of the pool,it should be `full path`.The full path is the combination of the `partition + name` of the pool.(For example `/Common/my-pool`)
  /// [reselectTries] Specifies the number of times the system tries to contact a new pool member after a passive failure.
  /// [serviceDownAction] Specifies how the system should respond when the target pool member becomes unavailable. The default is `None`, Possible values: `[none, reset, reselect, drop]`.
  /// [slowRampTime] Specifies the duration during which the system sends less traffic to a newly-enabled pool member.
  PoolState({
    this.allowNat,
    this.allowSnat,
    this.description,
    this.loadBalancingMode,
    this.minimumActiveMembers,
    this.monitors,
    this.name,
    this.reselectTries,
    this.serviceDownAction,
    this.slowRampTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNat': ?allowNat,
      'allowSnat': ?allowSnat,
      'description': ?description,
      'loadBalancingMode': ?loadBalancingMode,
      'minimumActiveMembers': ?minimumActiveMembers,
      'monitors': ?monitors,
      'name': ?name,
      'reselectTries': ?reselectTries,
      'serviceDownAction': ?serviceDownAction,
      'slowRampTime': ?slowRampTime,
    };
  }

  factory PoolState.fromMap(Map<String, dynamic> map) {
    return PoolState(
      allowNat: map['allowNat'] == null ? null : (map['allowNat']! as String).input(),
      allowSnat: map['allowSnat'] == null ? null : (map['allowSnat']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      loadBalancingMode: map['loadBalancingMode'] == null ? null : (map['loadBalancingMode']! as String).input(),
      minimumActiveMembers: map['minimumActiveMembers'] == null ? null : (map['minimumActiveMembers']! as int).input(),
      monitors: map['monitors'] == null ? null : ((map['monitors']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      reselectTries: map['reselectTries'] == null ? null : (map['reselectTries']! as int).input(),
      serviceDownAction: map['serviceDownAction'] == null ? null : (map['serviceDownAction']! as String).input(),
      slowRampTime: map['slowRampTime'] == null ? null : (map['slowRampTime']! as int).input(),
    );
  }
}

