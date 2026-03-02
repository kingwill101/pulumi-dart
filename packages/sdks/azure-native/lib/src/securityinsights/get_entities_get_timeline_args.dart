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
      endTime: (map['endTime'] as String).input(),
      entityId: (map['entityId'] as String).input(),
      kinds: map['kinds'] == null ? null : ((map['kinds'] as List).cast<String>()).input(),
      numberOfBucket: map['numberOfBucket'] == null ? null : (map['numberOfBucket'] as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

