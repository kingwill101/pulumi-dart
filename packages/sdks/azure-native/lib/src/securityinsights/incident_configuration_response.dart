// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grouping_configuration_response.dart';

/// Incident Configuration property bag.
class IncidentConfigurationResponse {
  /// Create incidents from alerts triggered by this analytics rule
  final pulumi.Input<bool> createIncident;
  /// Set how the alerts that are triggered by this analytics rule, are grouped into incidents
  final pulumi.Input<GroupingConfigurationResponse>? groupingConfiguration;

  /// Creates a new [IncidentConfigurationResponse].
  /// [createIncident] Create incidents from alerts triggered by this analytics rule
  /// [groupingConfiguration] Set how the alerts that are triggered by this analytics rule, are grouped into incidents
  const IncidentConfigurationResponse({
    required this.createIncident,
    this.groupingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIncident': createIncident,
      'groupingConfiguration': ?pulumi.Input.mapOptionalInputValue<GroupingConfigurationResponse, Map<String, dynamic>>(groupingConfiguration, (value) => value.toMap()),
    };
  }

  factory IncidentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return IncidentConfigurationResponse(
      createIncident: pulumi.Input.fromValue(map['createIncident'] as bool),
      groupingConfiguration: (() { final guardedValue = map['groupingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupingConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

