// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_v2_profile_assessment_config.dart';

/// {@template pulumi_apigee_security_profile_v2_security_profile_v2_args_doc}
/// The set of arguments for SecurityProfileV2.
/// {@endtemplate}
/// {@macro pulumi_apigee_security_profile_v2_security_profile_v2_args_doc}
class SecurityProfileV2Args {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Description of the security profile.
  final pulumi.Input<String>? description;
  /// The Apigee Organization associated with the Apigee Security Profile V2,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// A map of the assessment name and the assessment config.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileV2ProfileAssessmentConfig>> profileAssessmentConfigs;
  /// Resource ID of the security profile.
  final pulumi.Input<String> profileId;

  /// Creates a new [SecurityProfileV2Args].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the security profile.
  /// [orgId] The Apigee Organization associated with the Apigee Security Profile V2,
  /// [profileAssessmentConfigs] A map of the assessment name and the assessment config.
  /// [profileId] Resource ID of the security profile.
  const SecurityProfileV2Args({
    this.deletionPolicy,
    this.description,
    required this.orgId,
    required this.profileAssessmentConfigs,
    required this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'orgId': orgId,
      'profileAssessmentConfigs': pulumi.Input.mapInputValue<List<SecurityProfileV2ProfileAssessmentConfig>, List<Map<String, dynamic>>>(profileAssessmentConfigs, (value) => pulumi.Input.encodeList<SecurityProfileV2ProfileAssessmentConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profileId': profileId,
    };
  }

  factory SecurityProfileV2Args.fromMap(Map<String, dynamic> map) {
    return SecurityProfileV2Args(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      profileAssessmentConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityProfileV2ProfileAssessmentConfig>(map['profileAssessmentConfigs']!, (value) => SecurityProfileV2ProfileAssessmentConfig.fromMap((value as Map).cast<String, dynamic>()))),
      profileId: pulumi.Input.fromValue(map['profileId'] as String),
    );
  }
}
