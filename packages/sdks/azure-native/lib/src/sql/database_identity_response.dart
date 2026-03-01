// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_user_identity_response.dart';

/// Azure Active Directory identity configuration for a resource.
class DatabaseIdentityResponse {
  /// The Azure Active Directory tenant id.
  final String tenantId;
  /// The identity type
  final String? type;
  /// The resource ids of the user assigned identities to use
  final Map<String, DatabaseUserIdentityResponse>? userAssignedIdentities;

  /// Creates a new [DatabaseIdentityResponse].
  /// [tenantId] The Azure Active Directory tenant id.
  /// [type] The identity type
  /// [userAssignedIdentities] The resource ids of the user assigned identities to use
  DatabaseIdentityResponse({
    required this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tenantId': tenantId,
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<DatabaseUserIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory DatabaseIdentityResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseIdentityResponse(
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<DatabaseUserIdentityResponse>(map['userAssignedIdentities'], (value) => DatabaseUserIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

