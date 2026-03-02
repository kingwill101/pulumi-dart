// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of a load balancer.
class LoadBalancerSkuResponse {
  /// Name of a load balancer SKU.
  final pulumi.Input<String>? name;
  /// Tier of a load balancer SKU.
  final pulumi.Input<String>? tier;

  /// Creates a new [LoadBalancerSkuResponse].
  /// [name] Name of a load balancer SKU.
  /// [tier] Tier of a load balancer SKU.
  LoadBalancerSkuResponse({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory LoadBalancerSkuResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerSkuResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

