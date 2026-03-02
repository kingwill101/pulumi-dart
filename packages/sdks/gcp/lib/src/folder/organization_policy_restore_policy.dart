// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationPolicyRestorePolicy {
  /// May only be set to true. If set, then the default Policy is restored.
  final pulumi.Input<bool> default_;

  /// Creates a new [OrganizationPolicyRestorePolicy].
  /// [default_] May only be set to true. If set, then the default Policy is restored.
  OrganizationPolicyRestorePolicy({
    required this.default_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
    };
  }

  factory OrganizationPolicyRestorePolicy.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyRestorePolicy(
      default_: (map['default'] as bool).input(),
    );
  }
}

