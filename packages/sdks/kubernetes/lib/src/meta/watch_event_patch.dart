// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Event represents a single event to a watched resource.
class WatchEventPatch {
  /// Object is:
  /// * If Type is Added or Modified: the new state of the object.
  /// * If Type is Deleted: the state of the object immediately before deletion.
  /// * If Type is Error: *Status is recommended; other types may make sense
  /// depending on context.
  final pulumi.Input<dynamic>? object;
  final pulumi.Input<String>? type;

  /// Creates a new [WatchEventPatch].
  /// [object] Object is:
  /// [type] Optional.
  WatchEventPatch({
    this.object,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': ?object,
      'type': ?type,
    };
  }

  factory WatchEventPatch.fromMap(Map<String, dynamic> map) {
    return WatchEventPatch(
      object: map['object'] == null ? null : (map['object']).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

