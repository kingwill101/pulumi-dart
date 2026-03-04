import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'tensorboard_aiplatform_v1beta1_args.dart';

/// Creates a Tensorboard.
/// Auto-naming is currently not supported for this resource.
class TensorboardAiplatformV1beta1 extends pulumi.CustomResource {
  /// Consumer project Cloud Storage path prefix used to store blob data, which can either be a bucket or directory. Does not end with a '/'.
  late final pulumi.Output<String> blobStoragePathPrefix;

  /// Timestamp when this Tensorboard was created.
  late final pulumi.Output<String> createTime;

  /// Description of this Tensorboard.
  late final pulumi.Output<String> description;

  /// User provided name of this Tensorboard.
  late final pulumi.Output<String> displayName;

  /// Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>
  encryptionSpec;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;

  /// Used to indicate if the TensorBoard instance is the default one. Each project & region can have at most one default TensorBoard instance. Creation of a default TensorBoard instance and updating an existing TensorBoard instance to be default will mark all other TensorBoard instances (if any) as non default.
  late final pulumi.Output<bool> isDefault;

  /// The labels with user-defined metadata to organize your Tensorboards. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Tensorboard (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Name of the Tensorboard. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The number of Runs stored in this Tensorboard.
  late final pulumi.Output<int> runCount;

  /// Timestamp when this Tensorboard was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TensorboardAiplatformV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TensorboardAiplatformV1beta1]. {@macro pulumi_aiplatform_v1beta1_tensorboard_aiplatform_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TensorboardAiplatformV1beta1(
    String name, {
    TensorboardAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:aiplatform/v1beta1:Tensorboard',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    blobStoragePathPrefix = registerOutput<String>('blobStoragePathPrefix');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    encryptionSpec =
        registerOutput<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>(
          'encryptionSpec',
        );
    etag = registerOutput<String>('etag');
    isDefault = registerOutput<bool>('isDefault');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    runCount = registerOutput<int>('runCount');
    updateTime = registerOutput<String>('updateTime');
  }
}
