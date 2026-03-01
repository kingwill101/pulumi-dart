// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_pool_resource_status.dart';
import 'storage_pool_status.dart';

/// Input properties used for looking up and filtering StoragePool resources.
class StoragePoolState {
  /// Provisioning type of the byte capacity of the pool.
  /// Possible values are: `STANDARD`, `ADVANCED`.
  final pulumi.Input<String>? capacityProvisioningType;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  final pulumi.Input<bool>? deletionProtection;
  /// A description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Type of the resource.
  final pulumi.Input<String>? kind;
  /// The fingerprint used for optimistic locking of this resource.
  /// Used internally during updates.
  final pulumi.Input<String>? labelFingerprint;
  /// Labels to apply to this storage pool. These can be later modified by the setLabels method.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?`
  /// which means the first character must be a lowercase letter,
  /// and all following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
  /// Possible values are: `STANDARD`, `ADVANCED`.
  final pulumi.Input<String>? performanceProvisioningType;
  /// Size, in GiB, of the storage pool. For more information about the size limits,
  /// see https://cloud.google.com/compute/docs/disks/storage-pools.
  final pulumi.Input<String>? poolProvisionedCapacityGb;
  /// Provisioned IOPS of the storage pool.
  /// Only relevant if the storage pool type is `hyperdisk-balanced`.
  final pulumi.Input<String>? poolProvisionedIops;
  /// Provisioned throughput, in MB/s, of the storage pool.
  /// Only relevant if the storage pool type is `hyperdisk-balanced` or `hyperdisk-throughput`.
  final pulumi.Input<String>? poolProvisionedThroughput;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Status information for the storage pool resource.
  /// Structure is documented below.
  final pulumi.Input<List<StoragePoolResourceStatus>>? resourceStatuses;
  /// Status information for the storage pool resource.
  /// Structure is documented below.
  final pulumi.Input<List<StoragePoolStatus>>? statuses;
  /// Type of the storage pool. For example, the
  /// following are valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/{project_id}/zones/{zone}/storagePoolTypes/hyperdisk-balanced`
  /// * `hyperdisk-throughput`
  final pulumi.Input<String>? storagePoolType;
  /// A reference to the zone where the storage pool resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [StoragePoolState].
  /// [capacityProvisioningType] Provisioning type of the byte capacity of the pool.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionProtection] Optional.
  /// [description] A description of this resource. Provide this property when you create the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [kind] Type of the resource.
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.
  /// [labels] Labels to apply to this storage pool. These can be later modified by the setLabels method.
  /// [name] Name of the resource. Provided by the client when the resource is created.
  /// [performanceProvisioningType] Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
  /// [poolProvisionedCapacityGb] Size, in GiB, of the storage pool. For more information about the size limits,
  /// [poolProvisionedIops] Provisioned IOPS of the storage pool.
  /// [poolProvisionedThroughput] Provisioned throughput, in MB/s, of the storage pool.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [resourceStatuses] Status information for the storage pool resource.
  /// [statuses] Status information for the storage pool resource.
  /// [storagePoolType] Type of the storage pool. For example, the
  /// [zone] A reference to the zone where the storage pool resides.
  StoragePoolState({
    pulumi.Output<String>? capacityProvisioningType,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? labelFingerprint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? performanceProvisioningType,
    pulumi.Output<String>? poolProvisionedCapacityGb,
    pulumi.Output<String>? poolProvisionedIops,
    pulumi.Output<String>? poolProvisionedThroughput,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<StoragePoolResourceStatus>>? resourceStatuses,
    pulumi.Output<List<StoragePoolStatus>>? statuses,
    pulumi.Output<String>? storagePoolType,
    pulumi.Output<String>? zone,
  }) :
      capacityProvisioningType = pulumi.Input.asOptionalInput<String>(capacityProvisioningType),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      labelFingerprint = pulumi.Input.asOptionalInput<String>(labelFingerprint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      performanceProvisioningType = pulumi.Input.asOptionalInput<String>(performanceProvisioningType),
      poolProvisionedCapacityGb = pulumi.Input.asOptionalInput<String>(poolProvisionedCapacityGb),
      poolProvisionedIops = pulumi.Input.asOptionalInput<String>(poolProvisionedIops),
      poolProvisionedThroughput = pulumi.Input.asOptionalInput<String>(poolProvisionedThroughput),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      resourceStatuses = pulumi.Input.asOptionalInput<List<StoragePoolResourceStatus>>(resourceStatuses),
      statuses = pulumi.Input.asOptionalInput<List<StoragePoolStatus>>(statuses),
      storagePoolType = pulumi.Input.asOptionalInput<String>(storagePoolType),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProvisioningType': ?capacityProvisioningType,
      'creationTimestamp': ?creationTimestamp,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'kind': ?kind,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'name': ?name,
      'performanceProvisioningType': ?performanceProvisioningType,
      'poolProvisionedCapacityGb': ?poolProvisionedCapacityGb,
      'poolProvisionedIops': ?poolProvisionedIops,
      'poolProvisionedThroughput': ?poolProvisionedThroughput,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'resourceStatuses': ?pulumi.Input.mapOptionalInputValue<List<StoragePoolResourceStatus>, List<Map<String, dynamic>>>(resourceStatuses, (value) => pulumi.Input.encodeList<StoragePoolResourceStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<StoragePoolStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<StoragePoolStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storagePoolType': ?storagePoolType,
      'zone': ?zone,
    };
  }

  factory StoragePoolState.fromMap(Map<String, dynamic> map) {
    return StoragePoolState(
      capacityProvisioningType: map['capacityProvisioningType'] == null ? null : pulumi.Output.create<String>(map['capacityProvisioningType'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      labelFingerprint: map['labelFingerprint'] == null ? null : pulumi.Output.create<String>(map['labelFingerprint'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      performanceProvisioningType: map['performanceProvisioningType'] == null ? null : pulumi.Output.create<String>(map['performanceProvisioningType'] as String),
      poolProvisionedCapacityGb: map['poolProvisionedCapacityGb'] == null ? null : pulumi.Output.create<String>(map['poolProvisionedCapacityGb'] as String),
      poolProvisionedIops: map['poolProvisionedIops'] == null ? null : pulumi.Output.create<String>(map['poolProvisionedIops'] as String),
      poolProvisionedThroughput: map['poolProvisionedThroughput'] == null ? null : pulumi.Output.create<String>(map['poolProvisionedThroughput'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      resourceStatuses: map['resourceStatuses'] == null ? null : pulumi.Output.create<List<StoragePoolResourceStatus>>(pulumi.Input.decodeList<StoragePoolResourceStatus>(map['resourceStatuses'], (value) => StoragePoolResourceStatus.fromMap((value as Map).cast<String, dynamic>()))),
      statuses: map['statuses'] == null ? null : pulumi.Output.create<List<StoragePoolStatus>>(pulumi.Input.decodeList<StoragePoolStatus>(map['statuses'], (value) => StoragePoolStatus.fromMap((value as Map).cast<String, dynamic>()))),
      storagePoolType: map['storagePoolType'] == null ? null : pulumi.Output.create<String>(map['storagePoolType'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

