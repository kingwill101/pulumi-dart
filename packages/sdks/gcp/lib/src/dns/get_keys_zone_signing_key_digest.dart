// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKeysZoneSigningKeyDigest {
  /// The base-16 encoded bytes of this digest. Suitable for use in a DS resource record.
  final pulumi.Input<String>? digest;
  /// Specifies the algorithm used to calculate this digest. Possible values are `sha1`, `sha256` and `sha384`
  final pulumi.Input<String>? type;

  /// Creates a new [GetKeysZoneSigningKeyDigest].
  /// [digest] The base-16 encoded bytes of this digest. Suitable for use in a DS resource record.
  /// [type] Specifies the algorithm used to calculate this digest. Possible values are `sha1`, `sha256` and `sha384`
  GetKeysZoneSigningKeyDigest({
    this.digest,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'type': ?type,
    };
  }

  factory GetKeysZoneSigningKeyDigest.fromMap(Map<String, dynamic> map) {
    return GetKeysZoneSigningKeyDigest(
      digest: map['digest'] == null ? null : (map['digest']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

