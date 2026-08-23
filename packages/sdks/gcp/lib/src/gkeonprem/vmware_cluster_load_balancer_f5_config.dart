// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterLoadBalancerF5Config {
  /// The load balancer's IP address.
  final pulumi.Input<String>? address;
  /// he preexisting partition to be used by the load balancer. T
  /// his partition is usually created for the admin cluster for example:
  /// 'my-f5-admin-partition'.
  final pulumi.Input<String>? partition;
  /// The pool name. Only necessary, if using SNAT.
  final pulumi.Input<String>? snatPool;

  /// Creates a new [VMwareClusterLoadBalancerF5Config].
  /// [address] The load balancer's IP address.
  /// [partition] he preexisting partition to be used by the load balancer. T
  /// [snatPool] The pool name. Only necessary, if using SNAT.
  const VMwareClusterLoadBalancerF5Config({
    this.address,
    this.partition,
    this.snatPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'partition': ?partition,
      'snatPool': ?snatPool,
    };
  }

  factory VMwareClusterLoadBalancerF5Config.fromMap(Map<String, dynamic> map) {
    return VMwareClusterLoadBalancerF5Config(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snatPool: (() { final guardedValue = map['snatPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
