// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_user_identity_response.dart';

/// Azure Active Directory identity configuration for a resource.
class DatabaseIdentityResponse {
  /// The Azure Active Directory tenant id.
  final pulumi.Input<String> tenantId;
  /// The identity type
  final pulumi.Input<String?>? type;
  /// The resource ids of the user assigned identities to use
  final pulumi.Input<Map<String, DatabaseUserIdentityResponse>?>? userAssignedIdentities;

  /// Creates a new [DatabaseIdentityResponse].
  /// [tenantId] The Azure Active Directory tenant id.
  /// [type] The identity type
  /// [userAssignedIdentities] The resource ids of the user assigned identities to use
  const DatabaseIdentityResponse({
    required this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tenantId': tenantId,
      'type': ?type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, DatabaseUserIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<DatabaseUserIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatabaseIdentityResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseIdentityResponse(
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DatabaseUserIdentityResponse>(guardedValue, (value) => DatabaseUserIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
