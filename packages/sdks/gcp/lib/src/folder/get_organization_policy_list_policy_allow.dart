// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationPolicyListPolicyAllow {
  /// The policy allows or denies all values.
  final pulumi.Input<bool> all;
  /// The policy can define specific values that are allowed or denied.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetOrganizationPolicyListPolicyAllow].
  /// [all] The policy allows or denies all values.
  /// [values] The policy can define specific values that are allowed or denied.
  GetOrganizationPolicyListPolicyAllow({
    required this.all,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': all,
      'values': values,
    };
  }

  factory GetOrganizationPolicyListPolicyAllow.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyListPolicyAllow(
      all: (map['all'] as bool).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

