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
    pulumi.Output<String>? ip,
    pulumi.Output<String>? labelSelector,
    pulumi.Output<int>? loadBalancerId,
    pulumi.Output<int>? serverId,
    pulumi.Output<String>? type,
    pulumi.Output<bool>? usePrivateIp,
  }) :
      ip = pulumi.Input.asOptionalInput<String>(ip),
      labelSelector = pulumi.Input.asOptionalInput<String>(labelSelector),
      loadBalancerId = pulumi.Input.asOptionalInput<int>(loadBalancerId),
      serverId = pulumi.Input.asOptionalInput<int>(serverId),
      type = pulumi.Input.asOptionalInput<String>(type),
      usePrivateIp = pulumi.Input.asOptionalInput<bool>(usePrivateIp);

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
      ip: map['ip'] == null ? null : pulumi.Output.create<String>(map['ip'] as String),
      labelSelector: map['labelSelector'] == null ? null : pulumi.Output.create<String>(map['labelSelector'] as String),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<int>(map['loadBalancerId'] as int),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<int>(map['serverId'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      usePrivateIp: map['usePrivateIp'] == null ? null : pulumi.Output.create<bool>(map['usePrivateIp'] as bool),
    );
  }
}

