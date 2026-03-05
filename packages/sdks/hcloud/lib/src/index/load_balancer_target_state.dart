// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoadBalancerTarget resources.
class LoadBalancerTargetState {
  /// IP address for an IP Target. Required if
  /// `type` is `ip`.
  final pulumi.Input<String>? ip;
  /// Label Selector selecting targets
  /// for this Load Balancer. Required if `type` is `label_selector`.
  final pulumi.Input<String>? labelSelector;
  /// ID of the Load Balancer to which
  /// the target gets attached.
  final pulumi.Input<int>? loadBalancerId;
  /// ID of the server which should be a
  /// target for this Load Balancer. Required if `type` is `server`
  final pulumi.Input<int>? serverId;
  /// Type of the target. Possible values
  /// `server`, `label_selector`, `ip`.
  final pulumi.Input<String>? type;
  /// use the private IP to connect to
  /// Load Balancer targets. Only allowed if type is `server` or
  /// `label_selector`.
  final pulumi.Input<bool>? usePrivateIp;

  /// Creates a new [LoadBalancerTargetState].
  /// [ip] IP address for an IP Target. Required if
  /// [labelSelector] Label Selector selecting targets
  /// [loadBalancerId] ID of the Load Balancer to which
  /// [serverId] ID of the server which should be a
  /// [type] Type of the target. Possible values
  /// [usePrivateIp] use the private IP to connect to
  LoadBalancerTargetState({
    this.ip,
    this.labelSelector,
    this.loadBalancerId,
    this.serverId,
    this.type,
    this.usePrivateIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ?ip,
      'labelSelector': ?labelSelector,
      'loadBalancerId': ?loadBalancerId,
      'serverId': ?serverId,
      'type': ?type,
      'usePrivateIp': ?usePrivateIp,
    };
  }

  factory LoadBalancerTargetState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerTargetState(
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelSelector: (() { final guardedValue = map['labelSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerId: (() { final guardedValue = map['loadBalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usePrivateIp: (() { final guardedValue = map['usePrivateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

