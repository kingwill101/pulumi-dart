// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_crypto_key_versions_public_key.dart';
import 'get_crypto_key_versions_version.dart';

/// Result data returned by getCryptoKeyVersions.
class GetCryptoKeyVersionsResult {
  final String? cryptoKey;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetCryptoKeyVersionsPublicKey>? publicKeys;
  /// A list of all the retrieved crypto key versions from the provided crypto key. This list is influenced by the provided filter argument.
  final List<GetCryptoKeyVersionsVersion>? versions;

  /// Creates a new [GetCryptoKeyVersionsResult].
  /// [cryptoKey] Optional.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [publicKeys] Optional.
  /// [versions] A list of all the retrieved crypto key versions from the provided crypto key. This list is influenced by the provided filter argument.
  const GetCryptoKeyVersionsResult({
    this.cryptoKey,
    this.filter,
    this.id,
    this.publicKeys,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKey': ?cryptoKey,
      'filter': ?filter,
      'id': ?id,
      'publicKeys': ?(() { final guardedValue = publicKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCryptoKeyVersionsPublicKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'versions': ?(() { final guardedValue = versions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCryptoKeyVersionsVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetCryptoKeyVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyVersionsResult(
      cryptoKey: (() { final guardedValue = map['cryptoKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKeys: (() { final guardedValue = map['publicKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCryptoKeyVersionsPublicKey>(guardedValue, (value) => GetCryptoKeyVersionsPublicKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCryptoKeyVersionsVersion>(guardedValue, (value) => GetCryptoKeyVersionsVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
