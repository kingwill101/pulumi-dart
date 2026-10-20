// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSession.
class GetSessionResult {
  /// The approximate timestamp when the session is last used. It is typically earlier than the actual last use time.
  final String? approximateLastUseTime;
  /// The timestamp when the session is created.
  final String? createTime;
  /// The database role which created this session.
  final String? creatorRole;
  /// The labels for the session. * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. * No more than 64 labels can be associated with a given session. See https://goo.gl/xmQnxf for more information on and examples of labels.
  final Map<String, String>? labels;
  /// The name of the session. This is always system-assigned.
  final String? name;

  /// Creates a new [GetSessionResult].
  /// [approximateLastUseTime] The approximate timestamp when the session is last used. It is typically earlier than the actual last use time.
  /// [createTime] The timestamp when the session is created.
  /// [creatorRole] The database role which created this session.
  /// [labels] The labels for the session. * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. * No more than 64 labels can be associated with a given session. See https://goo.gl/xmQnxf for more information on and examples of labels.
  /// [name] The name of the session. This is always system-assigned.
  const GetSessionResult({
    this.approximateLastUseTime,
    this.createTime,
    this.creatorRole,
    this.labels,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approximateLastUseTime': ?approximateLastUseTime,
      'createTime': ?createTime,
      'creatorRole': ?creatorRole,
      'labels': ?labels,
      'name': ?name,
    };
  }

  factory GetSessionResult.fromMap(Map<String, dynamic> map) {
    return GetSessionResult(
      approximateLastUseTime: (() { final guardedValue = map['approximateLastUseTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creatorRole: (() { final guardedValue = map['creatorRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
