// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_signature_key_type_containeranalysis_v1beta1.dart';

/// Message encapsulating the signature of the verified build.
class BuildSignatureContaineranalysisV1beta1 {
  /// An ID for the key used to sign. This could be either an ID for the key stored in `public_key` (such as the ID or fingerprint for a PGP key, or the CN for a cert), or a reference to an external key (such as a reference to a key in Cloud Key Management Service).
  final pulumi.Input<String>? keyId;
  /// The type of the key, either stored in `public_key` or referenced in `key_id`.
  final pulumi.Input<BuildSignatureKeyTypeContaineranalysisV1beta1>? keyType;
  /// Public key of the builder which can be used to verify that the related findings are valid and unchanged. If `key_type` is empty, this defaults to PEM encoded public keys. This field may be empty if `key_id` references an external key. For Cloud Build based signatures, this is a PEM encoded public key. To verify the Cloud Build signature, place the contents of this field into a file (public.pem). The signature field is base64-decoded into its binary representation in signature.bin, and the provenance bytes from `BuildDetails` are base64-decoded into a binary representation in signed.bin. OpenSSL can then verify the signature: `openssl sha256 -verify public.pem -signature signature.bin signed.bin`
  final pulumi.Input<String>? publicKey;
  /// Signature of the related `BuildProvenance`. In JSON, this is base-64 encoded.
  final pulumi.Input<String> signature;

  /// Creates a new [BuildSignatureContaineranalysisV1beta1].
  /// [keyId] An ID for the key used to sign. This could be either an ID for the key stored in `public_key` (such as the ID or fingerprint for a PGP key, or the CN for a cert), or a reference to an external key (such as a reference to a key in Cloud Key Management Service).
  /// [keyType] The type of the key, either stored in `public_key` or referenced in `key_id`.
  /// [publicKey] Public key of the builder which can be used to verify that the related findings are valid and unchanged. If `key_type` is empty, this defaults to PEM encoded public keys. This field may be empty if `key_id` references an external key. For Cloud Build based signatures, this is a PEM encoded public key. To verify the Cloud Build signature, place the contents of this field into a file (public.pem). The signature field is base64-decoded into its binary representation in signature.bin, and the provenance bytes from `BuildDetails` are base64-decoded into a binary representation in signed.bin. OpenSSL can then verify the signature: `openssl sha256 -verify public.pem -signature signature.bin signed.bin`
  /// [signature] Signature of the related `BuildProvenance`. In JSON, this is base-64 encoded.
  const BuildSignatureContaineranalysisV1beta1({
    this.keyId,
    this.keyType,
    this.publicKey,
    required this.signature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
      'keyType': ?pulumi.Input.mapOptionalInputValue<BuildSignatureKeyTypeContaineranalysisV1beta1, String>(keyType, (value) => value.wireValue),
      'publicKey': ?publicKey,
      'signature': signature,
    };
  }

  factory BuildSignatureContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return BuildSignatureContaineranalysisV1beta1(
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildSignatureKeyTypeContaineranalysisV1beta1.fromValue(guardedValue as String)); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signature: pulumi.Input.fromValue(map['signature'] as String),
    );
  }
}

