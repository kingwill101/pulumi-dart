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
  const SecurityProfileV2State({
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileAssessmentConfigs: (() { final guardedValue = map['profileAssessmentConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityProfileV2ProfileAssessmentConfig>(guardedValue, (value) => SecurityProfileV2ProfileAssessmentConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

