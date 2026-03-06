// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_scheduled_incident_grouping.dart';

class AlertRuleScheduledIncident {
  /// Whether to create an incident from alerts triggered by this Sentinel Scheduled Alert Rule?
  final pulumi.Input<bool> createIncidentEnabled;
  /// A `grouping` block as defined below.
  final pulumi.Input<AlertRuleScheduledIncidentGrouping> grouping;

  /// Creates a new [AlertRuleScheduledIncident].
  /// [createIncidentEnabled] Whether to create an incident from alerts triggered by this Sentinel Scheduled Alert Rule?
  /// [grouping] A `grouping` block as defined below.
  const AlertRuleScheduledIncident({
    required this.createIncidentEnabled,
    required this.grouping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIncidentEnabled': createIncidentEnabled,
      'grouping': pulumi.Input.mapInputValue<AlertRuleScheduledIncidentGrouping, Map<String, dynamic>>(grouping, (value) => value.toMap()),
    };
  }

  factory AlertRuleScheduledIncident.fromMap(Map<String, dynamic> map) {
    return AlertRuleScheduledIncident(
      createIncidentEnabled: pulumi.Input.fromValue(map['createIncidentEnabled'] as bool),
      grouping: pulumi.Input.fromValue(AlertRuleScheduledIncidentGrouping.fromMap((map['grouping']! as Map).cast<String, dynamic>())),
    );
  }
}

