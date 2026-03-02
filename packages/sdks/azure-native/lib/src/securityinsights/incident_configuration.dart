// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grouping_configuration.dart';

/// Incident Configuration property bag.
class IncidentConfiguration {
  /// Create incidents from alerts triggered by this analytics rule
  final pulumi.Input<bool> createIncident;
  /// Set how the alerts that are triggered by this analytics rule, are grouped into incidents
  final pulumi.Input<GroupingConfiguration>? groupingConfiguration;

  /// Creates a new [IncidentConfiguration].
  /// [createIncident] Create incidents from alerts triggered by this analytics rule
  /// [groupingConfiguration] Set how the alerts that are triggered by this analytics rule, are grouped into incidents
  IncidentConfiguration({
    required this.createIncident,
    this.groupingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIncident': createIncident,
      'groupingConfiguration': ?pulumi.Input.mapOptionalInputValue<GroupingConfiguration, Map<String, dynamic>>(groupingConfiguration, (value) => value.toMap()),
    };
  }

  factory IncidentConfiguration.fromMap(Map<String, dynamic> map) {
    return IncidentConfiguration(
      createIncident: (map['createIncident'] as bool).input(),
      groupingConfiguration: map['groupingConfiguration'] == null ? null : (GroupingConfiguration.fromMap((map['groupingConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

