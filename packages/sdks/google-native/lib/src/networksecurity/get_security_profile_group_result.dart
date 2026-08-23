// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSecurityProfileGroup.
class GetSecurityProfileGroupResult {
  /// Resource creation timestamp.
  final String createTime;
  /// Optional. An optional description of the profile group. Max length 2048 characters.
  final String description;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;
  /// Optional. Labels as key value pairs.
  final Map<String, String> labels;
  /// Immutable. Identifier. Name of the SecurityProfileGroup resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfileGroups/{security_profile_group}`.
  final String name;
  /// Optional. Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  final String threatPreventionProfile;
  /// Last resource update timestamp.
  final String updateTime;

  /// Creates a new [GetSecurityProfileGroupResult].
  /// [createTime] Resource creation timestamp.
  /// [description] Optional. An optional description of the profile group. Max length 2048 characters.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Optional. Labels as key value pairs.
  /// [name] Immutable. Identifier. Name of the SecurityProfileGroup resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfileGroups/{security_profile_group}`.
  /// [threatPreventionProfile] Optional. Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  /// [updateTime] Last resource update timestamp.
  const GetSecurityProfileGroupResult({
    required this.createTime,
    required this.description,
    required this.etag,
    required this.labels,
    required this.name,
    required this.threatPreventionProfile,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'etag': etag,
      'labels': labels,
      'name': name,
      'threatPreventionProfile': threatPreventionProfile,
      'updateTime': updateTime,
    };
  }

  factory GetSecurityProfileGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileGroupResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      threatPreventionProfile: map['threatPreventionProfile'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
