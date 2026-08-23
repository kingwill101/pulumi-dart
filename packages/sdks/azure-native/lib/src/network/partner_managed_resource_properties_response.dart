// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the partner managed resource.
class PartnerManagedResourcePropertiesResponse {
  /// The partner managed resource id.
  final pulumi.Input<String> id;
  /// The partner managed ILB resource id
  final pulumi.Input<String> internalLoadBalancerId;
  /// The partner managed SLB resource id
  final pulumi.Input<String> standardLoadBalancerId;

  /// Creates a new [PartnerManagedResourcePropertiesResponse].
  /// [id] The partner managed resource id.
  /// [internalLoadBalancerId] The partner managed ILB resource id
  /// [standardLoadBalancerId] The partner managed SLB resource id
  const PartnerManagedResourcePropertiesResponse({
    required this.id,
    required this.internalLoadBalancerId,
    required this.standardLoadBalancerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'internalLoadBalancerId': internalLoadBalancerId,
      'standardLoadBalancerId': standardLoadBalancerId,
    };
  }

  factory PartnerManagedResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PartnerManagedResourcePropertiesResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      internalLoadBalancerId: pulumi.Input.fromValue(map['internalLoadBalancerId'] as String),
      standardLoadBalancerId: pulumi.Input.fromValue(map['standardLoadBalancerId'] as String),
    );
  }
}
