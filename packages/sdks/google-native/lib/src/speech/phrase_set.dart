import 'package:pulumi/pulumi.dart' as pulumi;
import 'phrase_set_args.dart';

/// Create a set of phrase hints. Each item in the set can be a single word or a multi-word phrase. The items in the PhraseSet are favored by the recognition model when you send a call that includes the PhraseSet.
class PhraseSet extends pulumi.CustomResource {
  /// Allows users to store small amounts of arbitrary data. Both the key and the value must be 63 characters or less each. At most 100 annotations. This field is not used.
  late final pulumi.Output<Map<String, String>> annotations;
  /// Hint Boost. Positive value will increase the probability that a specific phrase will be recognized over other similar sounding phrases. The higher the boost, the higher the chance of false positive recognition as well. Negative boost values would correspond to anti-biasing. Anti-biasing is not enabled, so negative boost will simply be ignored. Though `boost` can accept a wide range of positive values, most use cases are best served with values between 0 (exclusive) and 20. We recommend using a binary search approach to finding the optimal value for your use case as well as adding phrases both with and without boost to your requests.
  late final pulumi.Output<double> boost;
  /// The time at which this resource was requested for deletion. This field is not used.
  late final pulumi.Output<String> deleteTime;
  /// User-settable, human-readable name for the PhraseSet. Must be 63 characters or less. This field is not used.
  late final pulumi.Output<String> displayName;
  /// This checksum is computed by the server based on the value of other fields. This may be sent on update, undelete, and delete requests to ensure the client has an up-to-date value before proceeding. This field is not used.
  late final pulumi.Output<String> etag;
  /// The time at which this resource will be purged. This field is not used.
  late final pulumi.Output<String> expireTime;
  /// The [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with which the content of the PhraseSet is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  late final pulumi.Output<String> kmsKeyName;
  /// The [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions) with which content of the PhraseSet is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  late final pulumi.Output<String> kmsKeyVersionName;
  late final pulumi.Output<String> location;
  /// The resource name of the phrase set.
  late final pulumi.Output<String> name;
  /// A list of word and phrases.
  late final pulumi.Output<List<Map<String, dynamic>>> phrases;
  late final pulumi.Output<String> project;
  /// Whether or not this PhraseSet is in the process of being updated. This field is not used.
  late final pulumi.Output<bool> reconciling;
  /// The CustomClass lifecycle state. This field is not used.
  late final pulumi.Output<String> state;
  /// System-assigned unique identifier for the PhraseSet. This field is not used.
  late final pulumi.Output<String> uid;

  /// Creates a new [PhraseSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PhraseSet]. {@macro pulumi_speech_v1_phrase_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PhraseSet(
    String name, {
    PhraseSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:speech/v1:PhraseSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    boost = registerOutput<double>('boost');
    deleteTime = registerOutput<String>('deleteTime');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    expireTime = registerOutput<String>('expireTime');
    kmsKeyName = registerOutput<String>('kmsKeyName');
    kmsKeyVersionName = registerOutput<String>('kmsKeyVersionName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    phrases = registerOutput<List<Map<String, dynamic>>>('phrases');
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
  }
}
