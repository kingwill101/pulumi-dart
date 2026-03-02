// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_level_basic_condition_device_policy_os_constraint.dart';

class AccessLevelBasicConditionDevicePolicy {
  /// A list of allowed device management levels.
  /// An empty list allows all management levels.
  /// Each value may be one of: `MANAGEMENT_UNSPECIFIED`, `NONE`, `BASIC`, `COMPLETE`.
  final pulumi.Input<List<String>>? allowedDeviceManagementLevels;
  /// A list of allowed encryptions statuses.
  /// An empty list allows all statuses.
  /// Each value may be one of: `ENCRYPTION_UNSPECIFIED`, `ENCRYPTION_UNSUPPORTED`, `UNENCRYPTED`, `ENCRYPTED`.
  final pulumi.Input<List<String>>? allowedEncryptionStatuses;
  /// A list of allowed OS versions.
  /// An empty list allows all types and all versions.
  /// Structure is documented below.
  final pulumi.Input<List<AccessLevelBasicConditionDevicePolicyOsConstraint>>? osConstraints;
  /// Whether the device needs to be approved by the customer admin.
  final pulumi.Input<bool>? requireAdminApproval;
  /// Whether the device needs to be corp owned.
  final pulumi.Input<bool>? requireCorpOwned;
  /// Whether or not screenlock is required for the DevicePolicy
  /// to be true. Defaults to false.
  final pulumi.Input<bool>? requireScreenLock;

  /// Creates a new [AccessLevelBasicConditionDevicePolicy].
  /// [allowedDeviceManagementLevels] A list of allowed device management levels.
  /// [allowedEncryptionStatuses] A list of allowed encryptions statuses.
  /// [osConstraints] A list of allowed OS versions.
  /// [requireAdminApproval] Whether the device needs to be approved by the customer admin.
  /// [requireCorpOwned] Whether the device needs to be corp owned.
  /// [requireScreenLock] Whether or not screenlock is required for the DevicePolicy
  AccessLevelBasicConditionDevicePolicy({
    this.allowedDeviceManagementLevels,
    this.allowedEncryptionStatuses,
    this.osConstraints,
    this.requireAdminApproval,
    this.requireCorpOwned,
    this.requireScreenLock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedDeviceManagementLevels': ?allowedDeviceManagementLevels,
      'allowedEncryptionStatuses': ?allowedEncryptionStatuses,
      'osConstraints': ?pulumi.Input.mapOptionalInputValue<List<AccessLevelBasicConditionDevicePolicyOsConstraint>, List<Map<String, dynamic>>>(osConstraints, (value) => pulumi.Input.encodeList<AccessLevelBasicConditionDevicePolicyOsConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requireAdminApproval': ?requireAdminApproval,
      'requireCorpOwned': ?requireCorpOwned,
      'requireScreenLock': ?requireScreenLock,
    };
  }

  factory AccessLevelBasicConditionDevicePolicy.fromMap(Map<String, dynamic> map) {
    return AccessLevelBasicConditionDevicePolicy(
      allowedDeviceManagementLevels: map['allowedDeviceManagementLevels'] == null ? null : ((map['allowedDeviceManagementLevels'] as List).cast<String>()).input(),
      allowedEncryptionStatuses: map['allowedEncryptionStatuses'] == null ? null : ((map['allowedEncryptionStatuses'] as List).cast<String>()).input(),
      osConstraints: map['osConstraints'] == null ? null : (pulumi.Input.decodeList<AccessLevelBasicConditionDevicePolicyOsConstraint>(map['osConstraints'], (value) => AccessLevelBasicConditionDevicePolicyOsConstraint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requireAdminApproval: map['requireAdminApproval'] == null ? null : (map['requireAdminApproval'] as bool).input(),
      requireCorpOwned: map['requireCorpOwned'] == null ? null : (map['requireCorpOwned'] as bool).input(),
      requireScreenLock: map['requireScreenLock'] == null ? null : (map['requireScreenLock'] as bool).input(),
    );
  }
}

