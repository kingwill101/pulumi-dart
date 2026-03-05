// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationPolicyBooleanPolicy {
  /// If true, then the Policy is enforced. If false, then any configuration is acceptable.
  final pulumi.Input<bool> enforced;

  /// Creates a new [OrganizationPolicyBooleanPolicy].
  /// [enforced] If true, then the Policy is enforced. If false, then any configuration is acceptable.
  OrganizationPolicyBooleanPolicy({
    required this.enforced,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforced': enforced,
    };
  }

  factory OrganizationPolicyBooleanPolicy.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyBooleanPolicy(
      enforced: pulumi.Input.fromValue(map['enforced'] as bool),
    );
  }
}

