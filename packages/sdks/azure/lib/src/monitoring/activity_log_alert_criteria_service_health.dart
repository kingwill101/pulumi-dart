// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActivityLogAlertCriteriaServiceHealth {
  /// Events this alert will monitor Possible values are `Incident`, `Maintenance`, `Informational`, `ActionRequired` and `Security`.
  final pulumi.Input<List<String>?>? events;
  /// Locations this alert will monitor. For example, `West Europe`.
  final pulumi.Input<List<String>?>? locations;
  /// Services this alert will monitor. For example, `Activity Logs & Alerts`, `Action Groups`. Defaults to all Services.
  final pulumi.Input<List<String>?>? services;

  /// Creates a new [ActivityLogAlertCriteriaServiceHealth].
  /// [events] Events this alert will monitor Possible values are `Incident`, `Maintenance`, `Informational`, `ActionRequired` and `Security`.
  /// [locations] Locations this alert will monitor. For example, `West Europe`.
  /// [services] Services this alert will monitor. For example, `Activity Logs & Alerts`, `Action Groups`. Defaults to all Services.
  const ActivityLogAlertCriteriaServiceHealth({
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
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
