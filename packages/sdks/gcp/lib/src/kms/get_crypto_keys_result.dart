// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_crypto_keys_key.dart';

/// Result data returned by getCryptoKeys.
class GetCryptoKeysResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? keyRing;
  /// A list of all the retrieved keys from the provided key ring. This list is influenced by the provided filter argument.
  final List<GetCryptoKeysKey>? keys;

  /// Creates a new [GetCryptoKeysResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyRing] Optional.
  /// [keys] A list of all the retrieved keys from the provided key ring. This list is influenced by the provided filter argument.
  const GetCryptoKeysResult({
    this.filter,
    this.id,
    this.keyRing,
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'keyRing': ?keyRing,
      'keys': ?(() { final guardedValue = keys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCryptoKeysKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetCryptoKeysResult.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeysResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyRing: (() { final guardedValue = map['keyRing']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCryptoKeysKey>(guardedValue, (value) => GetCryptoKeysKey.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
