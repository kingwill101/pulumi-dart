// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAnnotation.
class GetAnnotationResult {
  /// Create time stamp.
  final String? createTime;
  /// Labels as key value pairs.
  final Map<String, String>? labels;
  /// name of resource.
  final String? name;
  /// Type of an annotation.
  final String? type;
  /// Update time stamp.
  final String? updateTime;

  /// Creates a new [GetAnnotationResult].
  /// [createTime] Create time stamp.
  /// [labels] Labels as key value pairs.
  /// [name] name of resource.
  /// [type] Type of an annotation.
  /// [updateTime] Update time stamp.
  const GetAnnotationResult({
    this.createTime,
    this.labels,
    this.name,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'labels': ?labels,
      'name': ?name,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetAnnotationResult.fromMap(Map<String, dynamic> map) {
    return GetAnnotationResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
