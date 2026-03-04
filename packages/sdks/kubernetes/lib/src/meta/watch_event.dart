// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Event represents a single event to a watched resource.
class WatchEvent {
  /// Object is:
  /// * If Type is Added or Modified: the new state of the object.
  /// * If Type is Deleted: the state of the object immediately before deletion.
  /// * If Type is Error: *Status is recommended; other types may make sense
  /// depending on context.
  final pulumi.Input<dynamic> object_;
  final pulumi.Input<String> type;

  /// Creates a new [WatchEvent].
  /// [object_] Object is:
  /// [type] Required.
  WatchEvent({required this.object_, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'object': object_, 'type': type};
  }

  factory WatchEvent.fromMap(Map<String, dynamic> map) {
    return WatchEvent(
      object_: pulumi.Input.fromValue(map['object']),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
