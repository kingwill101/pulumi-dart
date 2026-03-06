// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pkix_public_key_response.dart';

/// A bundle of PKIX public keys, used to authenticate attestation signatures. Generally, a signature is considered to be authenticated by a `PkixPublicKeySet` if any of the public keys verify it (i.e. it is an "OR" of the keys).
class PkixPublicKeySetResponse {
  /// `pkix_public_keys` must have at least one entry.
  final pulumi.Input<List<PkixPublicKeyResponse>> pkixPublicKeys;

  /// Creates a new [PkixPublicKeySetResponse].
  /// [pkixPublicKeys] `pkix_public_keys` must have at least one entry.
  const PkixPublicKeySetResponse({
    required this.pkixPublicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pkixPublicKeys': pulumi.Input.mapInputValue<List<PkixPublicKeyResponse>, List<Map<String, dynamic>>>(pkixPublicKeys, (value) => pulumi.Input.encodeList<PkixPublicKeyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PkixPublicKeySetResponse.fromMap(Map<String, dynamic> map) {
    return PkixPublicKeySetResponse(
      pkixPublicKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<PkixPublicKeyResponse>(map['pkixPublicKeys']!, (value) => PkixPublicKeyResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

