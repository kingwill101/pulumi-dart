// ignore_for_file: unused_element, unnecessary_cast

import 'cache_identity_type.dart';

/// Cache identity properties.
class CacheIdentity {
  /// The type of identity used for the cache
  final CacheIdentityType? type;
  /// A dictionary where each key is a user assigned identity resource ID, and each key's value is an empty dictionary.
  final List<String>? userAssignedIdentities;

  /// Creates a new [CacheIdentity].
  /// [type] The type of identity used for the cache
  /// [userAssignedIdentities] A dictionary where each key is a user assigned identity resource ID, and each key's value is an empty dictionary.
  CacheIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory CacheIdentity.fromMap(Map<String, dynamic> map) {
    return CacheIdentity(
      type: map['type'] == null ? null : CacheIdentityType.fromValue(map['type'] as String),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

