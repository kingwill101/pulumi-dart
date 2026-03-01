// ignore_for_file: unused_element, unnecessary_cast

import 'alert_rule_scheduled_incident_grouping.dart';

class AlertRuleScheduledIncident {
  /// Whether to create an incident from alerts triggered by this Sentinel Scheduled Alert Rule?
  final bool createIncidentEnabled;
  /// A `grouping` block as defined below.
  final AlertRuleScheduledIncidentGrouping grouping;

  /// Creates a new [AlertRuleScheduledIncident].
  /// [createIncidentEnabled] Whether to create an incident from alerts triggered by this Sentinel Scheduled Alert Rule?
  /// [grouping] A `grouping` block as defined below.
  AlertRuleScheduledIncident({
    required this.createIncidentEnabled,
    required this.grouping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIncidentEnabled': createIncidentEnabled,
      'grouping': grouping.toMap(),
    };
  }

  factory AlertRuleScheduledIncident.fromMap(Map<String, dynamic> map) {
    return AlertRuleScheduledIncident(
      createIncidentEnabled: map['createIncidentEnabled'] as bool,
      grouping: AlertRuleScheduledIncidentGrouping.fromMap((map['grouping'] as Map).cast<String, dynamic>()),
    );
  }
}

