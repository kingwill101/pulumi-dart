// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSource.
class GetSourceMigrationcenterV1alpha1Result {
  /// The timestamp when the source was created.
  final String createTime;
  /// Free-text description.
  final String description;
  /// User-friendly display name.
  final String displayName;
  /// The number of frames that were reported by the source and contained errors.
  final int errorFrameCount;
  /// If `true`, the source is managed by other service(s).
  final bool isManaged;
  /// The full name of the source.
  final String name;
  /// Number of frames that are still being processed.
  final int pendingFrameCount;
  /// The information confidence of the source. The higher the value, the higher the confidence.
  final int priority;
  /// The state of the source.
  final String state;
  /// Data source type.
  final String type;
  /// The timestamp when the source was last updated.
  final String updateTime;

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
  GetSourceMigrationcenterV1alpha1Result({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.errorFrameCount,
    required this.isManaged,
    required this.name,
    required this.pendingFrameCount,
    required this.priority,
    required this.state,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'errorFrameCount': errorFrameCount,
      'isManaged': isManaged,
      'name': name,
      'pendingFrameCount': pendingFrameCount,
      'priority': priority,
      'state': state,
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetSourceMigrationcenterV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetSourceMigrationcenterV1alpha1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      errorFrameCount: map['errorFrameCount'] as int,
      isManaged: map['isManaged'] as bool,
      name: map['name'] as String,
      pendingFrameCount: map['pendingFrameCount'] as int,
      priority: map['priority'] as int,
      state: map['state'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

