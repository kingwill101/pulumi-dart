// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_identity_response_user_assigned_identities.dart';

/// Cache identity properties.
class CacheIdentityResponse {
  /// The principal ID for the system-assigned identity of the cache.
  final pulumi.Input<String> principalId;
  /// The tenant ID associated with the cache.
  final pulumi.Input<String> tenantId;
  /// The type of identity used for the cache
  final pulumi.Input<String>? type;
  /// A dictionary where each key is a user assigned identity resource ID, and each key's value is an empty dictionary.
  final pulumi.Input<Map<String, CacheIdentityResponseUserAssignedIdentities>>? userAssignedIdentities;

  /// Creates a new [CacheIdentityResponse].
  /// [principalId] The principal ID for the system-assigned identity of the cache.
  /// [tenantId] The tenant ID associated with the cache.
  /// [type] The type of identity used for the cache
  /// [userAssignedIdentities] A dictionary where each key is a user assigned identity resource ID, and each key's value is an empty dictionary.
  CacheIdentityResponse({
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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, CacheIdentityResponseUserAssignedIdentities>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<CacheIdentityResponseUserAssignedIdentities, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CacheIdentityResponse.fromMap(Map<String, dynamic> map) {
    return CacheIdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<CacheIdentityResponseUserAssignedIdentities>(map['userAssignedIdentities'], (value) => CacheIdentityResponseUserAssignedIdentities.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

