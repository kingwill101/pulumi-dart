// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configuration parameters for an F5 BIG-IP load balancer.
class VmwareF5BigIpConfig {
  /// The load balancer's IP address.
  final pulumi.Input<String>? address;
  /// The preexisting partition to be used by the load balancer. This partition is usually created for the admin cluster for example: 'my-f5-admin-partition'.
  final pulumi.Input<String>? partition;
  /// The pool name. Only necessary, if using SNAT.
  final pulumi.Input<String>? snatPool;

  /// Creates a new [VmwareF5BigIpConfig].
  /// [address] The load balancer's IP address.
  /// [partition] The preexisting partition to be used by the load balancer. This partition is usually created for the admin cluster for example: 'my-f5-admin-partition'.
  /// [snatPool] The pool name. Only necessary, if using SNAT.
  VmwareF5BigIpConfig({
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

  factory VmwareF5BigIpConfig.fromMap(Map<String, dynamic> map) {
    return VmwareF5BigIpConfig(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snatPool: (() { final guardedValue = map['snatPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

