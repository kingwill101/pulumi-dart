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
  VaultPropertiesResponseMoveDetails({
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
      completionTimeUtc: (map['completionTimeUtc'] as String).input(),
      operationId: (map['operationId'] as String).input(),
      sourceResourceId: (map['sourceResourceId'] as String).input(),
      startTimeUtc: (map['startTimeUtc'] as String).input(),
      targetResourceId: (map['targetResourceId'] as String).input(),
    );
  }
}

