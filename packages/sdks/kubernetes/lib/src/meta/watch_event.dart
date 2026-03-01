// ignore_for_file: unused_element, unnecessary_cast


/// Event represents a single event to a watched resource.
class WatchEvent {
  /// Object is:
  /// * If Type is Added or Modified: the new state of the object.
  /// * If Type is Deleted: the state of the object immediately before deletion.
  /// * If Type is Error: *Status is recommended; other types may make sense
  /// depending on context.
  final dynamic object;
  final String type;

  /// Creates a new [WatchEvent].
  /// [object] Object is:
  /// [type] Required.
  WatchEvent({
    required this.object,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object,
      'type': type,
    };
  }

  factory WatchEvent.fromMap(Map<String, dynamic> map) {
    return WatchEvent(
      object: map['object'],
      type: map['type'] as String,
    );
  }
}

