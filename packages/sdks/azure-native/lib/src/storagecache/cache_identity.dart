// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_identity_type.dart';

/// Cache identity properties.
class CacheIdentity {
  /// The type of identity used for the cache
  final pulumi.Input<CacheIdentityType?>? type;
  /// A dictionary where each key is a user assigned identity resource ID, and each key's value is an empty dictionary.
  final pulumi.Input<List<String>?>? userAssignedIdentities;

  /// Creates a new [CacheIdentity].
  /// [type] The type of identity used for the cache
  /// [userAssignedIdentities] A dictionary where each key is a user assigned identity resource ID, and each key's value is an empty dictionary.
  const CacheIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<CacheIdentityType, String>(type, (value) => value.wireValue),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory CacheIdentity.fromMap(Map<String, dynamic> map) {
    return CacheIdentity(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheIdentityType.fromValue(guardedValue as String)); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
