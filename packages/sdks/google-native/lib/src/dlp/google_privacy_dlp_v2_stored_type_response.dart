// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to a StoredInfoType to use with scanning.
class GooglePrivacyDlpV2StoredTypeResponse {
  /// Timestamp indicating when the version of the `StoredInfoType` used for inspection was created. Output-only field, populated by the system.
  final pulumi.Input<String> createTime;
  /// Resource name of the requested `StoredInfoType`, for example `organizations/433245324/storedInfoTypes/432452342` or `projects/project-id/storedInfoTypes/432452342`.
  final pulumi.Input<String> name;

  /// Creates a new [GooglePrivacyDlpV2StoredTypeResponse].
  /// [createTime] Timestamp indicating when the version of the `StoredInfoType` used for inspection was created. Output-only field, populated by the system.
  /// [name] Resource name of the requested `StoredInfoType`, for example `organizations/433245324/storedInfoTypes/432452342` or `projects/project-id/storedInfoTypes/432452342`.
  GooglePrivacyDlpV2StoredTypeResponse({
    required this.createTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'name': name,
    };
  }

  factory GooglePrivacyDlpV2StoredTypeResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StoredTypeResponse(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

