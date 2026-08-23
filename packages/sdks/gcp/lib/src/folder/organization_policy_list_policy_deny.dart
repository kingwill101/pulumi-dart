// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationPolicyListPolicyDeny {
  /// The policy allows or denies all values.
  final pulumi.Input<bool>? all;
  /// The policy can define specific values that are allowed or denied.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [OrganizationPolicyListPolicyDeny].
  /// [all] The policy allows or denies all values.
  /// [values] The policy can define specific values that are allowed or denied.
  const OrganizationPolicyListPolicyDeny({
    this.all,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'values': ?values,
    };
  }

  factory OrganizationPolicyListPolicyDeny.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyListPolicyDeny(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
