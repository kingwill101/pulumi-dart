// ignore_for_file: unused_element, unnecessary_cast

import 'threat_prevention_profile_response.dart';

/// Result data returned by getSecurityProfile.
class GetSecurityProfileResult {
  /// Resource creation timestamp.
  final String? createTime;
  /// Optional. An optional description of the profile. Max length 512 characters.
  final String? description;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// Optional. Labels as key value pairs.
  final Map<String, String>? labels;
  /// Immutable. Identifier. Name of the SecurityProfile resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfiles/{security_profile}`.
  final String? name;
  /// The threat prevention configuration for the SecurityProfile.
  final ThreatPreventionProfileResponse? threatPreventionProfile;
  /// Immutable. The single ProfileType that the SecurityProfile resource configures.
  final String? type;
  /// Last resource update timestamp.
  final String? updateTime;

  /// Creates a new [GetSecurityProfileResult].
  /// [createTime] Resource creation timestamp.
  /// [description] Optional. An optional description of the profile. Max length 512 characters.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Optional. Labels as key value pairs.
  /// [name] Immutable. Identifier. Name of the SecurityProfile resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfiles/{security_profile}`.
  /// [threatPreventionProfile] The threat prevention configuration for the SecurityProfile.
  /// [type] Immutable. The single ProfileType that the SecurityProfile resource configures.
  /// [updateTime] Last resource update timestamp.
  const GetSecurityProfileResult({
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.threatPreventionProfile,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'threatPreventionProfile': ?threatPreventionProfile?.toMap(),
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetSecurityProfileResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      threatPreventionProfile: (() { final guardedValue = map['threatPreventionProfile']; if (guardedValue == null) return null; return ThreatPreventionProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
