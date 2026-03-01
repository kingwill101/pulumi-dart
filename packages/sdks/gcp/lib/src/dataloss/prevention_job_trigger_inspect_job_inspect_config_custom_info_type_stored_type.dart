// ignore_for_file: unused_element, unnecessary_cast


class PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeStoredType {
  /// (Output)
  /// The creation timestamp of an inspectTemplate. Set by the server.
  final String? createTime;
  /// Resource name of the requested StoredInfoType, for example `organizations/433245324/storedInfoTypes/432452342`
  /// or `projects/project-id/storedInfoTypes/432452342`.
  final String name;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeStoredType].
  /// [createTime] (Output)
  /// [name] Resource name of the requested StoredInfoType, for example `organizations/433245324/storedInfoTypes/432452342`
  PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeStoredType({
    this.createTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'name': name,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeStoredType.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeStoredType(
      createTime: map['createTime'] == null ? null : map['createTime'] as String,
      name: map['name'] as String,
    );
  }
}

