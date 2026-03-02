// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Grouping configuration property bag.
class GroupingConfigurationResponse {
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

  /// Creates a new [GroupingConfigurationResponse].
  /// [enabled] Grouping enabled
  /// [groupByAlertDetails] A list of alert details to group by (when matchingMethod is Selected)
  /// [groupByCustomDetails] A list of custom details keys to group by (when matchingMethod is Selected). Only keys defined in the current alert rule may be used.
  /// [groupByEntities] A list of entity types to group by (when matchingMethod is Selected). Only entities defined in the current alert rule may be used.
  /// [lookbackDuration] Limit the group to alerts created within the lookback duration (in ISO 8601 duration format)
  /// [matchingMethod] Grouping matching method. When method is Selected at least one of groupByEntities, groupByAlertDetails, groupByCustomDetails must be provided and not empty.
  /// [reopenClosedIncident] Re-open closed matching incidents
  GroupingConfigurationResponse({
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

  factory GroupingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return GroupingConfigurationResponse(
      enabled: (map['enabled'] as bool).input(),
      groupByAlertDetails: map['groupByAlertDetails'] == null ? null : ((map['groupByAlertDetails'] as List).cast<String>()).input(),
      groupByCustomDetails: map['groupByCustomDetails'] == null ? null : ((map['groupByCustomDetails'] as List).cast<String>()).input(),
      groupByEntities: map['groupByEntities'] == null ? null : ((map['groupByEntities'] as List).cast<String>()).input(),
      lookbackDuration: (map['lookbackDuration'] as String).input(),
      matchingMethod: (map['matchingMethod'] as String).input(),
      reopenClosedIncident: (map['reopenClosedIncident'] as bool).input(),
    );
  }
}

