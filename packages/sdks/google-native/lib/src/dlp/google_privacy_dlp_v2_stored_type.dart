// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to a StoredInfoType to use with scanning.
class GooglePrivacyDlpV2StoredType {
  /// Timestamp indicating when the version of the `StoredInfoType` used for inspection was created. Output-only field, populated by the system.
  final pulumi.Input<String>? createTime;
  /// Resource name of the requested `StoredInfoType`, for example `organizations/433245324/storedInfoTypes/432452342` or `projects/project-id/storedInfoTypes/432452342`.
  final pulumi.Input<String>? name;

  /// Creates a new [GooglePrivacyDlpV2StoredType].
  /// [createTime] Timestamp indicating when the version of the `StoredInfoType` used for inspection was created. Output-only field, populated by the system.
  /// [name] Resource name of the requested `StoredInfoType`, for example `organizations/433245324/storedInfoTypes/432452342` or `projects/project-id/storedInfoTypes/432452342`.
  const GooglePrivacyDlpV2StoredType({
    this.createTime,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'name': ?name,
    };
  }

  factory GooglePrivacyDlpV2StoredType.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StoredType(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

