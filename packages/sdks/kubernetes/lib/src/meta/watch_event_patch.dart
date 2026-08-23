// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Event represents a single event to a watched resource.
class WatchEventPatch {
  /// Object is:
  /// * If Type is Added or Modified: the new state of the object.
  /// * If Type is Deleted: the state of the object immediately before deletion.
  /// * If Type is Error: *Status is recommended; other types may make sense
  /// depending on context.
  final pulumi.Input<dynamic>? object_;
  final pulumi.Input<String>? type;

  /// Creates a new [WatchEventPatch].
  /// [object_] Object is:
  /// [type] Optional.
  const WatchEventPatch({
    this.object_,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': ?object_,
      'type': ?type,
    };
  }

  factory WatchEventPatch.fromMap(Map<String, dynamic> map) {
    return WatchEventPatch(
      object_: (() { final guardedValue = map['object']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
