// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_security_profile_args_doc}
/// Arguments for getSecurityProfile.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_security_profile_args_doc}
class GetSecurityProfileArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> securityProfileId;

  /// Creates a new [GetSecurityProfileArgs].
  /// [organizationId] Required.
  /// [securityProfileId] Required.
  GetSecurityProfileArgs({
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> securityProfileId,
  }) :
      organizationId = pulumi.Input.asInput<String>(organizationId),
      securityProfileId = pulumi.Input.asInput<String>(securityProfileId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
      'securityProfileId': securityProfileId,
    };
  }

  factory GetSecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileArgs(
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      securityProfileId: pulumi.Output.create<String>(map['securityProfileId'] as String),
    );
  }
}

