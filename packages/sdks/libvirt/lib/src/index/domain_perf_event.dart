// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainPerfEvent {
  /// Controls whether performance monitoring events are enabled.
  final pulumi.Input<String> enabled;

  /// Sets the name of the performance monitoring event.
  final pulumi.Input<String> name;

  /// Creates a new [DomainPerfEvent].
  /// [enabled] Controls whether performance monitoring events are enabled.
  /// [name] Sets the name of the performance monitoring event.
  DomainPerfEvent({required this.enabled, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'name': name};
  }

  factory DomainPerfEvent.fromMap(Map<String, dynamic> map) {
    return DomainPerfEvent(
      enabled: pulumi.Input.fromValue(map['enabled'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
