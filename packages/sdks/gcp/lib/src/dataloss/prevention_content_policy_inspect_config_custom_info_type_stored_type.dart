// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInspectConfigCustomInfoTypeStoredType {
  /// (Output)
  /// Output only. Timestamp indicating when the version of the StoredInfoType used for inspection was created.
  final pulumi.Input<String?>? createTime;
  /// Resource name of the requested StoredInfoType, for example `organizations/433245324/storedInfoTypes/432452342`
  /// or `projects/project-id/storedInfoTypes/432452342`.
  final pulumi.Input<String> name;

  /// Creates a new [PreventionContentPolicyInspectConfigCustomInfoTypeStoredType].
  /// [createTime] (Output)
  /// [name] Resource name of the requested StoredInfoType, for example `organizations/433245324/storedInfoTypes/432452342`
  const PreventionContentPolicyInspectConfigCustomInfoTypeStoredType({
    this.createTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'name': name,
    };
  }

  factory PreventionContentPolicyInspectConfigCustomInfoTypeStoredType.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigCustomInfoTypeStoredType(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
