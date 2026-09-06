// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_user_assigned_identities_response.dart';

/// Identity for the resource.
class ManagedServiceIdentityServiceGatewayResponse {
  /// The principal id of the system assigned identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant id of the system assigned identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> tenantId;
  /// The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the virtual machine.
  final pulumi.Input<String?>? type;
  /// The list of user identities associated with resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<Map<String, ManagedServiceIdentityUserAssignedIdentitiesResponse>?>? userAssignedIdentities;

  /// Creates a new [ManagedServiceIdentityServiceGatewayResponse].
  /// [principalId] The principal id of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant id of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [type] The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the virtual machine.
  /// [userAssignedIdentities] The list of user identities associated with resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  const ManagedServiceIdentityServiceGatewayResponse({
    required this.principalId,
    required this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, ManagedServiceIdentityUserAssignedIdentitiesResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<ManagedServiceIdentityUserAssignedIdentitiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedServiceIdentityServiceGatewayResponse.fromMap(Map<String, dynamic> map) {
    return ManagedServiceIdentityServiceGatewayResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ManagedServiceIdentityUserAssignedIdentitiesResponse>(guardedValue, (value) => ManagedServiceIdentityUserAssignedIdentitiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
