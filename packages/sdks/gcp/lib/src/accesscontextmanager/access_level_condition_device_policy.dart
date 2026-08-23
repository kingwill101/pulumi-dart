// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_level_condition_device_policy_os_constraint.dart';

class AccessLevelConditionDevicePolicy {
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
  final pulumi.Input<List<AccessLevelConditionDevicePolicyOsConstraint>>? osConstraints;
  /// Whether the device needs to be approved by the customer admin.
  final pulumi.Input<bool>? requireAdminApproval;
  /// Whether the device needs to be corp owned.
  final pulumi.Input<bool>? requireCorpOwned;
  /// Whether or not screenlock is required for the DevicePolicy
  /// to be true. Defaults to false.
  final pulumi.Input<bool>? requireScreenLock;

  /// Creates a new [AccessLevelConditionDevicePolicy].
  /// [allowedDeviceManagementLevels] A list of allowed device management levels.
  /// [allowedEncryptionStatuses] A list of allowed encryptions statuses.
  /// [osConstraints] A list of allowed OS versions.
  /// [requireAdminApproval] Whether the device needs to be approved by the customer admin.
  /// [requireCorpOwned] Whether the device needs to be corp owned.
  /// [requireScreenLock] Whether or not screenlock is required for the DevicePolicy
  const AccessLevelConditionDevicePolicy({
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
      'osConstraints': ?pulumi.Input.mapOptionalInputValue<List<AccessLevelConditionDevicePolicyOsConstraint>, List<Map<String, dynamic>>>(osConstraints, (value) => pulumi.Input.encodeList<AccessLevelConditionDevicePolicyOsConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requireAdminApproval': ?requireAdminApproval,
      'requireCorpOwned': ?requireCorpOwned,
      'requireScreenLock': ?requireScreenLock,
    };
  }

  factory AccessLevelConditionDevicePolicy.fromMap(Map<String, dynamic> map) {
    return AccessLevelConditionDevicePolicy(
      allowedDeviceManagementLevels: (() { final guardedValue = map['allowedDeviceManagementLevels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedEncryptionStatuses: (() { final guardedValue = map['allowedEncryptionStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      osConstraints: (() { final guardedValue = map['osConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessLevelConditionDevicePolicyOsConstraint>(guardedValue, (value) => AccessLevelConditionDevicePolicyOsConstraint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requireAdminApproval: (() { final guardedValue = map['requireAdminApproval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireCorpOwned: (() { final guardedValue = map['requireCorpOwned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireScreenLock: (() { final guardedValue = map['requireScreenLock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
