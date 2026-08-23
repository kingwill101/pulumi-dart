// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Event grouping settings property bag.
class EventGroupingSettingsResponse {
  /// The event grouping aggregation kinds
  final pulumi.Input<String>? aggregationKind;

  /// Creates a new [EventGroupingSettingsResponse].
  /// [aggregationKind] The event grouping aggregation kinds
  const EventGroupingSettingsResponse({
    this.aggregationKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationKind': ?aggregationKind,
    };
  }

  factory EventGroupingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return EventGroupingSettingsResponse(
      aggregationKind: (() { final guardedValue = map['aggregationKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
