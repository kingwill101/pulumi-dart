import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_config_response.dart';
import 'instance_args.dart';
import 'network_config_response.dart';

/// Creates an instance. When creating from a backup, the capacity of the new instance needs to be equal to or larger than the capacity of the backup (and also equal to or larger than the minimum capacity of the tier).
/// Auto-naming is currently not supported for this resource.
class Instance extends pulumi.CustomResource {
  /// The time when the instance was created.
  late final pulumi.Output<String> createTime;
  /// The description of the instance (2048 characters or less).
  late final pulumi.Output<String> description;
  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  late final pulumi.Output<String> etag;
  /// File system shares on the instance. For this version, only a single file share is supported.
  late final pulumi.Output<List<FileShareConfigResponse>> fileShares;
  /// Required. The name of the instance to create. The name must be unique for the specified project and location.
  late final pulumi.Output<String> instanceId;
  /// KMS key name used for data encryption.
  late final pulumi.Output<String> kmsKeyName;
  /// Resource labels to represent user provided metadata.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The resource name of the instance, in the format `projects/{project}/locations/{location}/instances/{instance}`.
  late final pulumi.Output<String> name;
  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  late final pulumi.Output<List<NetworkConfigResponse>> networks;
  late final pulumi.Output<String> project;
  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzs;
  /// The instance state.
  late final pulumi.Output<String> state;
  /// Additional information about the instance state, if available.
  late final pulumi.Output<String> statusMessage;
  /// Field indicates all the reasons the instance is in "SUSPENDED" state.
  late final pulumi.Output<List<String>> suspensionReasons;
  /// The service tier of the instance.
  late final pulumi.Output<String> tier;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_file_v1_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:file/v1:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['instanceId', 'location', 'project']).merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    etag = registerOutput<String>('etag');
    fileShares = registerOutput<List<FileShareConfigResponse>>('fileShares', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FileShareConfigResponse>(guardedValue, (value) => FileShareConfigResponse.fromMap((value as Map).cast<String, dynamic>())); });
    instanceId = registerOutput<String>('instanceId');
    kmsKeyName = registerOutput<String>('kmsKeyName');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<NetworkConfigResponse>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkConfigResponse>(guardedValue, (value) => NetworkConfigResponse.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    state = registerOutput<String>('state');
    statusMessage = registerOutput<String>('statusMessage');
    suspensionReasons = registerOutput<List<String>>('suspensionReasons', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tier = registerOutput<String>('tier');
  }

  /// Creates a typed reference to an existing [Instance] resource.
  Instance.reference(String urn)
    : super(
        'google-native:file/v1:Instance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    etag = registerOutput<String>('etag');
    fileShares = registerOutput<List<FileShareConfigResponse>>('fileShares', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FileShareConfigResponse>(guardedValue, (value) => FileShareConfigResponse.fromMap((value as Map).cast<String, dynamic>())); });
    instanceId = registerOutput<String>('instanceId');
    kmsKeyName = registerOutput<String>('kmsKeyName');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<NetworkConfigResponse>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkConfigResponse>(guardedValue, (value) => NetworkConfigResponse.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    state = registerOutput<String>('state');
    statusMessage = registerOutput<String>('statusMessage');
    suspensionReasons = registerOutput<List<String>>('suspensionReasons', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tier = registerOutput<String>('tier');
  }
}
