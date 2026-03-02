// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Event grouping settings property bag.
class EventGroupingSettings {
  /// The event grouping aggregation kinds
  final pulumi.Input<String>? aggregationKind;

  /// Creates a new [EventGroupingSettings].
  /// [aggregationKind] The event grouping aggregation kinds
  EventGroupingSettings({
    this.aggregationKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationKind': ?aggregationKind,
    };
  }

  factory EventGroupingSettings.fromMap(Map<String, dynamic> map) {
    return EventGroupingSettings(
      aggregationKind: map['aggregationKind'] == null ? null : (map['aggregationKind']! as String).input(),
    );
  }
}

