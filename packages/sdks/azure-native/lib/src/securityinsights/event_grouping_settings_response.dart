// ignore_for_file: unused_element, unnecessary_cast


/// Event grouping settings property bag.
class EventGroupingSettingsResponse {
  /// The event grouping aggregation kinds
  final String? aggregationKind;

  /// Creates a new [EventGroupingSettingsResponse].
  /// [aggregationKind] The event grouping aggregation kinds
  EventGroupingSettingsResponse({
    this.aggregationKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationKind': ?aggregationKind,
    };
  }

  factory EventGroupingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return EventGroupingSettingsResponse(
      aggregationKind: map['aggregationKind'] == null ? null : map['aggregationKind'] as String,
    );
  }
}

