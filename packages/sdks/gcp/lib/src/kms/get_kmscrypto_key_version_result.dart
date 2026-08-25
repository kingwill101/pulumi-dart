// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kmscrypto_key_version_public_key.dart';

/// Result data returned by getKMSCryptoKeyVersion.
class GetKMSCryptoKeyVersionResult {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final String? algorithm;
  final String? cryptoKey;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`
  final String? name;
  /// The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion. See the [protectionLevel reference](https://cloud.google.com/kms/docs/reference/rest/v1/ProtectionLevel) for possible outputs.
  final String? protectionLevel;
  /// If the enclosing CryptoKey has purpose `ASYMMETRIC_SIGN` or `ASYMMETRIC_DECRYPT`, this block contains details about the public key associated to this CryptoKeyVersion. Structure is documented below.
  final List<GetKMSCryptoKeyVersionPublicKey>? publicKeys;
  /// The current state of the CryptoKeyVersion. See the [state reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions#CryptoKeyVersion.CryptoKeyVersionState) for possible outputs.
  final String? state;
  final int? version;

  /// Creates a new [GetKMSCryptoKeyVersionResult].
  /// [algorithm] The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  /// [cryptoKey] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`
  /// [protectionLevel] The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion. See the [protectionLevel reference](https://cloud.google.com/kms/docs/reference/rest/v1/ProtectionLevel) for possible outputs.
  /// [publicKeys] If the enclosing CryptoKey has purpose `ASYMMETRIC_SIGN` or `ASYMMETRIC_DECRYPT`, this block contains details about the public key associated to this CryptoKeyVersion. Structure is documented below.
  /// [state] The current state of the CryptoKeyVersion. See the [state reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions#CryptoKeyVersion.CryptoKeyVersionState) for possible outputs.
  /// [version] Optional.
  const GetKMSCryptoKeyVersionResult({
    this.algorithm,
    this.cryptoKey,
    this.id,
    this.name,
    this.protectionLevel,
    this.publicKeys,
    this.state,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'cryptoKey': ?cryptoKey,
      'id': ?id,
      'name': ?name,
      'protectionLevel': ?protectionLevel,
      'publicKeys': ?(() { final guardedValue = publicKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKMSCryptoKeyVersionPublicKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'version': ?version,
    };
  }

  factory GetKMSCryptoKeyVersionResult.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyVersionResult(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cryptoKey: (() { final guardedValue = map['cryptoKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protectionLevel: (() { final guardedValue = map['protectionLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKeys: (() { final guardedValue = map['publicKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKMSCryptoKeyVersionPublicKey>(guardedValue, (value) => GetKMSCryptoKeyVersionPublicKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
