// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerPoolOriginHeader {
  /// The 'Host' header allows to override the hostname set in the HTTP request. Current support is 1 'Host' header override per origin.
  final pulumi.Input<List<String>?>? hosts;

  /// Creates a new [LoadBalancerPoolOriginHeader].
  /// [hosts] The 'Host' header allows to override the hostname set in the HTTP request. Current support is 1 'Host' header override per origin.
  const LoadBalancerPoolOriginHeader({
    this.hosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': ?hosts,
    };
  }

  factory LoadBalancerPoolOriginHeader.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPoolOriginHeader(
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
