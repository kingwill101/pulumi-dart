// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerPoolOriginHeader {
  /// The 'Host' header allows to override the hostname set in the HTTP request. Current support is 1 'Host' header override per origin.
  final pulumi.Input<List<String>> hosts;

  /// Creates a new [GetLoadBalancerPoolOriginHeader].
  /// [hosts] The 'Host' header allows to override the hostname set in the HTTP request. Current support is 1 'Host' header override per origin.
  const GetLoadBalancerPoolOriginHeader({
    required this.hosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': hosts,
    };
  }

  factory GetLoadBalancerPoolOriginHeader.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolOriginHeader(
      hosts: pulumi.Input.fromValue((map['hosts'] as List).cast<String>()),
    );
  }
}
