// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Grouping configuration property bag.
class GroupingConfiguration {
  /// Grouping enabled
  final pulumi.Input<bool> enabled;
  /// A list of alert details to group by (when matchingMethod is Selected)
  final pulumi.Input<List<String>>? groupByAlertDetails;
  /// A list of custom details keys to group by (when matchingMethod is Selected). Only keys defined in the current alert rule may be used.
  final pulumi.Input<List<String>>? groupByCustomDetails;
  /// A list of entity types to group by (when matchingMethod is Selected). Only entities defined in the current alert rule may be used.
  final pulumi.Input<List<String>>? groupByEntities;
  /// Limit the group to alerts created within the lookback duration (in ISO 8601 duration format)
  final pulumi.Input<String> lookbackDuration;
  /// Grouping matching method. When method is Selected at least one of groupByEntities, groupByAlertDetails, groupByCustomDetails must be provided and not empty.
  final pulumi.Input<String> matchingMethod;
  /// Re-open closed matching incidents
  final pulumi.Input<bool> reopenClosedIncident;

  /// Creates a new [GroupingConfiguration].
  /// [enabled] Grouping enabled
  /// [groupByAlertDetails] A list of alert details to group by (when matchingMethod is Selected)
  /// [groupByCustomDetails] A list of custom details keys to group by (when matchingMethod is Selected). Only keys defined in the current alert rule may be used.
  /// [groupByEntities] A list of entity types to group by (when matchingMethod is Selected). Only entities defined in the current alert rule may be used.
  /// [lookbackDuration] Limit the group to alerts created within the lookback duration (in ISO 8601 duration format)
  /// [matchingMethod] Grouping matching method. When method is Selected at least one of groupByEntities, groupByAlertDetails, groupByCustomDetails must be provided and not empty.
  /// [reopenClosedIncident] Re-open closed matching incidents
  const GroupingConfiguration({
    required this.enabled,
    this.groupByAlertDetails,
    this.groupByCustomDetails,
    this.groupByEntities,
    required this.lookbackDuration,
    required this.matchingMethod,
    required this.reopenClosedIncident,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'groupByAlertDetails': ?groupByAlertDetails,
      'groupByCustomDetails': ?groupByCustomDetails,
      'groupByEntities': ?groupByEntities,
      'lookbackDuration': lookbackDuration,
      'matchingMethod': matchingMethod,
      'reopenClosedIncident': reopenClosedIncident,
    };
  }

  factory GroupingConfiguration.fromMap(Map<String, dynamic> map) {
    return GroupingConfiguration(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      groupByAlertDetails: (() { final guardedValue = map['groupByAlertDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      groupByCustomDetails: (() { final guardedValue = map['groupByCustomDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      groupByEntities: (() { final guardedValue = map['groupByEntities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lookbackDuration: pulumi.Input.fromValue(map['lookbackDuration'] as String),
      matchingMethod: pulumi.Input.fromValue(map['matchingMethod'] as String),
      reopenClosedIncident: pulumi.Input.fromValue(map['reopenClosedIncident'] as bool),
    );
  }
}

