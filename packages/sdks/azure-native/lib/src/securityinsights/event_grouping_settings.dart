// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Event grouping settings property bag.
class EventGroupingSettings {
  /// The event grouping aggregation kinds
  final pulumi.Input<String>? aggregationKind;

  /// Creates a new [EventGroupingSettings].
  /// [aggregationKind] The event grouping aggregation kinds
  const EventGroupingSettings({
    this.aggregationKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationKind': ?aggregationKind,
    };
  }

  factory EventGroupingSettings.fromMap(Map<String, dynamic> map) {
    return EventGroupingSettings(
      aggregationKind: (() { final guardedValue = map['aggregationKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
