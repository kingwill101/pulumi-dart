// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_policy_allowed_device_management_levels_item.dart';
import 'device_policy_allowed_encryption_statuses_item.dart';
import 'os_constraint.dart';

/// `DevicePolicy` specifies device specific restrictions necessary to acquire a given access level. A `DevicePolicy` specifies requirements for requests from devices to be granted access levels, it does not do any enforcement on the device. `DevicePolicy` acts as an AND over all specified fields, and each repeated field is an OR over its elements. Any unset fields are ignored. For example, if the proto is { os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX, encryption_status: ENCRYPTED}, then the DevicePolicy will be true for requests originating from encrypted Linux desktops and encrypted Windows desktops.
class DevicePolicy {
  /// Allowed device management levels, an empty list allows all management levels.
  final pulumi.Input<List<DevicePolicyAllowedDeviceManagementLevelsItem>>? allowedDeviceManagementLevels;
  /// Allowed encryptions statuses, an empty list allows all statuses.
  final pulumi.Input<List<DevicePolicyAllowedEncryptionStatusesItem>>? allowedEncryptionStatuses;
  /// Allowed OS versions, an empty list allows all types and all versions.
  final pulumi.Input<List<OsConstraint>>? osConstraints;
  /// Whether the device needs to be approved by the customer admin.
  final pulumi.Input<bool>? requireAdminApproval;
  /// Whether the device needs to be corp owned.
  final pulumi.Input<bool>? requireCorpOwned;
  /// Whether or not screenlock is required for the DevicePolicy to be true. Defaults to `false`.
  final pulumi.Input<bool>? requireScreenlock;

  /// Creates a new [DevicePolicy].
  /// [allowedDeviceManagementLevels] Allowed device management levels, an empty list allows all management levels.
  /// [allowedEncryptionStatuses] Allowed encryptions statuses, an empty list allows all statuses.
  /// [osConstraints] Allowed OS versions, an empty list allows all types and all versions.
  /// [requireAdminApproval] Whether the device needs to be approved by the customer admin.
  /// [requireCorpOwned] Whether the device needs to be corp owned.
  /// [requireScreenlock] Whether or not screenlock is required for the DevicePolicy to be true. Defaults to `false`.
  DevicePolicy({
    this.allowedDeviceManagementLevels,
    this.allowedEncryptionStatuses,
    this.osConstraints,
    this.requireAdminApproval,
    this.requireCorpOwned,
    this.requireScreenlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedDeviceManagementLevels': ?pulumi.Input.mapOptionalInputValue<List<DevicePolicyAllowedDeviceManagementLevelsItem>, List<String>>(allowedDeviceManagementLevels, (value) => pulumi.Input.encodeList<DevicePolicyAllowedDeviceManagementLevelsItem, String>(value, (value) => value.value)),
      'allowedEncryptionStatuses': ?pulumi.Input.mapOptionalInputValue<List<DevicePolicyAllowedEncryptionStatusesItem>, List<String>>(allowedEncryptionStatuses, (value) => pulumi.Input.encodeList<DevicePolicyAllowedEncryptionStatusesItem, String>(value, (value) => value.value)),
      'osConstraints': ?pulumi.Input.mapOptionalInputValue<List<OsConstraint>, List<Map<String, dynamic>>>(osConstraints, (value) => pulumi.Input.encodeList<OsConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requireAdminApproval': ?requireAdminApproval,
      'requireCorpOwned': ?requireCorpOwned,
      'requireScreenlock': ?requireScreenlock,
    };
  }

  factory DevicePolicy.fromMap(Map<String, dynamic> map) {
    return DevicePolicy(
      allowedDeviceManagementLevels: map['allowedDeviceManagementLevels'] == null ? null : (pulumi.Input.decodeList<DevicePolicyAllowedDeviceManagementLevelsItem>(map['allowedDeviceManagementLevels'], (value) => DevicePolicyAllowedDeviceManagementLevelsItem.fromValue(value as String))).input(),
      allowedEncryptionStatuses: map['allowedEncryptionStatuses'] == null ? null : (pulumi.Input.decodeList<DevicePolicyAllowedEncryptionStatusesItem>(map['allowedEncryptionStatuses'], (value) => DevicePolicyAllowedEncryptionStatusesItem.fromValue(value as String))).input(),
      osConstraints: map['osConstraints'] == null ? null : (pulumi.Input.decodeList<OsConstraint>(map['osConstraints'], (value) => OsConstraint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requireAdminApproval: map['requireAdminApproval'] == null ? null : (map['requireAdminApproval'] as bool).input(),
      requireCorpOwned: map['requireCorpOwned'] == null ? null : (map['requireCorpOwned'] as bool).input(),
      requireScreenlock: map['requireScreenlock'] == null ? null : (map['requireScreenlock'] as bool).input(),
    );
  }
}

