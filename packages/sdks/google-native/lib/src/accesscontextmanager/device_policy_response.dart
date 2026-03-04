// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_constraint_response.dart';

/// `DevicePolicy` specifies device specific restrictions necessary to acquire a given access level. A `DevicePolicy` specifies requirements for requests from devices to be granted access levels, it does not do any enforcement on the device. `DevicePolicy` acts as an AND over all specified fields, and each repeated field is an OR over its elements. Any unset fields are ignored. For example, if the proto is { os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX, encryption_status: ENCRYPTED}, then the DevicePolicy will be true for requests originating from encrypted Linux desktops and encrypted Windows desktops.
class DevicePolicyResponse {
  /// Allowed device management levels, an empty list allows all management levels.
  final pulumi.Input<List<String>> allowedDeviceManagementLevels;

  /// Allowed encryptions statuses, an empty list allows all statuses.
  final pulumi.Input<List<String>> allowedEncryptionStatuses;

  /// Allowed OS versions, an empty list allows all types and all versions.
  final pulumi.Input<List<OsConstraintResponse>> osConstraints;

  /// Whether the device needs to be approved by the customer admin.
  final pulumi.Input<bool> requireAdminApproval;

  /// Whether the device needs to be corp owned.
  final pulumi.Input<bool> requireCorpOwned;

  /// Whether or not screenlock is required for the DevicePolicy to be true. Defaults to `false`.
  final pulumi.Input<bool> requireScreenlock;

  /// Creates a new [DevicePolicyResponse].
  /// [allowedDeviceManagementLevels] Allowed device management levels, an empty list allows all management levels.
  /// [allowedEncryptionStatuses] Allowed encryptions statuses, an empty list allows all statuses.
  /// [osConstraints] Allowed OS versions, an empty list allows all types and all versions.
  /// [requireAdminApproval] Whether the device needs to be approved by the customer admin.
  /// [requireCorpOwned] Whether the device needs to be corp owned.
  /// [requireScreenlock] Whether or not screenlock is required for the DevicePolicy to be true. Defaults to `false`.
  DevicePolicyResponse({
    required this.allowedDeviceManagementLevels,
    required this.allowedEncryptionStatuses,
    required this.osConstraints,
    required this.requireAdminApproval,
    required this.requireCorpOwned,
    required this.requireScreenlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedDeviceManagementLevels': allowedDeviceManagementLevels,
      'allowedEncryptionStatuses': allowedEncryptionStatuses,
      'osConstraints':
          pulumi.Input.mapInputValue<
            List<OsConstraintResponse>,
            List<Map<String, dynamic>>
          >(
            osConstraints,
            (value) =>
                pulumi.Input.encodeList<
                  OsConstraintResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'requireAdminApproval': requireAdminApproval,
      'requireCorpOwned': requireCorpOwned,
      'requireScreenlock': requireScreenlock,
    };
  }

  factory DevicePolicyResponse.fromMap(Map<String, dynamic> map) {
    return DevicePolicyResponse(
      allowedDeviceManagementLevels: pulumi.Input.fromValue(
        (map['allowedDeviceManagementLevels'] as List).cast<String>(),
      ),
      allowedEncryptionStatuses: pulumi.Input.fromValue(
        (map['allowedEncryptionStatuses'] as List).cast<String>(),
      ),
      osConstraints: pulumi.Input.fromValue(
        pulumi.Input.decodeList<OsConstraintResponse>(
          map['osConstraints']!,
          (value) => OsConstraintResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      requireAdminApproval: pulumi.Input.fromValue(
        map['requireAdminApproval'] as bool,
      ),
      requireCorpOwned: pulumi.Input.fromValue(map['requireCorpOwned'] as bool),
      requireScreenlock: pulumi.Input.fromValue(
        map['requireScreenlock'] as bool,
      ),
    );
  }
}
