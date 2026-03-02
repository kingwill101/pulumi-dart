// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_v2_profile_assessment_config.dart';

/// Input properties used for looking up and filtering SecurityProfileV2 resources.
class SecurityProfileV2State {
  /// The timestamp at which this profile was created.
  final pulumi.Input<String>? createTime;
  /// Description of the security profile.
  final pulumi.Input<String>? description;
  /// Name of the security profile v2 resource,
  /// in the format `organizations/{{org_name}}/securityProfilesV2/{{profile_id}}`.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee Security Profile V2,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;
  /// A map of the assessment name and the assessment config.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileV2ProfileAssessmentConfig>>? profileAssessmentConfigs;
  /// Resource ID of the security profile.
  final pulumi.Input<String>? profileId;
  /// The timestamp at which this profile was most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SecurityProfileV2State].
  /// [createTime] The timestamp at which this profile was created.
  /// [description] Description of the security profile.
  /// [name] Name of the security profile v2 resource,
  /// [orgId] The Apigee Organization associated with the Apigee Security Profile V2,
  /// [profileAssessmentConfigs] A map of the assessment name and the assessment config.
  /// [profileId] Resource ID of the security profile.
  /// [updateTime] The timestamp at which this profile was most recently updated.
  SecurityProfileV2State({
    this.createTime,
    this.description,
    this.name,
    this.orgId,
    this.profileAssessmentConfigs,
    this.profileId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'orgId': ?orgId,
      'profileAssessmentConfigs': ?pulumi.Input.mapOptionalInputValue<List<SecurityProfileV2ProfileAssessmentConfig>, List<Map<String, dynamic>>>(profileAssessmentConfigs, (value) => pulumi.Input.encodeList<SecurityProfileV2ProfileAssessmentConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profileId': ?profileId,
      'updateTime': ?updateTime,
    };
  }

  factory SecurityProfileV2State.fromMap(Map<String, dynamic> map) {
    return SecurityProfileV2State(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId']! as String).input(),
      profileAssessmentConfigs: map['profileAssessmentConfigs'] == null ? null : (pulumi.Input.decodeList<SecurityProfileV2ProfileAssessmentConfig>(map['profileAssessmentConfigs']!, (value) => SecurityProfileV2ProfileAssessmentConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      profileId: map['profileId'] == null ? null : (map['profileId']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

