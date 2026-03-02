// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Linux Web App.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Linux Web App.
  final pulumi.Input<String> principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Linux Web App.
  final pulumi.Input<String> tenantId;
  /// The Azure Storage Type.
  final pulumi.Input<String> type;

  /// Creates a new [GetLinuxWebAppIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Linux Web App.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Linux Web App.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Linux Web App.
  /// [type] The Azure Storage Type.
  GetLinuxWebAppIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetLinuxWebAppIdentity.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppIdentity(
      identityIds: ((map['identityIds'] as List).cast<String>()).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

