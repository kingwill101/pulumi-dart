// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerTumblingWindowTriggerDependency {
  /// The offset of the dependency trigger. Must be in Timespan format (±hh:mm:ss) and must be a negative offset for a self dependency.
  final pulumi.Input<String>? offset;
  /// The size of the dependency tumbling window. Must be in Timespan format (hh:mm:ss).
  final pulumi.Input<String>? size;
  /// The dependency trigger name. If not specified, it will use self dependency.
  final pulumi.Input<String>? triggerName;

  /// Creates a new [TriggerTumblingWindowTriggerDependency].
  /// [offset] The offset of the dependency trigger. Must be in Timespan format (±hh:mm:ss) and must be a negative offset for a self dependency.
  /// [size] The size of the dependency tumbling window. Must be in Timespan format (hh:mm:ss).
  /// [triggerName] The dependency trigger name. If not specified, it will use self dependency.
  TriggerTumblingWindowTriggerDependency({
    this.offset,
    this.size,
    this.triggerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offset': ?offset,
      'size': ?size,
      'triggerName': ?triggerName,
    };
  }

  factory TriggerTumblingWindowTriggerDependency.fromMap(Map<String, dynamic> map) {
    return TriggerTumblingWindowTriggerDependency(
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerName: (() { final guardedValue = map['triggerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

