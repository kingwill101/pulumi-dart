import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_class_args.dart';

/// Create a custom class.
class CustomClass extends pulumi.CustomResource {
  /// Allows users to store small amounts of arbitrary data. Both the key and the value must be 63 characters or less each. At most 100 annotations. This field is not used.
  late final pulumi.Output<Map<String, String>> annotations;
  /// If this custom class is a resource, the custom_class_id is the resource id of the CustomClass. Case sensitive.
  late final pulumi.Output<String> customClassId;
  /// The time at which this resource was requested for deletion. This field is not used.
  late final pulumi.Output<String> deleteTime;
  /// User-settable, human-readable name for the CustomClass. Must be 63 characters or less. This field is not used.
  late final pulumi.Output<String> displayName;
  /// This checksum is computed by the server based on the value of other fields. This may be sent on update, undelete, and delete requests to ensure the client has an up-to-date value before proceeding. This field is not used.
  late final pulumi.Output<String> etag;
  /// The time at which this resource will be purged. This field is not used.
  late final pulumi.Output<String> expireTime;
  /// A collection of class items.
  late final pulumi.Output<List<Map<String, dynamic>>> items;
  /// The [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with which the content of the ClassItem is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  late final pulumi.Output<String> kmsKeyName;
  /// The [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions) with which content of the ClassItem is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  late final pulumi.Output<String> kmsKeyVersionName;
  late final pulumi.Output<String> location;
  /// The resource name of the custom class.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Whether or not this CustomClass is in the process of being updated. This field is not used.
  late final pulumi.Output<bool> reconciling;
  /// The CustomClass lifecycle state. This field is not used.
  late final pulumi.Output<String> state;
  /// System-assigned unique identifier for the CustomClass. This field is not used.
  late final pulumi.Output<String> uid;

  /// Creates a new [CustomClass].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomClass]. {@macro pulumi_speech_v1_custom_class_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomClass(
    String name, {
    CustomClassArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:speech/v1:CustomClass',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    customClassId = registerOutput<String>('customClassId');
    deleteTime = registerOutput<String>('deleteTime');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    expireTime = registerOutput<String>('expireTime');
    items = registerOutput<List<Map<String, dynamic>>>('items');
    kmsKeyName = registerOutput<String>('kmsKeyName');
    kmsKeyVersionName = registerOutput<String>('kmsKeyVersionName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
  }
}
