// ignore_for_file: unused_element, unnecessary_cast


/// The details of the latest move operation performed on the Azure Resource
class VaultPropertiesResponseMoveDetails {
  /// End Time of the Resource Move Operation
  final String completionTimeUtc;
  /// OperationId of the Resource Move Operation
  final String operationId;
  /// Source Resource of the Resource Move Operation
  final String sourceResourceId;
  /// Start Time of the Resource Move Operation
  final String startTimeUtc;
  /// Target Resource of the Resource Move Operation
  final String targetResourceId;

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
      completionTimeUtc: map['completionTimeUtc'] as String,
      operationId: map['operationId'] as String,
      sourceResourceId: map['sourceResourceId'] as String,
      startTimeUtc: map['startTimeUtc'] as String,
      targetResourceId: map['targetResourceId'] as String,
    );
  }
}

