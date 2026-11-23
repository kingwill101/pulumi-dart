// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionalSecretsSecretPolicyMember {
  /// IAM policy binding member referring to a Google Cloud resource by system-assigned unique identifier.
  /// If a resource is deleted and recreated with the same name, the binding will not be applicable to the
  /// new resource. Format:
  /// 'principal://secretmanager.googleapis.com/projects/{{project_number}}/uid/locations/{{location}}/secrets/{{secret_id}}-{{uid}}'
  final pulumi.Input<String> iamPolicyUidPrincipal;

  /// Creates a new [GetRegionalSecretsSecretPolicyMember].
  /// [iamPolicyUidPrincipal] IAM policy binding member referring to a Google Cloud resource by system-assigned unique identifier.
  const GetRegionalSecretsSecretPolicyMember({
    required this.iamPolicyUidPrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamPolicyUidPrincipal': iamPolicyUidPrincipal,
    };
  }

  factory GetRegionalSecretsSecretPolicyMember.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretsSecretPolicyMember(
      iamPolicyUidPrincipal: pulumi.Input.fromValue(map['iamPolicyUidPrincipal'] as String),
    );
  }
}
