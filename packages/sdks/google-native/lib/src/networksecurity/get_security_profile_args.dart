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
    required this.location,
    required this.organizationId,
    required this.securityProfileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'organizationId': organizationId,
      'securityProfileId': securityProfileId,
    };
  }

  factory GetSecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      securityProfileId: pulumi.Input.fromValue(
        map['securityProfileId'] as String,
      ),
    );
  }
}
