// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PoolAttachment resources.
class PoolAttachmentState {
  /// Specifies a maximum established connection limit for a pool member or node.The default is 0, meaning that there is no limit to the number of connections.
  final pulumi.Input<int>? connectionLimit;

  /// Specifies the maximum number of connections-per-second allowed for a pool member,The default is 0.
  final pulumi.Input<String>? connectionRateLimit;

  /// Specifies the fixed ratio value used for a node during ratio load balancing.
  final pulumi.Input<int>? dynamicRatio;

  /// Specifies whether the system automatically creates ephemeral nodes using the IP addresses returned by the resolution of a DNS query for a node defined by an FQDN. The default is enabled
  final pulumi.Input<String>? fqdnAutopopulate;

  /// Specifies the health monitors that the system uses to monitor this pool member,value can be `none` (or) `default` (or) list of monitors joined with and ( ex: `/Common/test_monitor_pa_tc1 and /Common/gateway_icmp`).
  final pulumi.Input<String>? monitor;

  /// Pool member address/fqdn with service port, (ex: `1.1.1.1:80/www.google.com:80`). (Note: Member will be in same partition of Pool)
  final pulumi.Input<String>? node;

  /// Name of the pool to which members should be attached,it should be "full path".The full path is the combination of the partition + name of the pool.(For example `/Common/my-pool`) or partition + directory + name of the pool (For example `/Common/test/my-pool`).When including directory in fullpath we have to make sure it is created in the given partition before using it.
  final pulumi.Input<String>? pool;

  /// Specifies a number representing the priority group for the pool member. The default is 0, meaning that the member has no priority
  final pulumi.Input<int>? priorityGroup;

  /// "Specifies the ratio weight to assign to the pool member. Valid values range from 1 through 65535. The default is 1, which means that each pool member has an equal ratio proportion.".
  final pulumi.Input<int>? ratio;

  /// Specifies the state the pool member should be in,value can be `enabled` (or) `disabled` (or) `forced_offline`).
  final pulumi.Input<String>? state;

  /// Creates a new [PoolAttachmentState].
  /// [connectionLimit] Specifies a maximum established connection limit for a pool member or node.The default is 0, meaning that there is no limit to the number of connections.
  /// [connectionRateLimit] Specifies the maximum number of connections-per-second allowed for a pool member,The default is 0.
  /// [dynamicRatio] Specifies the fixed ratio value used for a node during ratio load balancing.
  /// [fqdnAutopopulate] Specifies whether the system automatically creates ephemeral nodes using the IP addresses returned by the resolution of a DNS query for a node defined by an FQDN. The default is enabled
  /// [monitor] Specifies the health monitors that the system uses to monitor this pool member,value can be `none` (or) `default` (or) list of monitors joined with and ( ex: `/Common/test_monitor_pa_tc1 and /Common/gateway_icmp`).
  /// [node] Pool member address/fqdn with service port, (ex: `1.1.1.1:80/www.google.com:80`). (Note: Member will be in same partition of Pool)
  /// [pool] Name of the pool to which members should be attached,it should be "full path".The full path is the combination of the partition + name of the pool.(For example `/Common/my-pool`) or partition + directory + name of the pool (For example `/Common/test/my-pool`).When including directory in fullpath we have to make sure it is created in the given partition before using it.
  /// [priorityGroup] Specifies a number representing the priority group for the pool member. The default is 0, meaning that the member has no priority
  /// [ratio] "Specifies the ratio weight to assign to the pool member. Valid values range from 1 through 65535. The default is 1, which means that each pool member has an equal ratio proportion.".
  /// [state] Specifies the state the pool member should be in,value can be `enabled` (or) `disabled` (or) `forced_offline`).
  PoolAttachmentState({
    this.connectionLimit,
    this.connectionRateLimit,
    this.dynamicRatio,
    this.fqdnAutopopulate,
    this.monitor,
    this.node,
    this.pool,
    this.priorityGroup,
    this.ratio,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionLimit': ?connectionLimit,
      'connectionRateLimit': ?connectionRateLimit,
      'dynamicRatio': ?dynamicRatio,
      'fqdnAutopopulate': ?fqdnAutopopulate,
      'monitor': ?monitor,
      'node': ?node,
      'pool': ?pool,
      'priorityGroup': ?priorityGroup,
      'ratio': ?ratio,
      'state': ?state,
    };
  }

  factory PoolAttachmentState.fromMap(Map<String, dynamic> map) {
    return PoolAttachmentState(
      connectionLimit: (() {
        final guardedValue = map['connectionLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      connectionRateLimit: (() {
        final guardedValue = map['connectionRateLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dynamicRatio: (() {
        final guardedValue = map['dynamicRatio'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      fqdnAutopopulate: (() {
        final guardedValue = map['fqdnAutopopulate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      monitor: (() {
        final guardedValue = map['monitor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      node: (() {
        final guardedValue = map['node'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pool: (() {
        final guardedValue = map['pool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priorityGroup: (() {
        final guardedValue = map['priorityGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ratio: (() {
        final guardedValue = map['ratio'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
