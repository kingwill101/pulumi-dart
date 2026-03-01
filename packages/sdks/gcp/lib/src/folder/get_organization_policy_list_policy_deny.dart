// ignore_for_file: unused_element, unnecessary_cast


class GetOrganizationPolicyListPolicyDeny {
  /// The policy allows or denies all values.
  final bool all;
  /// The policy can define specific values that are allowed or denied.
  final List<String> values;

  /// Creates a new [GetOrganizationPolicyListPolicyDeny].
  /// [all] The policy allows or denies all values.
  /// [values] The policy can define specific values that are allowed or denied.
  GetOrganizationPolicyListPolicyDeny({
    required this.all,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': all,
      'values': values,
    };
  }

  factory GetOrganizationPolicyListPolicyDeny.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyListPolicyDeny(
      all: map['all'] as bool,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

