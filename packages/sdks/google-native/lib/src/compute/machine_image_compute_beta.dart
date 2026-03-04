import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_response_compute_beta.dart';
import 'instance_properties_response_compute_beta.dart';
import 'machine_image_compute_beta_args.dart';
import 'source_instance_properties_response_compute_beta.dart';

/// Creates a machine image in the specified project using the data that is included in the request. If you are creating a new machine image to update an existing instance, your new machine image should use the same network or, if applicable, the same subnetwork as the original instance.
class MachineImageComputeBeta extends pulumi.CustomResource {
  /// The creation timestamp for this machine image in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// [Input Only] Whether to attempt an application consistent machine image by informing the OS to prepare for the snapshot process.
  late final pulumi.Output<bool> guestFlush;

  /// Properties of source instance
  late final pulumi.Output<InstancePropertiesResponseComputeBeta>
  instanceProperties;

  /// The resource type, which is always compute#machineImage for machine image.
  late final pulumi.Output<String> kind;

  /// Encrypts the machine image using a customer-supplied encryption key. After you encrypt a machine image using a customer-supplied key, you must provide the same key if you use the machine image later. For example, you must provide the encryption key when you create an instance from the encrypted machine image in a future request. Customer-supplied encryption keys do not protect access to metadata of the machine image. If you do not provide an encryption key when creating the machine image, then the machine image will be encrypted using an automatically generated key and you do not need to provide a key to use the machine image later.
  late final pulumi.Output<CustomerEncryptionKeyResponseComputeBeta>
  machineImageEncryptionKey;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzs;

  /// An array of Machine Image specific properties for disks attached to the source instance
  late final pulumi.Output<List<Map<String, dynamic>>> savedDisks;

  /// The URL for this machine image. The server defines this URL.
  late final pulumi.Output<String> selfLink;

  /// [Input Only] The customer-supplied encryption key of the disks attached to the source instance. Required if the source disk is protected by a customer-supplied encryption key.
  late final pulumi.Output<List<Map<String, dynamic>>> sourceDiskEncryptionKeys;

  /// Required. Source instance that is used to create the machine image from.
  late final pulumi.Output<String> sourceInstance;

  /// DEPRECATED: Please use instance_properties instead for source instance related properties. New properties will not be added to this field.
  late final pulumi.Output<SourceInstancePropertiesResponseComputeBeta>
  sourceInstanceProperties;

  /// The status of the machine image. One of the following values: INVALID, CREATING, READY, DELETING, and UPLOADING.
  late final pulumi.Output<String> status;

  /// The regional or multi-regional Cloud Storage bucket location where the machine image is stored.
  late final pulumi.Output<List<String>> storageLocations;

  /// Total size of the storage used by the machine image.
  late final pulumi.Output<String> totalStorageBytes;

  /// Creates a new [MachineImageComputeBeta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MachineImageComputeBeta]. {@macro pulumi_compute_beta_machine_image_compute_beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MachineImageComputeBeta(
    String name, {
    MachineImageComputeBetaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/beta:MachineImage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    guestFlush = registerOutput<bool>('guestFlush');
    instanceProperties = registerOutput<InstancePropertiesResponseComputeBeta>(
      'instanceProperties',
    );
    kind = registerOutput<String>('kind');
    machineImageEncryptionKey =
        registerOutput<CustomerEncryptionKeyResponseComputeBeta>(
          'machineImageEncryptionKey',
        );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    savedDisks = registerOutput<List<Map<String, dynamic>>>('savedDisks');
    selfLink = registerOutput<String>('selfLink');
    sourceDiskEncryptionKeys = registerOutput<List<Map<String, dynamic>>>(
      'sourceDiskEncryptionKeys',
    );
    sourceInstance = registerOutput<String>('sourceInstance');
    sourceInstanceProperties =
        registerOutput<SourceInstancePropertiesResponseComputeBeta>(
          'sourceInstanceProperties',
        );
    status = registerOutput<String>('status');
    storageLocations = registerOutput<List<String>>('storageLocations');
    totalStorageBytes = registerOutput<String>('totalStorageBytes');
  }
}
