import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_services_config_response.dart';
import 'instance_file_v1beta1_args.dart';

/// Creates an instance. When creating from a backup, the capacity of the new instance needs to be equal to or larger than the capacity of the backup (and also equal to or larger than the minimum capacity of the tier).
/// Auto-naming is currently not supported for this resource.
class InstanceFileV1beta1 extends pulumi.CustomResource {
  /// The storage capacity of the instance in gigabytes (GB = 1024^3 bytes). This capacity can be increased up to `max_capacity_gb` GB in multipliers of `capacity_step_size_gb` GB.
  late final pulumi.Output<String> capacityGb;
  /// The increase/decrease capacity step size.
  late final pulumi.Output<String> capacityStepSizeGb;
  /// The time when the instance was created.
  late final pulumi.Output<String> createTime;
  /// The description of the instance (2048 characters or less).
  late final pulumi.Output<String> description;
  /// Directory Services configuration for Kerberos-based authentication. Should only be set if protocol is "NFS_V4_1".
  late final pulumi.Output<DirectoryServicesConfigResponse> directoryServices;
  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  late final pulumi.Output<String> etag;
  /// File system shares on the instance. For this version, only a single file share is supported.
  late final pulumi.Output<List<Map<String, dynamic>>> fileShares;
  /// Required. The ID of the instance to create. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  late final pulumi.Output<String> instanceId;
  /// KMS key name used for data encryption.
  late final pulumi.Output<String> kmsKeyName;
  /// Resource labels to represent user provided metadata.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The max capacity of the instance.
  late final pulumi.Output<String> maxCapacityGb;
  /// The max number of shares allowed.
  late final pulumi.Output<String> maxShareCount;
  /// Indicates whether this instance uses a multi-share configuration with which it can have more than one file-share or none at all. File-shares are added, updated and removed through the separate file-share APIs.
  late final pulumi.Output<bool> multiShareEnabled;
  /// The resource name of the instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`.
  late final pulumi.Output<String> name;
  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  late final pulumi.Output<List<Map<String, dynamic>>> networks;
  late final pulumi.Output<String> project;
  /// Immutable. The protocol indicates the access protocol for all shares in the instance. This field is immutable and it cannot be changed after the instance has been created. Default value: `NFS_V3`.
  late final pulumi.Output<String> protocol;
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

  /// Creates a new [InstanceFileV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceFileV1beta1]. {@macro pulumi_file_v1beta1_instance_file_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceFileV1beta1(
    String name, {
    InstanceFileV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:file/v1beta1:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    capacityGb = registerOutput<String>('capacityGb');
    capacityStepSizeGb = registerOutput<String>('capacityStepSizeGb');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    directoryServices = registerOutput<DirectoryServicesConfigResponse>('directoryServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectoryServicesConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    fileShares = registerOutput<List<Map<String, dynamic>>>('fileShares');
    instanceId = registerOutput<String>('instanceId');
    kmsKeyName = registerOutput<String>('kmsKeyName');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    maxCapacityGb = registerOutput<String>('maxCapacityGb');
    maxShareCount = registerOutput<String>('maxShareCount');
    multiShareEnabled = registerOutput<bool>('multiShareEnabled');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<Map<String, dynamic>>>('networks');
    project = registerOutput<String>('project');
    protocol = registerOutput<String>('protocol');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    state = registerOutput<String>('state');
    statusMessage = registerOutput<String>('statusMessage');
    suspensionReasons = registerOutput<List<String>>('suspensionReasons');
    tier = registerOutput<String>('tier');
  }
}
