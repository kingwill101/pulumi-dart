// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of the latest move operation performed on the Azure Resource
class VaultPropertiesResponseMoveDetails {
  /// End Time of the Resource Move Operation
  final pulumi.Input<String> completionTimeUtc;
  /// OperationId of the Resource Move Operation
  final pulumi.Input<String> operationId;
  /// Source Resource of the Resource Move Operation
  final pulumi.Input<String> sourceResourceId;
  /// Start Time of the Resource Move Operation
  final pulumi.Input<String> startTimeUtc;
  /// Target Resource of the Resource Move Operation
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [VaultPropertiesResponseMoveDetails].
  /// [completionTimeUtc] End Time of the Resource Move Operation
  /// [operationId] OperationId of the Resource Move Operation
  /// [sourceResourceId] Source Resource of the Resource Move Operation
  /// [startTimeUtc] Start Time of the Resource Move Operation
  /// [targetResourceId] Target Resource of the Resource Move Operation
  const VaultPropertiesResponseMoveDetails({
    required this.completionTimeUtc,
    required this.operationId,
    required this.sourceResourceId,
    required this.startTimeUtc,
    required this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionTimeUtc': completionTimeUtc,
      'operationId': operationId,
      'sourceResourceId': sourceResourceId,
      'startTimeUtc': startTimeUtc,
      'targetResourceId': targetResourceId,
    };
  }

  factory VaultPropertiesResponseMoveDetails.fromMap(Map<String, dynamic> map) {
    return VaultPropertiesResponseMoveDetails(
      completionTimeUtc: pulumi.Input.fromValue(map['completionTimeUtc'] as String),
      operationId: pulumi.Input.fromValue(map['operationId'] as String),
      sourceResourceId: pulumi.Input.fromValue(map['sourceResourceId'] as String),
      startTimeUtc: pulumi.Input.fromValue(map['startTimeUtc'] as String),
      targetResourceId: pulumi.Input.fromValue(map['targetResourceId'] as String),
    );
  }
}
