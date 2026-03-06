// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_keys_key_signing_key_digest.dart';

class GetKeysKeySigningKey {
  /// String mnemonic specifying the DNSSEC algorithm of this key. Immutable after creation time. Possible values are `ecdsap256sha256`, `ecdsap384sha384`, `rsasha1`, `rsasha256`, and `rsasha512`.
  final pulumi.Input<String> algorithm;
  /// The time that this resource was created in the control plane. This is in RFC3339 text format.
  final pulumi.Input<String> creationTime;
  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience.
  final pulumi.Input<String> description;
  /// A list of cryptographic hashes of the DNSKEY resource record associated with this DnsKey. These digests are needed to construct a DS record that points at this DNS key. Each contains:
  final pulumi.Input<List<GetKeysKeySigningKeyDigest>> digests;
  /// The DS record based on the KSK record. This is used when [delegating](https://cloud.google.com/dns/docs/dnssec-advanced#subdelegation) DNSSEC-signed subdomains.
  final pulumi.Input<String> dsRecord;
  /// Unique identifier for the resource; defined by the server.
  final pulumi.Input<String> id;
  /// Active keys will be used to sign subsequent changes to the ManagedZone. Inactive keys will still be present as DNSKEY Resource Records for the use of resolvers validating existing signatures.
  final pulumi.Input<bool> isActive;
  /// Length of the key in bits. Specified at creation time then immutable.
  final pulumi.Input<int> keyLength;
  /// The key tag is a non-cryptographic hash of the a DNSKEY resource record associated with this DnsKey. The key tag can be used to identify a DNSKEY more quickly (but it is not a unique identifier). In particular, the key tag is used in a parent zone's DS record to point at the DNSKEY in this child ManagedZone. The key tag is a number in the range [0, 65535] and the algorithm to calculate it is specified in RFC4034 Appendix B.
  final pulumi.Input<int> keyTag;
  /// Base64 encoded public half of this key.
  final pulumi.Input<String> publicKey;

  /// Creates a new [GetKeysKeySigningKey].
  /// [algorithm] String mnemonic specifying the DNSSEC algorithm of this key. Immutable after creation time. Possible values are `ecdsap256sha256`, `ecdsap384sha384`, `rsasha1`, `rsasha256`, and `rsasha512`.
  /// [creationTime] The time that this resource was created in the control plane. This is in RFC3339 text format.
  /// [description] A mutable string of at most 1024 characters associated with this resource for the user's convenience.
  /// [digests] A list of cryptographic hashes of the DNSKEY resource record associated with this DnsKey. These digests are needed to construct a DS record that points at this DNS key. Each contains:
  /// [dsRecord] The DS record based on the KSK record. This is used when [delegating](https://cloud.google.com/dns/docs/dnssec-advanced#subdelegation) DNSSEC-signed subdomains.
  /// [id] Unique identifier for the resource; defined by the server.
  /// [isActive] Active keys will be used to sign subsequent changes to the ManagedZone. Inactive keys will still be present as DNSKEY Resource Records for the use of resolvers validating existing signatures.
  /// [keyLength] Length of the key in bits. Specified at creation time then immutable.
  /// [keyTag] The key tag is a non-cryptographic hash of the a DNSKEY resource record associated with this DnsKey. The key tag can be used to identify a DNSKEY more quickly (but it is not a unique identifier). In particular, the key tag is used in a parent zone's DS record to point at the DNSKEY in this child ManagedZone. The key tag is a number in the range [0, 65535] and the algorithm to calculate it is specified in RFC4034 Appendix B.
  /// [publicKey] Base64 encoded public half of this key.
  const GetKeysKeySigningKey({
    required this.algorithm,
    required this.creationTime,
    required this.description,
    required this.digests,
    required this.dsRecord,
    required this.id,
    required this.isActive,
    required this.keyLength,
    required this.keyTag,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'creationTime': creationTime,
      'description': description,
      'digests': pulumi.Input.mapInputValue<List<GetKeysKeySigningKeyDigest>, List<Map<String, dynamic>>>(digests, (value) => pulumi.Input.encodeList<GetKeysKeySigningKeyDigest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dsRecord': dsRecord,
      'id': id,
      'isActive': isActive,
      'keyLength': keyLength,
      'keyTag': keyTag,
      'publicKey': publicKey,
    };
  }

  factory GetKeysKeySigningKey.fromMap(Map<String, dynamic> map) {
    return GetKeysKeySigningKey(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      digests: pulumi.Input.fromValue(pulumi.Input.decodeList<GetKeysKeySigningKeyDigest>(map['digests']!, (value) => GetKeysKeySigningKeyDigest.fromMap((value as Map).cast<String, dynamic>()))),
      dsRecord: pulumi.Input.fromValue(map['dsRecord'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isActive: pulumi.Input.fromValue(map['isActive'] as bool),
      keyLength: pulumi.Input.fromValue(map['keyLength'] as int),
      keyTag: pulumi.Input.fromValue(map['keyTag'] as int),
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
    );
  }
}

