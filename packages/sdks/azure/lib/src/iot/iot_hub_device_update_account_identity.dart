// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IotHubDeviceUpdateAccountIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this IoT Hub Device Update Account.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this IoT Hub Device Update Account.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this IoT Hub Device Update Account.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this IoT Hub Device Update Account. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned` (to enable both).
  final pulumi.Input<String> type;

  /// Creates a new [IotHubDeviceUpdateAccountIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this IoT Hub Device Update Account.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this IoT Hub Device Update Account.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this IoT Hub Device Update Account.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this IoT Hub Device Update Account. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned` (to enable both).
  IotHubDeviceUpdateAccountIdentity({
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

  factory IotHubDeviceUpdateAccountIdentity.fromMap(Map<String, dynamic> map) {
    return IotHubDeviceUpdateAccountIdentity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds'] as List).cast<String>()).input(),
      principalId: map['principalId'] == null ? null : (map['principalId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

