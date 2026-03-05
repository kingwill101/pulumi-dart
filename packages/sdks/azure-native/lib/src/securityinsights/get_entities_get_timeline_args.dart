// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_entities_get_timeline_args_doc}
/// Arguments for getEntitiesGetTimeline.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_entities_get_timeline_args_doc}
class GetEntitiesGetTimelineArgs {
  /// The end timeline date, so the results returned are before this date.
  final pulumi.Input<String> endTime;
  /// entity ID
  final pulumi.Input<String> entityId;
  /// Array of timeline Item kinds.
  final pulumi.Input<List<String>>? kinds;
  /// The number of bucket for timeline queries aggregation.
  final pulumi.Input<int>? numberOfBucket;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The start timeline date, so the results returned are after this date.
  final pulumi.Input<String> startTime;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetEntitiesGetTimelineArgs].
  /// [endTime] The end timeline date, so the results returned are before this date.
  /// [entityId] entity ID
  /// [kinds] Array of timeline Item kinds.
  /// [numberOfBucket] The number of bucket for timeline queries aggregation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [startTime] The start timeline date, so the results returned are after this date.
  /// [workspaceName] The name of the workspace.
  GetEntitiesGetTimelineArgs({
    required this.endTime,
    required this.entityId,
    this.kinds,
    this.numberOfBucket,
    required this.resourceGroupName,
    required this.startTime,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'entityId': entityId,
      'kinds': ?kinds,
      'numberOfBucket': ?numberOfBucket,
      'resourceGroupName': resourceGroupName,
      'startTime': startTime,
      'workspaceName': workspaceName,
    };
  }

  factory GetEntitiesGetTimelineArgs.fromMap(Map<String, dynamic> map) {
    return GetEntitiesGetTimelineArgs(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      entityId: pulumi.Input.fromValue(map['entityId'] as String),
      kinds: (() { final guardedValue = map['kinds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      numberOfBucket: (() { final guardedValue = map['numberOfBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

