// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for upgrading vault.
class UpgradeDetailsResponse {
  /// UTC time at which the upgrade operation has ended.
  final pulumi.Input<String> endTimeUtc;
  /// UTC time at which the upgrade operation status was last updated.
  final pulumi.Input<String> lastUpdatedTimeUtc;
  /// Message to the user containing information about the upgrade operation.
  final pulumi.Input<String> message;
  /// ID of the vault upgrade operation.
  final pulumi.Input<String> operationId;
  /// Resource ID of the vault before the upgrade.
  final pulumi.Input<String> previousResourceId;
  /// UTC time at which the upgrade operation has started.
  final pulumi.Input<String> startTimeUtc;
  /// Status of the vault upgrade operation.
  final pulumi.Input<String> status;
  /// The way the vault upgrade was triggered.
  final pulumi.Input<String> triggerType;
  /// Resource ID of the upgraded vault.
  final pulumi.Input<String> upgradedResourceId;

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
      endTimeUtc: (map['endTimeUtc'] as String).input(),
      lastUpdatedTimeUtc: (map['lastUpdatedTimeUtc'] as String).input(),
      message: (map['message'] as String).input(),
      operationId: (map['operationId'] as String).input(),
      previousResourceId: (map['previousResourceId'] as String).input(),
      startTimeUtc: (map['startTimeUtc'] as String).input(),
      status: (map['status'] as String).input(),
      triggerType: (map['triggerType'] as String).input(),
      upgradedResourceId: (map['upgradedResourceId'] as String).input(),
    );
  }
}

