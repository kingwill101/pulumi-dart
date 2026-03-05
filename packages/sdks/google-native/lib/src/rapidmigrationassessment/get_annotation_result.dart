// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAnnotation.
class GetAnnotationResult {
  /// Create time stamp.
  final String createTime;

  /// Labels as key value pairs.
  final Map<String, String> labels;

  /// name of resource.
  final String name;

  /// Type of an annotation.
  final String type;

  /// Update time stamp.
  final String updateTime;

  /// Creates a new [GetAnnotationResult].
  /// [createTime] Create time stamp.
  /// [labels] Labels as key value pairs.
  /// [name] name of resource.
  /// [type] Type of an annotation.
  /// [updateTime] Update time stamp.
  GetAnnotationResult({
    required this.createTime,
    required this.labels,
    required this.name,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'labels': labels,
      'name': name,
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetAnnotationResult.fromMap(Map<String, dynamic> map) {
    return GetAnnotationResult(
      createTime: map['createTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
