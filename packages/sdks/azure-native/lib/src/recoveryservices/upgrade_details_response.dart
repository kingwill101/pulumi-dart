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
  const UpgradeDetailsResponse({
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
      endTimeUtc: pulumi.Input.fromValue(map['endTimeUtc'] as String),
      lastUpdatedTimeUtc: pulumi.Input.fromValue(map['lastUpdatedTimeUtc'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      operationId: pulumi.Input.fromValue(map['operationId'] as String),
      previousResourceId: pulumi.Input.fromValue(map['previousResourceId'] as String),
      startTimeUtc: pulumi.Input.fromValue(map['startTimeUtc'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      triggerType: pulumi.Input.fromValue(map['triggerType'] as String),
      upgradedResourceId: pulumi.Input.fromValue(map['upgradedResourceId'] as String),
    );
  }
}
