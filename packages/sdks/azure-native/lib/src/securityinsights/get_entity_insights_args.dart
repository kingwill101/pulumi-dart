// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_entity_insights_args_doc}
/// Arguments for getEntityInsights.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_entity_insights_args_doc}
class GetEntityInsightsArgs {
  /// Indicates if query time range should be extended with default time range of the query. Default value is false
  final pulumi.Input<bool>? addDefaultExtendedTimeRange;
  /// The end timeline date, so the results returned are before this date.
  final pulumi.Input<String> endTime;
  /// entity ID
  final pulumi.Input<String> entityId;
  /// List of Insights Query Id. If empty, default value is all insights of this entity
  final pulumi.Input<List<String>>? insightQueryIds;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The start timeline date, so the results returned are after this date.
  final pulumi.Input<String> startTime;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetEntityInsightsArgs].
  /// [addDefaultExtendedTimeRange] Indicates if query time range should be extended with default time range of the query. Default value is false
  /// [endTime] The end timeline date, so the results returned are before this date.
  /// [entityId] entity ID
  /// [insightQueryIds] List of Insights Query Id. If empty, default value is all insights of this entity
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [startTime] The start timeline date, so the results returned are after this date.
  /// [workspaceName] The name of the workspace.
  const GetEntityInsightsArgs({
    this.addDefaultExtendedTimeRange,
    required this.endTime,
    required this.entityId,
    this.insightQueryIds,
    required this.resourceGroupName,
    required this.startTime,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addDefaultExtendedTimeRange': ?addDefaultExtendedTimeRange,
      'endTime': endTime,
      'entityId': entityId,
      'insightQueryIds': ?insightQueryIds,
      'resourceGroupName': resourceGroupName,
      'startTime': startTime,
      'workspaceName': workspaceName,
    };
  }

  factory GetEntityInsightsArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityInsightsArgs(
      addDefaultExtendedTimeRange: (() { final guardedValue = map['addDefaultExtendedTimeRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      entityId: pulumi.Input.fromValue(map['entityId'] as String),
      insightQueryIds: (() { final guardedValue = map['insightQueryIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

