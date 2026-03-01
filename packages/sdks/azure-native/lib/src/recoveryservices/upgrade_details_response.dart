// ignore_for_file: unused_element, unnecessary_cast


/// Details for upgrading vault.
class UpgradeDetailsResponse {
  /// UTC time at which the upgrade operation has ended.
  final String endTimeUtc;
  /// UTC time at which the upgrade operation status was last updated.
  final String lastUpdatedTimeUtc;
  /// Message to the user containing information about the upgrade operation.
  final String message;
  /// ID of the vault upgrade operation.
  final String operationId;
  /// Resource ID of the vault before the upgrade.
  final String previousResourceId;
  /// UTC time at which the upgrade operation has started.
  final String startTimeUtc;
  /// Status of the vault upgrade operation.
  final String status;
  /// The way the vault upgrade was triggered.
  final String triggerType;
  /// Resource ID of the upgraded vault.
  final String upgradedResourceId;

  /// Creates a new [UpgradeDetailsResponse].
  /// [endTimeUtc] UTC time at which the upgrade operation has ended.
  /// [lastUpdatedTimeUtc] UTC time at which the upgrade operation status was last updated.
  /// [message] Message to the user containing information about the upgrade operation.
  /// [operationId] ID of the vault upgrade operation.
  /// [previousResourceId] Resource ID of the vault before the upgrade.
  /// [startTimeUtc] UTC time at which the upgrade operation has started.
  /// [status] Status of the vault upgrade operation.
  /// [triggerType] The way the vault upgrade was triggered.
  /// [upgradedResourceId] Resource ID of the upgraded vault.
  UpgradeDetailsResponse({
    required this.endTimeUtc,
    required this.lastUpdatedTimeUtc,
    required this.message,
    required this.operationId,
    required this.previousResourceId,
    required this.startTimeUtc,
    required this.status,
    required this.triggerType,
    required this.upgradedResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeUtc': endTimeUtc,
      'lastUpdatedTimeUtc': lastUpdatedTimeUtc,
      'message': message,
      'operationId': operationId,
      'previousResourceId': previousResourceId,
      'startTimeUtc': startTimeUtc,
      'status': status,
      'triggerType': triggerType,
      'upgradedResourceId': upgradedResourceId,
    };
  }

  factory UpgradeDetailsResponse.fromMap(Map<String, dynamic> map) {
    return UpgradeDetailsResponse(
      endTimeUtc: map['endTimeUtc'] as String,
      lastUpdatedTimeUtc: map['lastUpdatedTimeUtc'] as String,
      message: map['message'] as String,
      operationId: map['operationId'] as String,
      previousResourceId: map['previousResourceId'] as String,
      startTimeUtc: map['startTimeUtc'] as String,
      status: map['status'] as String,
      triggerType: map['triggerType'] as String,
      upgradedResourceId: map['upgradedResourceId'] as String,
    );
  }
}

