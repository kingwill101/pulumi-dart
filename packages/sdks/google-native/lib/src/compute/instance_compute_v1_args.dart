// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_compute_v1.dart';
import 'advanced_machine_features_compute_v1.dart';
import 'attached_disk_compute_v1.dart';
import 'confidential_instance_config_compute_v1.dart';
import 'customer_encryption_key_compute_v1.dart';
import 'display_device_compute_v1.dart';
import 'instance_key_revocation_action_type_compute_v1.dart';
import 'instance_params_compute_v1.dart';
import 'instance_private_ipv6_google_access_compute_v1.dart';
import 'metadata_compute_v1.dart';
import 'network_interface_compute_v1.dart';
import 'network_performance_config_compute_v1.dart';
import 'reservation_affinity_compute_v1.dart';
import 'scheduling_compute_v1.dart';
import 'service_account_compute_v1.dart';
import 'shielded_instance_config_compute_v1.dart';
import 'shielded_instance_integrity_policy_compute_v1.dart';
import 'tags_compute_v1.dart';

/// {@template pulumi_compute_v1_instance_compute_v1_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_instance_compute_v1_args_doc}
class InstanceComputeV1Args {
  /// Controls for advanced machine-related behavior features.
  final pulumi.Input<AdvancedMachineFeaturesComputeV1>? advancedMachineFeatures;
  /// Allows this instance to send and receive packets with non-matching destination or source IPs. This is required if you plan to use this instance to forward routes. For more information, see Enabling IP Forwarding .
  final pulumi.Input<bool>? canIpForward;
  final pulumi.Input<ConfidentialInstanceConfigComputeV1>? confidentialInstanceConfig;
  /// Whether the resource should be protected against deletion.
  final pulumi.Input<bool>? deletionProtection;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Array of disks associated with this instance. Persistent disks must be created before you can assign them.
  final pulumi.Input<List<AttachedDiskComputeV1>>? disks;
  /// Enables display device for the instance.
  final pulumi.Input<DisplayDeviceComputeV1>? displayDevice;
  /// A list of the type and count of accelerator cards attached to the instance.
  final pulumi.Input<List<AcceleratorConfigComputeV1>>? guestAccelerators;
  /// Specifies the hostname of the instance. The specified hostname must be RFC1035 compliant. If hostname is not specified, the default hostname is [INSTANCE_NAME].c.[PROJECT_ID].internal when using the global DNS, and [INSTANCE_NAME].[ZONE].c.[PROJECT_ID].internal when using zonal DNS.
  final pulumi.Input<String>? hostname;
  /// Encrypts suspended data for an instance with a customer-managed encryption key. If you are creating a new instance, this field will encrypt the local SSD and in-memory contents of the instance during the suspend operation. If you do not provide an encryption key when creating the instance, then the local SSD and in-memory contents will be encrypted using an automatically generated key during the suspend operation.
  final pulumi.Input<CustomerEncryptionKeyComputeV1>? instanceEncryptionKey;
  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final pulumi.Input<InstanceKeyRevocationActionTypeComputeV1>? keyRevocationActionType;
  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  final pulumi.Input<Map<String, String>>? labels;
  /// Full or partial URL of the machine type resource to use for this instance, in the format: zones/zone/machineTypes/machine-type. This is provided by the client when the instance is created. For example, the following is a valid partial url to a predefined machine type: zones/us-central1-f/machineTypes/n1-standard-1 To create a custom machine type, provide a URL to a machine type in the following format, where CPUS is 1 or an even number up to 32 (2, 4, 6, ... 24, etc), and MEMORY is the total memory for this instance. Memory must be a multiple of 256 MB and must be supplied in MB (e.g. 5 GB of memory is 5120 MB): zones/zone/machineTypes/custom-CPUS-MEMORY For example: zones/us-central1-f/machineTypes/custom-4-5120 For a full list of restrictions, read the Specifications for custom machine types.
  final pulumi.Input<String>? machineType;
  /// The metadata key/value pairs assigned to this instance. This includes custom metadata and predefined keys.
  final pulumi.Input<MetadataComputeV1>? metadata;
  /// Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge".
  final pulumi.Input<String>? minCpuPlatform;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// An array of network configurations for this instance. These specify how interfaces are configured to interact with other network services, such as connecting to the internet. Multiple interfaces are supported per instance.
  final pulumi.Input<List<NetworkInterfaceComputeV1>>? networkInterfaces;
  final pulumi.Input<NetworkPerformanceConfigComputeV1>? networkPerformanceConfig;
  /// Input only. [Input Only] Additional params passed with the request, but not persisted as part of resource payload.
  final pulumi.Input<InstanceParamsComputeV1>? params;
  /// The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBNETWORK as default.
  final pulumi.Input<InstancePrivateIpv6GoogleAccessComputeV1>? privateIpv6GoogleAccess;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Specifies the reservations that this instance can consume from.
  final pulumi.Input<ReservationAffinityComputeV1>? reservationAffinity;
  /// Resource policies applied to this instance.
  final pulumi.Input<List<String>>? resourcePolicies;
  /// Sets the scheduling options for this instance.
  final pulumi.Input<SchedulingComputeV1>? scheduling;
  /// A list of service accounts, with their specified scopes, authorized for this instance. Only one service account per VM instance is supported. Service accounts generate access tokens that can be accessed through the metadata server and used to authenticate applications on the instance. See Service Accounts for more information.
  final pulumi.Input<List<ServiceAccountComputeV1>>? serviceAccounts;
  final pulumi.Input<ShieldedInstanceConfigComputeV1>? shieldedInstanceConfig;
  final pulumi.Input<ShieldedInstanceIntegrityPolicyComputeV1>? shieldedInstanceIntegrityPolicy;
  /// Specifies instance template to create the instance. This field is optional. It can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  final pulumi.Input<String>? sourceInstanceTemplate;
  /// Source machine image
  final pulumi.Input<String>? sourceMachineImage;
  /// Source machine image encryption key when creating an instance from a machine image.
  final pulumi.Input<CustomerEncryptionKeyComputeV1>? sourceMachineImageEncryptionKey;
  /// Tags to apply to this instance. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during instance creation. The tags can be later modified by the setTags method. Each tag within the list must comply with RFC1035. Multiple tags can be specified via the 'tags.items' field.
  final pulumi.Input<TagsComputeV1>? tags;
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceComputeV1Args].
  /// [advancedMachineFeatures] Controls for advanced machine-related behavior features.
  /// [canIpForward] Allows this instance to send and receive packets with non-matching destination or source IPs. This is required if you plan to use this instance to forward routes. For more information, see Enabling IP Forwarding .
  /// [confidentialInstanceConfig] Optional.
  /// [deletionProtection] Whether the resource should be protected against deletion.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [disks] Array of disks associated with this instance. Persistent disks must be created before you can assign them.
  /// [displayDevice] Enables display device for the instance.
  /// [guestAccelerators] A list of the type and count of accelerator cards attached to the instance.
  /// [hostname] Specifies the hostname of the instance. The specified hostname must be RFC1035 compliant. If hostname is not specified, the default hostname is [INSTANCE_NAME].c.[PROJECT_ID].internal when using the global DNS, and [INSTANCE_NAME].[ZONE].c.[PROJECT_ID].internal when using zonal DNS.
  /// [instanceEncryptionKey] Encrypts suspended data for an instance with a customer-managed encryption key. If you are creating a new instance, this field will encrypt the local SSD and in-memory contents of the instance during the suspend operation. If you do not provide an encryption key when creating the instance, then the local SSD and in-memory contents will be encrypted using an automatically generated key during the suspend operation.
  /// [keyRevocationActionType] KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  /// [labels] Labels to apply to this instance. These can be later modified by the setLabels method.
  /// [machineType] Full or partial URL of the machine type resource to use for this instance, in the format: zones/zone/machineTypes/machine-type. This is provided by the client when the instance is created. For example, the following is a valid partial url to a predefined machine type: zones/us-central1-f/machineTypes/n1-standard-1 To create a custom machine type, provide a URL to a machine type in the following format, where CPUS is 1 or an even number up to 32 (2, 4, 6, ... 24, etc), and MEMORY is the total memory for this instance. Memory must be a multiple of 256 MB and must be supplied in MB (e.g. 5 GB of memory is 5120 MB): zones/zone/machineTypes/custom-CPUS-MEMORY For example: zones/us-central1-f/machineTypes/custom-4-5120 For a full list of restrictions, read the Specifications for custom machine types.
  /// [metadata] The metadata key/value pairs assigned to this instance. This includes custom metadata and predefined keys.
  /// [minCpuPlatform] Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge".
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [networkInterfaces] An array of network configurations for this instance. These specify how interfaces are configured to interact with other network services, such as connecting to the internet. Multiple interfaces are supported per instance.
  /// [networkPerformanceConfig] Optional.
  /// [params] Input only. [Input Only] Additional params passed with the request, but not persisted as part of resource payload.
  /// [privateIpv6GoogleAccess] The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBNETWORK as default.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [reservationAffinity] Specifies the reservations that this instance can consume from.
  /// [resourcePolicies] Resource policies applied to this instance.
  /// [scheduling] Sets the scheduling options for this instance.
  /// [serviceAccounts] A list of service accounts, with their specified scopes, authorized for this instance. Only one service account per VM instance is supported. Service accounts generate access tokens that can be accessed through the metadata server and used to authenticate applications on the instance. See Service Accounts for more information.
  /// [shieldedInstanceConfig] Optional.
  /// [shieldedInstanceIntegrityPolicy] Optional.
  /// [sourceInstanceTemplate] Specifies instance template to create the instance. This field is optional. It can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  /// [sourceMachineImage] Source machine image
  /// [sourceMachineImageEncryptionKey] Source machine image encryption key when creating an instance from a machine image.
  /// [tags] Tags to apply to this instance. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during instance creation. The tags can be later modified by the setTags method. Each tag within the list must comply with RFC1035. Multiple tags can be specified via the 'tags.items' field.
  /// [zone] Optional.
  InstanceComputeV1Args({
    this.advancedMachineFeatures,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.deletionProtection,
    this.description,
    this.disks,
    this.displayDevice,
    this.guestAccelerators,
    this.hostname,
    this.instanceEncryptionKey,
    this.keyRevocationActionType,
    this.labels,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
    this.name,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.params,
    this.privateIpv6GoogleAccess,
    this.project,
    this.requestId,
    this.reservationAffinity,
    this.resourcePolicies,
    this.scheduling,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
    this.shieldedInstanceIntegrityPolicy,
    this.sourceInstanceTemplate,
    this.sourceMachineImage,
    this.sourceMachineImageEncryptionKey,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<AdvancedMachineFeaturesComputeV1, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ConfidentialInstanceConfigComputeV1, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<AttachedDiskComputeV1>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<AttachedDiskComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayDevice': ?pulumi.Input.mapOptionalInputValue<DisplayDeviceComputeV1, Map<String, dynamic>>(displayDevice, (value) => value.toMap()),
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<AcceleratorConfigComputeV1>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'instanceEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeV1, Map<String, dynamic>>(instanceEncryptionKey, (value) => value.toMap()),
      'keyRevocationActionType': ?pulumi.Input.mapOptionalInputValue<InstanceKeyRevocationActionTypeComputeV1, String>(keyRevocationActionType, (value) => value.value),
      'labels': ?labels,
      'machineType': ?machineType,
      'metadata': ?pulumi.Input.mapOptionalInputValue<MetadataComputeV1, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'minCpuPlatform': ?minCpuPlatform,
      'name': ?name,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceComputeV1>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfigComputeV1, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'params': ?pulumi.Input.mapOptionalInputValue<InstanceParamsComputeV1, Map<String, dynamic>>(params, (value) => value.toMap()),
      'privateIpv6GoogleAccess': ?pulumi.Input.mapOptionalInputValue<InstancePrivateIpv6GoogleAccessComputeV1, String>(privateIpv6GoogleAccess, (value) => value.value),
      'project': ?project,
      'requestId': ?requestId,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<ReservationAffinityComputeV1, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourcePolicies': ?resourcePolicies,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<SchedulingComputeV1, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'serviceAccounts': ?pulumi.Input.mapOptionalInputValue<List<ServiceAccountComputeV1>, List<Map<String, dynamic>>>(serviceAccounts, (value) => pulumi.Input.encodeList<ServiceAccountComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceConfigComputeV1, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'shieldedInstanceIntegrityPolicy': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceIntegrityPolicyComputeV1, Map<String, dynamic>>(shieldedInstanceIntegrityPolicy, (value) => value.toMap()),
      'sourceInstanceTemplate': ?sourceInstanceTemplate,
      'sourceMachineImage': ?sourceMachineImage,
      'sourceMachineImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeV1, Map<String, dynamic>>(sourceMachineImageEncryptionKey, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<TagsComputeV1, Map<String, dynamic>>(tags, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory InstanceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return InstanceComputeV1Args(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null ? null : (AdvancedMachineFeaturesComputeV1.fromMap((map['advancedMachineFeatures']! as Map).cast<String, dynamic>())).input(),
      canIpForward: map['canIpForward'] == null ? null : (map['canIpForward']! as bool).input(),
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null ? null : (ConfidentialInstanceConfigComputeV1.fromMap((map['confidentialInstanceConfig']! as Map).cast<String, dynamic>())).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<AttachedDiskComputeV1>(map['disks']!, (value) => AttachedDiskComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayDevice: map['displayDevice'] == null ? null : (DisplayDeviceComputeV1.fromMap((map['displayDevice']! as Map).cast<String, dynamic>())).input(),
      guestAccelerators: map['guestAccelerators'] == null ? null : (pulumi.Input.decodeList<AcceleratorConfigComputeV1>(map['guestAccelerators']!, (value) => AcceleratorConfigComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      instanceEncryptionKey: map['instanceEncryptionKey'] == null ? null : (CustomerEncryptionKeyComputeV1.fromMap((map['instanceEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      keyRevocationActionType: map['keyRevocationActionType'] == null ? null : (InstanceKeyRevocationActionTypeComputeV1.fromValue(map['keyRevocationActionType']! as String)).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      machineType: map['machineType'] == null ? null : (map['machineType']! as String).input(),
      metadata: map['metadata'] == null ? null : (MetadataComputeV1.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<NetworkInterfaceComputeV1>(map['networkInterfaces']!, (value) => NetworkInterfaceComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null ? null : (NetworkPerformanceConfigComputeV1.fromMap((map['networkPerformanceConfig']! as Map).cast<String, dynamic>())).input(),
      params: map['params'] == null ? null : (InstanceParamsComputeV1.fromMap((map['params']! as Map).cast<String, dynamic>())).input(),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null ? null : (InstancePrivateIpv6GoogleAccessComputeV1.fromValue(map['privateIpv6GoogleAccess']! as String)).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      reservationAffinity: map['reservationAffinity'] == null ? null : (ReservationAffinityComputeV1.fromMap((map['reservationAffinity']! as Map).cast<String, dynamic>())).input(),
      resourcePolicies: map['resourcePolicies'] == null ? null : ((map['resourcePolicies']! as List).cast<String>()).input(),
      scheduling: map['scheduling'] == null ? null : (SchedulingComputeV1.fromMap((map['scheduling']! as Map).cast<String, dynamic>())).input(),
      serviceAccounts: map['serviceAccounts'] == null ? null : (pulumi.Input.decodeList<ServiceAccountComputeV1>(map['serviceAccounts']!, (value) => ServiceAccountComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (ShieldedInstanceConfigComputeV1.fromMap((map['shieldedInstanceConfig']! as Map).cast<String, dynamic>())).input(),
      shieldedInstanceIntegrityPolicy: map['shieldedInstanceIntegrityPolicy'] == null ? null : (ShieldedInstanceIntegrityPolicyComputeV1.fromMap((map['shieldedInstanceIntegrityPolicy']! as Map).cast<String, dynamic>())).input(),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] == null ? null : (map['sourceInstanceTemplate']! as String).input(),
      sourceMachineImage: map['sourceMachineImage'] == null ? null : (map['sourceMachineImage']! as String).input(),
      sourceMachineImageEncryptionKey: map['sourceMachineImageEncryptionKey'] == null ? null : (CustomerEncryptionKeyComputeV1.fromMap((map['sourceMachineImageEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (TagsComputeV1.fromMap((map['tags']! as Map).cast<String, dynamic>())).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

