// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationPolicyListPolicyAllow {
  /// The policy allows or denies all values.
  final pulumi.Input<bool>? all;
  /// The policy can define specific values that are allowed or denied.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [OrganizationPolicyListPolicyAllow].
  /// [all] The policy allows or denies all values.
  /// [values] The policy can define specific values that are allowed or denied.
  OrganizationPolicyListPolicyAllow({
    this.all,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'values': ?values,
    };
  }

  factory OrganizationPolicyListPolicyAllow.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyListPolicyAllow(
      all: map['all'] == null ? null : (map['all'] as bool).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

