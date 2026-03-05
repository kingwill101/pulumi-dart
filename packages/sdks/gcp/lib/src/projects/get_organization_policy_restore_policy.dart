// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationPolicyRestorePolicy {
  /// May only be set to true. If set, then the default Policy is restored.
  final pulumi.Input<bool> default_;

  /// Creates a new [GetOrganizationPolicyRestorePolicy].
  /// [default_] May only be set to true. If set, then the default Policy is restored.
  GetOrganizationPolicyRestorePolicy({
    required this.default_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
    };
  }

  factory GetOrganizationPolicyRestorePolicy.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyRestorePolicy(
      default_: pulumi.Input.fromValue(map['default'] as bool),
    );
  }
}

