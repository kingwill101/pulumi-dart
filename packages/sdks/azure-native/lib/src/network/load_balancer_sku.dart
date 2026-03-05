// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of a load balancer.
class LoadBalancerSku {
  /// Name of a load balancer SKU.
  final pulumi.Input<String>? name;
  /// Tier of a load balancer SKU.
  final pulumi.Input<String>? tier;

  /// Creates a new [LoadBalancerSku].
  /// [name] Name of a load balancer SKU.
  /// [tier] Tier of a load balancer SKU.
  LoadBalancerSku({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory LoadBalancerSku.fromMap(Map<String, dynamic> map) {
    return LoadBalancerSku(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

