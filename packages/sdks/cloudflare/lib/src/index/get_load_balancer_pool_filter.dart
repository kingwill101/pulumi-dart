// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerPoolFilter {
  /// The ID of the Monitor to use for checking the health of origins within this pool.
  final pulumi.Input<String?>? monitor;

  /// Creates a new [GetLoadBalancerPoolFilter].
  /// [monitor] The ID of the Monitor to use for checking the health of origins within this pool.
  const GetLoadBalancerPoolFilter({
    this.monitor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitor': ?monitor,
    };
  }

  factory GetLoadBalancerPoolFilter.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolFilter(
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
