// ignore_for_file: unused_element, unnecessary_cast


class ActivityLogAlertCriteriaServiceHealth {
  /// Events this alert will monitor Possible values are `Incident`, `Maintenance`, `Informational`, `ActionRequired` and `Security`.
  final List<String>? events;
  /// Locations this alert will monitor. For example, `West Europe`.
  final List<String>? locations;
  /// Services this alert will monitor. For example, `Activity Logs & Alerts`, `Action Groups`. Defaults to all Services.
  final List<String>? services;

  /// Creates a new [ActivityLogAlertCriteriaServiceHealth].
  /// [events] Events this alert will monitor Possible values are `Incident`, `Maintenance`, `Informational`, `ActionRequired` and `Security`.
  /// [locations] Locations this alert will monitor. For example, `West Europe`.
  /// [services] Services this alert will monitor. For example, `Activity Logs & Alerts`, `Action Groups`. Defaults to all Services.
  ActivityLogAlertCriteriaServiceHealth({
    this.events,
    this.locations,
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'events': ?events,
      'locations': ?locations,
      'services': ?services,
    };
  }

  factory ActivityLogAlertCriteriaServiceHealth.fromMap(Map<String, dynamic> map) {
    return ActivityLogAlertCriteriaServiceHealth(
      events: map['events'] == null ? null : (map['events'] as List).cast<String>(),
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      services: map['services'] == null ? null : (map['services'] as List).cast<String>(),
    );
  }
}

