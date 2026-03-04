// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerFirewall {
  /// the rules for ALLOWING traffic to the LB (strings in the form: 'ip:1.2.3.4' or 'cidr:1.2.0.0/16')
  final pulumi.Input<List<String>> allows;

  /// the rules for DENYING traffic to the LB (strings in the form: 'ip:1.2.3.4' or 'cidr:1.2.0.0/16')
  final pulumi.Input<List<String>> denies;

  /// Creates a new [GetLoadBalancerFirewall].
  /// [allows] the rules for ALLOWING traffic to the LB (strings in the form: 'ip:1.2.3.4' or 'cidr:1.2.0.0/16')
  /// [denies] the rules for DENYING traffic to the LB (strings in the form: 'ip:1.2.3.4' or 'cidr:1.2.0.0/16')
  GetLoadBalancerFirewall({required this.allows, required this.denies});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allows': allows, 'denies': denies};
  }

  factory GetLoadBalancerFirewall.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerFirewall(
      allows: pulumi.Input.fromValue((map['allows'] as List).cast<String>()),
      denies: pulumi.Input.fromValue((map['denies'] as List).cast<String>()),
    );
  }
}
