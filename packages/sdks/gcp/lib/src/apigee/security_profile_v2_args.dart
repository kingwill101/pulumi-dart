// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_v2_profile_assessment_config.dart';

/// {@template pulumi_apigee_security_profile_v2_security_profile_v2_args_doc}
/// The set of arguments for SecurityProfileV2.
/// {@endtemplate}
/// {@macro pulumi_apigee_security_profile_v2_security_profile_v2_args_doc}
class SecurityProfileV2Args {
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
  /// [description] Description of the security profile.
  /// [orgId] The Apigee Organization associated with the Apigee Security Profile V2,
  /// [profileAssessmentConfigs] A map of the assessment name and the assessment config.
  /// [profileId] Resource ID of the security profile.
  SecurityProfileV2Args({
    this.description,
    required this.orgId,
    required this.profileAssessmentConfigs,
    required this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'orgId': orgId,
      'profileAssessmentConfigs': pulumi.Input.mapInputValue<List<SecurityProfileV2ProfileAssessmentConfig>, List<Map<String, dynamic>>>(profileAssessmentConfigs, (value) => pulumi.Input.encodeList<SecurityProfileV2ProfileAssessmentConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profileId': profileId,
    };
  }

  factory SecurityProfileV2Args.fromMap(Map<String, dynamic> map) {
    return SecurityProfileV2Args(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      orgId: (map['orgId'] as String).input(),
      profileAssessmentConfigs: (pulumi.Input.decodeList<SecurityProfileV2ProfileAssessmentConfig>(map['profileAssessmentConfigs'], (value) => SecurityProfileV2ProfileAssessmentConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      profileId: (map['profileId'] as String).input(),
    );
  }
}

