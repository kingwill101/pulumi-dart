// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseUserSettingAcl {
  final String id;
  final String permission;
  final String topic;

  /// Creates a new [GetDatabaseUserSettingAcl].
  /// [id] Required.
  /// [permission] Required.
  /// [topic] Required.
  GetDatabaseUserSettingAcl({
    required this.id,
    required this.permission,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'permission': permission,
      'topic': topic,
    };
  }

  factory GetDatabaseUserSettingAcl.fromMap(Map<String, dynamic> map) {
    return GetDatabaseUserSettingAcl(
      id: map['id'] as String,
      permission: map['permission'] as String,
      topic: map['topic'] as String,
    );
  }
}

