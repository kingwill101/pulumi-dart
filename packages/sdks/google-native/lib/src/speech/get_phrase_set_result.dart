// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'phrase_response.dart';

/// Result data returned by getPhraseSet.
class GetPhraseSetResult {
  /// Allows users to store small amounts of arbitrary data. Both the key and the value must be 63 characters or less each. At most 100 annotations. This field is not used.
  final Map<String, String> annotations;

  /// Hint Boost. Positive value will increase the probability that a specific phrase will be recognized over other similar sounding phrases. The higher the boost, the higher the chance of false positive recognition as well. Negative boost values would correspond to anti-biasing. Anti-biasing is not enabled, so negative boost will simply be ignored. Though `boost` can accept a wide range of positive values, most use cases are best served with values between 0 (exclusive) and 20. We recommend using a binary search approach to finding the optimal value for your use case as well as adding phrases both with and without boost to your requests.
  final double boost;

  /// The time at which this resource was requested for deletion. This field is not used.
  final String deleteTime;

  /// User-settable, human-readable name for the PhraseSet. Must be 63 characters or less. This field is not used.
  final String displayName;

  /// This checksum is computed by the server based on the value of other fields. This may be sent on update, undelete, and delete requests to ensure the client has an up-to-date value before proceeding. This field is not used.
  final String etag;

  /// The time at which this resource will be purged. This field is not used.
  final String expireTime;

  /// The [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with which the content of the PhraseSet is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  final String kmsKeyName;

  /// The [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions) with which content of the PhraseSet is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  final String kmsKeyVersionName;

  /// The resource name of the phrase set.
  final String name;

  /// A list of word and phrases.
  final List<PhraseResponse> phrases;

  /// Whether or not this PhraseSet is in the process of being updated. This field is not used.
  final bool reconciling;

  /// The CustomClass lifecycle state. This field is not used.
  final String state;

  /// System-assigned unique identifier for the PhraseSet. This field is not used.
  final String uid;

  /// Creates a new [GetPhraseSetResult].
  /// [annotations] Allows users to store small amounts of arbitrary data. Both the key and the value must be 63 characters or less each. At most 100 annotations. This field is not used.
  /// [boost] Hint Boost. Positive value will increase the probability that a specific phrase will be recognized over other similar sounding phrases. The higher the boost, the higher the chance of false positive recognition as well. Negative boost values would correspond to anti-biasing. Anti-biasing is not enabled, so negative boost will simply be ignored. Though `boost` can accept a wide range of positive values, most use cases are best served with values between 0 (exclusive) and 20. We recommend using a binary search approach to finding the optimal value for your use case as well as adding phrases both with and without boost to your requests.
  /// [deleteTime] The time at which this resource was requested for deletion. This field is not used.
  /// [displayName] User-settable, human-readable name for the PhraseSet. Must be 63 characters or less. This field is not used.
  /// [etag] This checksum is computed by the server based on the value of other fields. This may be sent on update, undelete, and delete requests to ensure the client has an up-to-date value before proceeding. This field is not used.
  /// [expireTime] The time at which this resource will be purged. This field is not used.
  /// [kmsKeyName] The [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with which the content of the PhraseSet is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// [kmsKeyVersionName] The [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions) with which content of the PhraseSet is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  /// [name] The resource name of the phrase set.
  /// [phrases] A list of word and phrases.
  /// [reconciling] Whether or not this PhraseSet is in the process of being updated. This field is not used.
  /// [state] The CustomClass lifecycle state. This field is not used.
  /// [uid] System-assigned unique identifier for the PhraseSet. This field is not used.
  GetPhraseSetResult({
    required this.annotations,
    required this.boost,
    required this.deleteTime,
    required this.displayName,
    required this.etag,
    required this.expireTime,
    required this.kmsKeyName,
    required this.kmsKeyVersionName,
    required this.name,
    required this.phrases,
    required this.reconciling,
    required this.state,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'boost': boost,
      'deleteTime': deleteTime,
      'displayName': displayName,
      'etag': etag,
      'expireTime': expireTime,
      'kmsKeyName': kmsKeyName,
      'kmsKeyVersionName': kmsKeyVersionName,
      'name': name,
      'phrases': pulumi.Input.encodeList<PhraseResponse, Map<String, dynamic>>(
        phrases,
        (value) => value.toMap(),
      ),
      'reconciling': reconciling,
      'state': state,
      'uid': uid,
    };
  }

  factory GetPhraseSetResult.fromMap(Map<String, dynamic> map) {
    return GetPhraseSetResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      boost: map['boost'] as double,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      expireTime: map['expireTime'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      kmsKeyVersionName: map['kmsKeyVersionName'] as String,
      name: map['name'] as String,
      phrases: pulumi.Input.decodeList<PhraseResponse>(
        map['phrases']!,
        (value) =>
            PhraseResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      reconciling: map['reconciling'] as bool,
      state: map['state'] as String,
      uid: map['uid'] as String,
    );
  }
}
