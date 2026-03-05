// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_nrt_incident_grouping.dart';

class AlertRuleNrtIncident {
  /// Whether to create an incident from alerts triggered by this Sentinel NRT Alert Rule?
  final pulumi.Input<bool> createIncidentEnabled;
  /// A `grouping` block as defined below.
  final pulumi.Input<AlertRuleNrtIncidentGrouping> grouping;

  /// Creates a new [AlertRuleNrtIncident].
  /// [createIncidentEnabled] Whether to create an incident from alerts triggered by this Sentinel NRT Alert Rule?
  /// [grouping] A `grouping` block as defined below.
  AlertRuleNrtIncident({
    required this.createIncidentEnabled,
    required this.grouping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIncidentEnabled': createIncidentEnabled,
      'grouping': pulumi.Input.mapInputValue<AlertRuleNrtIncidentGrouping, Map<String, dynamic>>(grouping, (value) => value.toMap()),
    };
  }

  factory AlertRuleNrtIncident.fromMap(Map<String, dynamic> map) {
    return AlertRuleNrtIncident(
      createIncidentEnabled: pulumi.Input.fromValue(map['createIncidentEnabled'] as bool),
      grouping: pulumi.Input.fromValue(AlertRuleNrtIncidentGrouping.fromMap((map['grouping']! as Map).cast<String, dynamic>())),
    );
  }
}

