// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetParametersParameterPolicyMember {
  /// AM policy binding member referring to a Google Cloud resource by user-assigned name. If a resource is deleted and recreated with the same name, the binding will be applicable to the
  /// new resource. Format:
  /// `principal://parametermanager.googleapis.com/projects/{{project}}/name/locations/global/parameters/{{parameter_id}}`
  final pulumi.Input<String> iamPolicyNamePrincipal;
  /// IAM policy binding member referring to a Google Cloud resource by system-assigned unique identifier.
  /// If a resource is deleted and recreated with the same name, the binding will not be applicable to the
  /// new resource. Format:
  /// `principal://parametermanager.googleapis.com/projects/{{project}}/uid/locations/global/parameters/{{uid}}`
  final pulumi.Input<String> iamPolicyUidPrincipal;

  /// Creates a new [GetParametersParameterPolicyMember].
  /// [iamPolicyNamePrincipal] AM policy binding member referring to a Google Cloud resource by user-assigned name. If a resource is deleted and recreated with the same name, the binding will be applicable to the
  /// [iamPolicyUidPrincipal] IAM policy binding member referring to a Google Cloud resource by system-assigned unique identifier.
  const GetParametersParameterPolicyMember({
    required this.iamPolicyNamePrincipal,
    required this.iamPolicyUidPrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamPolicyNamePrincipal': iamPolicyNamePrincipal,
      'iamPolicyUidPrincipal': iamPolicyUidPrincipal,
    };
  }

  factory GetParametersParameterPolicyMember.fromMap(Map<String, dynamic> map) {
    return GetParametersParameterPolicyMember(
      iamPolicyNamePrincipal: pulumi.Input.fromValue(map['iamPolicyNamePrincipal'] as String),
      iamPolicyUidPrincipal: pulumi.Input.fromValue(map['iamPolicyUidPrincipal'] as String),
    );
  }
}

