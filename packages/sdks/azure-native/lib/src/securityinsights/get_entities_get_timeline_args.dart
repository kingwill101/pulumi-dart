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
    required pulumi.Output<String> endTime,
    required pulumi.Output<String> entityId,
    pulumi.Output<List<String>>? kinds,
    pulumi.Output<int>? numberOfBucket,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> startTime,
    required pulumi.Output<String> workspaceName,
  }) :
      endTime = pulumi.Input.asInput<String>(endTime),
      entityId = pulumi.Input.asInput<String>(entityId),
      kinds = pulumi.Input.asOptionalInput<List<String>>(kinds),
      numberOfBucket = pulumi.Input.asOptionalInput<int>(numberOfBucket),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      startTime = pulumi.Input.asInput<String>(startTime),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      endTime: pulumi.Output.create<String>(map['endTime'] as String),
      entityId: pulumi.Output.create<String>(map['entityId'] as String),
      kinds: map['kinds'] == null ? null : pulumi.Output.create<List<String>>((map['kinds'] as List).cast<String>()),
      numberOfBucket: map['numberOfBucket'] == null ? null : pulumi.Output.create<int>(map['numberOfBucket'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      startTime: pulumi.Output.create<String>(map['startTime'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

