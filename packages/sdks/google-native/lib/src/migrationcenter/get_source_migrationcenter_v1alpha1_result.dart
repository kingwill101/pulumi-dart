// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSource.
class GetSourceMigrationcenterV1alpha1Result {
  /// The timestamp when the source was created.
  final String? createTime;
  /// Free-text description.
  final String? description;
  /// User-friendly display name.
  final String? displayName;
  /// The number of frames that were reported by the source and contained errors.
  final int? errorFrameCount;
  /// If `true`, the source is managed by other service(s).
  final bool? isManaged;
  /// The full name of the source.
  final String? name;
  /// Number of frames that are still being processed.
  final int? pendingFrameCount;
  /// The information confidence of the source. The higher the value, the higher the confidence.
  final int? priority;
  /// The state of the source.
  final String? state;
  /// Data source type.
  final String? type;
  /// The timestamp when the source was last updated.
  final String? updateTime;

  /// Creates a new [GetSourceMigrationcenterV1alpha1Result].
  /// [createTime] The timestamp when the source was created.
  /// [description] Free-text description.
  /// [displayName] User-friendly display name.
  /// [errorFrameCount] The number of frames that were reported by the source and contained errors.
  /// [isManaged] If `true`, the source is managed by other service(s).
  /// [name] The full name of the source.
  /// [pendingFrameCount] Number of frames that are still being processed.
  /// [priority] The information confidence of the source. The higher the value, the higher the confidence.
  /// [state] The state of the source.
  /// [type] Data source type.
  /// [updateTime] The timestamp when the source was last updated.
  const GetSourceMigrationcenterV1alpha1Result({
    this.createTime,
    this.description,
    this.displayName,
    this.errorFrameCount,
    this.isManaged,
    this.name,
    this.pendingFrameCount,
    this.priority,
    this.state,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'errorFrameCount': ?errorFrameCount,
      'isManaged': ?isManaged,
      'name': ?name,
      'pendingFrameCount': ?pendingFrameCount,
      'priority': ?priority,
      'state': ?state,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetSourceMigrationcenterV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetSourceMigrationcenterV1alpha1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorFrameCount: (() { final guardedValue = map['errorFrameCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      isManaged: (() { final guardedValue = map['isManaged']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pendingFrameCount: (() { final guardedValue = map['pendingFrameCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
