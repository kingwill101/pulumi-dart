// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationPolicyBooleanPolicy {
  /// If true, then the Policy is enforced. If false, then any configuration is acceptable.
  final pulumi.Input<bool> enforced;

  /// Creates a new [GetOrganizationPolicyBooleanPolicy].
  /// [enforced] If true, then the Policy is enforced. If false, then any configuration is acceptable.
  const GetOrganizationPolicyBooleanPolicy({
    required this.enforced,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforced': enforced,
    };
  }

  factory GetOrganizationPolicyBooleanPolicy.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyBooleanPolicy(
      enforced: pulumi.Input.fromValue(map['enforced'] as bool),
    );
  }
}
