// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerFirewall {
  /// A list of strings describing allow rules. Must be colon delimited strings of the form `{type}:{source}`
  /// * Ex. `deny = ["cidr:1.2.0.0/16", "ip:2.3.4.5"]` or `allow = ["ip:1.2.3.4", "cidr:2.3.4.0/24"]`
  final pulumi.Input<List<String>>? allows;
  /// A list of strings describing deny rules. Must be colon delimited strings of the form `{type}:{source}`
  final pulumi.Input<List<String>>? denies;

  /// Creates a new [LoadBalancerFirewall].
  /// [allows] A list of strings describing allow rules. Must be colon delimited strings of the form `{type}:{source}`
  /// [denies] A list of strings describing deny rules. Must be colon delimited strings of the form `{type}:{source}`
  LoadBalancerFirewall({
    this.allows,
    this.denies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allows': ?allows,
      'denies': ?denies,
    };
  }

  factory LoadBalancerFirewall.fromMap(Map<String, dynamic> map) {
    return LoadBalancerFirewall(
      allows: map['allows'] == null ? null : ((map['allows'] as List).cast<String>()).input(),
      denies: map['denies'] == null ? null : ((map['denies'] as List).cast<String>()).input(),
    );
  }
}

