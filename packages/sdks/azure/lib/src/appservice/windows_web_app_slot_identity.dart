// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this Windows Web App Slot.
  ///
  /// &gt; **Note:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Windows Web App Slot. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  final pulumi.Input<String> type;

  /// Creates a new [WindowsWebAppSlotIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this Windows Web App Slot.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Windows Web App Slot. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  const WindowsWebAppSlotIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory WindowsWebAppSlotIdentity.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
