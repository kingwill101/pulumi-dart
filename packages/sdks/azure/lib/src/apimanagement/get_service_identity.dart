// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this API Management Service.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this API Management Service.
  final pulumi.Input<String> principalId;
  /// The ID of the Tenant which has access to this API Management instance.
  final pulumi.Input<String> tenantId;
  /// The type of Managed Service Identity that is configured on this API Management Service.
  final pulumi.Input<String> type;

  /// Creates a new [GetServiceIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this API Management Service.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this API Management Service.
  /// [tenantId] The ID of the Tenant which has access to this API Management instance.
  /// [type] The type of Managed Service Identity that is configured on this API Management Service.
  GetServiceIdentity({
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

  factory GetServiceIdentity.fromMap(Map<String, dynamic> map) {
    return GetServiceIdentity(
      identityIds: ((map['identityIds'] as List).cast<String>()).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

