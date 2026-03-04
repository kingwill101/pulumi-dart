// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationPolicyListPolicyDeny {
  /// The policy allows or denies all values.
  final pulumi.Input<bool> all;

  /// The policy can define specific values that are allowed or denied.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetOrganizationPolicyListPolicyDeny].
  /// [all] The policy allows or denies all values.
  /// [values] The policy can define specific values that are allowed or denied.
  GetOrganizationPolicyListPolicyDeny({
    required this.all,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'all': all, 'values': values};
  }

  factory GetOrganizationPolicyListPolicyDeny.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOrganizationPolicyListPolicyDeny(
      all: pulumi.Input.fromValue(map['all'] as bool),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
