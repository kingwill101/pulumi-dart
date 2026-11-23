// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_jwks_key.dart';

/// Result data returned by getWorkloadIdentityPoolJwks.
class GetWorkloadIdentityPoolJwksResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The raw JSON string representation of the JWKS response.
  final String? jwksJson;
  /// The list of public keys in the JSON Web Key Set. Structure is documented below.
  final List<GetWorkloadIdentityPoolJwksKey>? keys;
  final String? resourceName;

  /// Creates a new [GetWorkloadIdentityPoolJwksResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jwksJson] The raw JSON string representation of the JWKS response.
  /// [keys] The list of public keys in the JSON Web Key Set. Structure is documented below.
  /// [resourceName] Optional.
  const GetWorkloadIdentityPoolJwksResult({
    this.id,
    this.jwksJson,
    this.keys,
    this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'jwksJson': ?jwksJson,
      'keys': ?(() { final guardedValue = keys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkloadIdentityPoolJwksKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceName': ?resourceName,
    };
  }

  factory GetWorkloadIdentityPoolJwksResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolJwksResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jwksJson: (() { final guardedValue = map['jwksJson']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkloadIdentityPoolJwksKey>(guardedValue, (value) => GetWorkloadIdentityPoolJwksKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
