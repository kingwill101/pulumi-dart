// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_security_profile_args_doc}
/// Arguments for getSecurityProfile.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_security_profile_args_doc}
class GetSecurityProfileArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> securityProfileId;

  /// Creates a new [GetSecurityProfileArgs].
  /// [location] Required.
  /// [organizationId] Required.
  /// [securityProfileId] Required.
  GetSecurityProfileArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> securityProfileId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      securityProfileId = pulumi.Input.asInput<String>(securityProfileId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'organizationId': organizationId,
      'securityProfileId': securityProfileId,
    };
  }

  factory GetSecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      securityProfileId: pulumi.Output.create<String>(map['securityProfileId'] as String),
    );
  }
}

