// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_protection_policy.dart';

/// Azure VM (Mercury) workload-specific backup policy.
class GenericProtectionPolicy {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'GenericProtectionPolicy'.
  final pulumi.Input<String> backupManagementType;

  /// Name of this policy's fabric.
  final pulumi.Input<String>? fabricName;

  /// Number of items associated with this policy.
  final pulumi.Input<int>? protectedItemsCount;

  /// ResourceGuard Operation Requests
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;

  /// List of sub-protection policies which includes schedule and retention
  final pulumi.Input<List<SubProtectionPolicy>>? subProtectionPolicy;

  /// TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  final pulumi.Input<String>? timeZone;

  /// Creates a new [GenericProtectionPolicy].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [fabricName] Name of this policy's fabric.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [subProtectionPolicy] List of sub-protection policies which includes schedule and retention
  /// [timeZone] TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  GenericProtectionPolicy({
    required this.backupManagementType,
    this.fabricName,
    this.protectedItemsCount,
    this.resourceGuardOperationRequests,
    this.subProtectionPolicy,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': backupManagementType,
      'fabricName': ?fabricName,
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'subProtectionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubProtectionPolicy>,
            List<Map<String, dynamic>>
          >(
            subProtectionPolicy,
            (value) =>
                pulumi.Input.encodeList<
                  SubProtectionPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'timeZone': ?timeZone,
    };
  }

  factory GenericProtectionPolicy.fromMap(Map<String, dynamic> map) {
    return GenericProtectionPolicy(
      backupManagementType: pulumi.Input.fromValue(
        map['backupManagementType'] as String,
      ),
      fabricName: (() {
        final guardedValue = map['fabricName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protectedItemsCount: (() {
        final guardedValue = map['protectedItemsCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGuardOperationRequests: (() {
        final guardedValue = map['resourceGuardOperationRequests'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      subProtectionPolicy: (() {
        final guardedValue = map['subProtectionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubProtectionPolicy>(
            guardedValue,
            (value) => SubProtectionPolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
