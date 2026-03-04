// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed Virtual Network Settings
class ManagedVirtualNetworkSettingsResponse {
  /// Allowed Aad Tenant Ids For Linking
  final pulumi.Input<List<String>>? allowedAadTenantIdsForLinking;

  /// Linked Access Check On Target Resource
  final pulumi.Input<bool>? linkedAccessCheckOnTargetResource;

  /// Prevent Data Exfiltration
  final pulumi.Input<bool>? preventDataExfiltration;

  /// Creates a new [ManagedVirtualNetworkSettingsResponse].
  /// [allowedAadTenantIdsForLinking] Allowed Aad Tenant Ids For Linking
  /// [linkedAccessCheckOnTargetResource] Linked Access Check On Target Resource
  /// [preventDataExfiltration] Prevent Data Exfiltration
  ManagedVirtualNetworkSettingsResponse({
    this.allowedAadTenantIdsForLinking,
    this.linkedAccessCheckOnTargetResource,
    this.preventDataExfiltration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAadTenantIdsForLinking': ?allowedAadTenantIdsForLinking,
      'linkedAccessCheckOnTargetResource': ?linkedAccessCheckOnTargetResource,
      'preventDataExfiltration': ?preventDataExfiltration,
    };
  }

  factory ManagedVirtualNetworkSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedVirtualNetworkSettingsResponse(
      allowedAadTenantIdsForLinking: (() {
        final guardedValue = map['allowedAadTenantIdsForLinking'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      linkedAccessCheckOnTargetResource: (() {
        final guardedValue = map['linkedAccessCheckOnTargetResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      preventDataExfiltration: (() {
        final guardedValue = map['preventDataExfiltration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
