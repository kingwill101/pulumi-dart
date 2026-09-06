// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_response.dart';

/// Azure Active Directory identity configuration for a resource.
class ResourceIdentityResponse {
  /// The Azure Active Directory principal id.
  final pulumi.Input<String> principalId;
  /// The Azure Active Directory tenant id.
  final pulumi.Input<String> tenantId;
  /// The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
  final pulumi.Input<String?>? type;
  /// The resource ids of the user assigned identities to use
  final pulumi.Input<Map<String, UserIdentityResponse>?>? userAssignedIdentities;

  /// Creates a new [ResourceIdentityResponse].
  /// [principalId] The Azure Active Directory principal id.
  /// [tenantId] The Azure Active Directory tenant id.
  /// [type] The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
  /// [userAssignedIdentities] The resource ids of the user assigned identities to use
  const ResourceIdentityResponse({
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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdentityResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserIdentityResponse>(guardedValue, (value) => UserIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
