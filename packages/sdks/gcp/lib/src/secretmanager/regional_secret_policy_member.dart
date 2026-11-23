// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionalSecretPolicyMember {
  /// (Output)
  /// IAM policy binding member referring to a Google Cloud resource by system-assigned unique identifier.
  /// If a resource is deleted and recreated with the same name, the binding will not be applicable to the
  /// new resource. Format:
  /// `principal://secretmanager.googleapis.com/projects/{{project_number}}/uid/locations/{{location}}/secrets/{{secret_id}}-{{uid}}`
  final pulumi.Input<String?>? iamPolicyUidPrincipal;

  /// Creates a new [RegionalSecretPolicyMember].
  /// [iamPolicyUidPrincipal] (Output)
  const RegionalSecretPolicyMember({
    this.iamPolicyUidPrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamPolicyUidPrincipal': ?iamPolicyUidPrincipal,
    };
  }

  factory RegionalSecretPolicyMember.fromMap(Map<String, dynamic> map) {
    return RegionalSecretPolicyMember(
      iamPolicyUidPrincipal: (() { final guardedValue = map['iamPolicyUidPrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
