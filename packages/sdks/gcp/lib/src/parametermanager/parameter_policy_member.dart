// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ParameterPolicyMember {
  /// (Output)
  /// IAM policy binding member referring to a Google Cloud resource by user-assigned name. If a
  /// resource is deleted and recreated with the same name, the binding will be applicable to the
  /// new resource. Format:
  /// `principal://parametermanager.googleapis.com/projects/{{project}}/name/locations/global/parameters/{{parameter_id}}`
  final pulumi.Input<String>? iamPolicyNamePrincipal;
  /// (Output)
  /// IAM policy binding member referring to a Google Cloud resource by system-assigned unique identifier.
  /// If a resource is deleted and recreated with the same name, the binding will not be applicable to the
  /// new resource. Format:
  /// `principal://parametermanager.googleapis.com/projects/{{project}}/uid/locations/global/parameters/{{uid}}`
  final pulumi.Input<String>? iamPolicyUidPrincipal;

  /// Creates a new [ParameterPolicyMember].
  /// [iamPolicyNamePrincipal] (Output)
  /// [iamPolicyUidPrincipal] (Output)
  ParameterPolicyMember({
    this.iamPolicyNamePrincipal,
    this.iamPolicyUidPrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamPolicyNamePrincipal': ?iamPolicyNamePrincipal,
      'iamPolicyUidPrincipal': ?iamPolicyUidPrincipal,
    };
  }

  factory ParameterPolicyMember.fromMap(Map<String, dynamic> map) {
    return ParameterPolicyMember(
      iamPolicyNamePrincipal: map['iamPolicyNamePrincipal'] == null ? null : (map['iamPolicyNamePrincipal']! as String).input(),
      iamPolicyUidPrincipal: map['iamPolicyUidPrincipal'] == null ? null : (map['iamPolicyUidPrincipal']! as String).input(),
    );
  }
}

