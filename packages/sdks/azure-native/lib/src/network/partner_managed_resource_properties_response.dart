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
  PartnerManagedResourcePropertiesResponse({
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
      id: (map['id'] as String).input(),
      internalLoadBalancerId: (map['internalLoadBalancerId'] as String).input(),
      standardLoadBalancerId: (map['standardLoadBalancerId'] as String).input(),
    );
  }
}

