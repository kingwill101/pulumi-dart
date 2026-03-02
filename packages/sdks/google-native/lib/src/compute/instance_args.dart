// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config.dart';
import 'advanced_machine_features.dart';
import 'attached_disk.dart';
import 'confidential_instance_config.dart';
import 'customer_encryption_key.dart';
import 'display_device.dart';
import 'instance_key_revocation_action_type.dart';
import 'instance_params.dart';
import 'instance_post_key_revocation_action_type.dart';
import 'instance_private_ipv6_google_access.dart';
import 'metadata.dart';
import 'network_interface.dart';
import 'network_performance_config.dart';
import 'reservation_affinity.dart';
import 'scheduling.dart';
import 'service_account.dart';
import 'shielded_instance_config.dart';
import 'shielded_instance_integrity_policy.dart';
import 'shielded_vm_config.dart';
import 'shielded_vm_integrity_policy.dart';
import 'tags.dart';

/// {@template pulumi_compute_alpha_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_instance_args_doc}
class InstanceArgs {
  /// Controls for advanced machine-related behavior features.
  final pulumi.Input<AdvancedMachineFeatures>? advancedMachineFeatures;
  /// Allows this instance to send and receive packets with non-matching destination or source IPs. This is required if you plan to use this instance to forward routes. For more information, see Enabling IP Forwarding .
  final pulumi.Input<bool>? canIpForward;
  final pulumi.Input<ConfidentialInstanceConfig>? confidentialInstanceConfig;
  /// Whether the resource should be protected against deletion.
  final pulumi.Input<bool>? deletionProtection;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Array of disks associated with this instance. Persistent disks must be created before you can assign them.
  final pulumi.Input<List<AttachedDisk>>? disks;
  /// Enables display device for the instance.
  final pulumi.Input<DisplayDevice>? displayDevice;
  /// Specifies whether the disks restored from source snapshots or source machine image should erase Windows specific VSS signature.
  final pulumi.Input<bool>? eraseWindowsVssSignature;
  /// A list of the type and count of accelerator cards attached to the instance.
  final pulumi.Input<List<AcceleratorConfig>>? guestAccelerators;
  /// Specifies the hostname of the instance. The specified hostname must be RFC1035 compliant. If hostname is not specified, the default hostname is [INSTANCE_NAME].c.[PROJECT_ID].internal when using the global DNS, and [INSTANCE_NAME].[ZONE].c.[PROJECT_ID].internal when using zonal DNS.
  final pulumi.Input<String>? hostname;
  /// Encrypts suspended data for an instance with a customer-managed encryption key. If you are creating a new instance, this field will encrypt the local SSD and in-memory contents of the instance during the suspend operation. If you do not provide an encryption key when creating the instance, then the local SSD and in-memory contents will be encrypted using an automatically generated key during the suspend operation.
  final pulumi.Input<CustomerEncryptionKey>? instanceEncryptionKey;
  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final pulumi.Input<InstanceKeyRevocationActionType>? keyRevocationActionType;
  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  final pulumi.Input<Map<String, String>>? labels;
  /// Full or partial URL of the machine type resource to use for this instance, in the format: zones/zone/machineTypes/machine-type. This is provided by the client when the instance is created. For example, the following is a valid partial url to a predefined machine type: zones/us-central1-f/machineTypes/n1-standard-1 To create a custom machine type, provide a URL to a machine type in the following format, where CPUS is 1 or an even number up to 32 (2, 4, 6, ... 24, etc), and MEMORY is the total memory for this instance. Memory must be a multiple of 256 MB and must be supplied in MB (e.g. 5 GB of memory is 5120 MB): zones/zone/machineTypes/custom-CPUS-MEMORY For example: zones/us-central1-f/machineTypes/custom-4-5120 For a full list of restrictions, read the Specifications for custom machine types.
  final pulumi.Input<String>? machineType;
  /// The metadata key/value pairs assigned to this instance. This includes custom metadata and predefined keys.
  final pulumi.Input<Metadata>? metadata;
  /// Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge".
  final pulumi.Input<String>? minCpuPlatform;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// An array of network configurations for this instance. These specify how interfaces are configured to interact with other network services, such as connecting to the internet. Multiple interfaces are supported per instance.
  final pulumi.Input<List<NetworkInterface>>? networkInterfaces;
  final pulumi.Input<NetworkPerformanceConfig>? networkPerformanceConfig;
  /// Input only. [Input Only] Additional params passed with the request, but not persisted as part of resource payload.
  final pulumi.Input<InstanceParams>? params;
  /// Partner Metadata assigned to the instance. A map from a subdomain (namespace) to entries map.
  final pulumi.Input<Map<String, String>>? partnerMetadata;
  /// PostKeyRevocationActionType of the instance.
  final pulumi.Input<InstancePostKeyRevocationActionType>? postKeyRevocationActionType;
  /// Total amount of preserved state for SUSPENDED instances. Read-only in the api.
  final pulumi.Input<String>? preservedStateSizeGb;
  /// The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBNETWORK as default.
  final pulumi.Input<InstancePrivateIpv6GoogleAccess>? privateIpv6GoogleAccess;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Specifies the reservations that this instance can consume from.
  final pulumi.Input<ReservationAffinity>? reservationAffinity;
  /// Resource policies applied to this instance.
  final pulumi.Input<List<String>>? resourcePolicies;
  /// Sets the scheduling options for this instance.
  final pulumi.Input<Scheduling>? scheduling;
  /// [Input Only] Secure tags to apply to this instance. These can be later modified by the update method. Maximum number of secure tags allowed is 50.
  final pulumi.Input<List<String>>? secureTags;
  /// A list of service accounts, with their specified scopes, authorized for this instance. Only one service account per VM instance is supported. Service accounts generate access tokens that can be accessed through the metadata server and used to authenticate applications on the instance. See Service Accounts for more information.
  final pulumi.Input<List<ServiceAccount>>? serviceAccounts;
  /// Mapping of user-defined keys to specifications for service integrations. Currently only a single key-value pair is supported.
  final pulumi.Input<Map<String, String>>? serviceIntegrationSpecs;
  final pulumi.Input<ShieldedInstanceConfig>? shieldedInstanceConfig;
  final pulumi.Input<ShieldedInstanceIntegrityPolicy>? shieldedInstanceIntegrityPolicy;
  /// Deprecating, please use shielded_instance_config.
  final pulumi.Input<ShieldedVmConfig>? shieldedVmConfig;
  /// Deprecating, please use shielded_instance_integrity_policy.
  final pulumi.Input<ShieldedVmIntegrityPolicy>? shieldedVmIntegrityPolicy;
  /// Specifies instance template to create the instance. This field is optional. It can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  final pulumi.Input<String>? sourceInstanceTemplate;
  /// Source machine image
  final pulumi.Input<String>? sourceMachineImage;
  /// Source machine image encryption key when creating an instance from a machine image.
  final pulumi.Input<CustomerEncryptionKey>? sourceMachineImageEncryptionKey;
  /// Tags to apply to this instance. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during instance creation. The tags can be later modified by the setTags method. Each tag within the list must comply with RFC1035. Multiple tags can be specified via the 'tags.items' field.
  final pulumi.Input<Tags>? tags;
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceArgs].
  /// [advancedMachineFeatures] Controls for advanced machine-related behavior features.
  /// [canIpForward] Allows this instance to send and receive packets with non-matching destination or source IPs. This is required if you plan to use this instance to forward routes. For more information, see Enabling IP Forwarding .
  /// [confidentialInstanceConfig] Optional.
  /// [deletionProtection] Whether the resource should be protected against deletion.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [disks] Array of disks associated with this instance. Persistent disks must be created before you can assign them.
  /// [displayDevice] Enables display device for the instance.
  /// [eraseWindowsVssSignature] Specifies whether the disks restored from source snapshots or source machine image should erase Windows specific VSS signature.
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
  /// [partnerMetadata] Partner Metadata assigned to the instance. A map from a subdomain (namespace) to entries map.
  /// [postKeyRevocationActionType] PostKeyRevocationActionType of the instance.
  /// [preservedStateSizeGb] Total amount of preserved state for SUSPENDED instances. Read-only in the api.
  /// [privateIpv6GoogleAccess] The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBNETWORK as default.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [reservationAffinity] Specifies the reservations that this instance can consume from.
  /// [resourcePolicies] Resource policies applied to this instance.
  /// [scheduling] Sets the scheduling options for this instance.
  /// [secureTags] [Input Only] Secure tags to apply to this instance. These can be later modified by the update method. Maximum number of secure tags allowed is 50.
  /// [serviceAccounts] A list of service accounts, with their specified scopes, authorized for this instance. Only one service account per VM instance is supported. Service accounts generate access tokens that can be accessed through the metadata server and used to authenticate applications on the instance. See Service Accounts for more information.
  /// [serviceIntegrationSpecs] Mapping of user-defined keys to specifications for service integrations. Currently only a single key-value pair is supported.
  /// [shieldedInstanceConfig] Optional.
  /// [shieldedInstanceIntegrityPolicy] Optional.
  /// [shieldedVmConfig] Deprecating, please use shielded_instance_config.
  /// [shieldedVmIntegrityPolicy] Deprecating, please use shielded_instance_integrity_policy.
  /// [sourceInstanceTemplate] Specifies instance template to create the instance. This field is optional. It can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  /// [sourceMachineImage] Source machine image
  /// [sourceMachineImageEncryptionKey] Source machine image encryption key when creating an instance from a machine image.
  /// [tags] Tags to apply to this instance. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during instance creation. The tags can be later modified by the setTags method. Each tag within the list must comply with RFC1035. Multiple tags can be specified via the 'tags.items' field.
  /// [zone] Optional.
  InstanceArgs({
    this.advancedMachineFeatures,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.deletionProtection,
    this.description,
    this.disks,
    this.displayDevice,
    this.eraseWindowsVssSignature,
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
    this.partnerMetadata,
    this.postKeyRevocationActionType,
    this.preservedStateSizeGb,
    this.privateIpv6GoogleAccess,
    this.project,
    this.requestId,
    this.reservationAffinity,
    this.resourcePolicies,
    this.scheduling,
    this.secureTags,
    this.serviceAccounts,
    this.serviceIntegrationSpecs,
    this.shieldedInstanceConfig,
    this.shieldedInstanceIntegrityPolicy,
    this.shieldedVmConfig,
    this.shieldedVmIntegrityPolicy,
    this.sourceInstanceTemplate,
    this.sourceMachineImage,
    this.sourceMachineImageEncryptionKey,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<AdvancedMachineFeatures, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ConfidentialInstanceConfig, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<AttachedDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<AttachedDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayDevice': ?pulumi.Input.mapOptionalInputValue<DisplayDevice, Map<String, dynamic>>(displayDevice, (value) => value.toMap()),
      'eraseWindowsVssSignature': ?eraseWindowsVssSignature,
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<AcceleratorConfig>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<AcceleratorConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'instanceEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(instanceEncryptionKey, (value) => value.toMap()),
      'keyRevocationActionType': ?pulumi.Input.mapOptionalInputValue<InstanceKeyRevocationActionType, String>(keyRevocationActionType, (value) => value.value),
      'labels': ?labels,
      'machineType': ?machineType,
      'metadata': ?pulumi.Input.mapOptionalInputValue<Metadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'minCpuPlatform': ?minCpuPlatform,
      'name': ?name,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'params': ?pulumi.Input.mapOptionalInputValue<InstanceParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'partnerMetadata': ?partnerMetadata,
      'postKeyRevocationActionType': ?pulumi.Input.mapOptionalInputValue<InstancePostKeyRevocationActionType, String>(postKeyRevocationActionType, (value) => value.value),
      'preservedStateSizeGb': ?preservedStateSizeGb,
      'privateIpv6GoogleAccess': ?pulumi.Input.mapOptionalInputValue<InstancePrivateIpv6GoogleAccess, String>(privateIpv6GoogleAccess, (value) => value.value),
      'project': ?project,
      'requestId': ?requestId,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<ReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourcePolicies': ?resourcePolicies,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<Scheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'secureTags': ?secureTags,
      'serviceAccounts': ?pulumi.Input.mapOptionalInputValue<List<ServiceAccount>, List<Map<String, dynamic>>>(serviceAccounts, (value) => pulumi.Input.encodeList<ServiceAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceIntegrationSpecs': ?serviceIntegrationSpecs,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'shieldedInstanceIntegrityPolicy': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceIntegrityPolicy, Map<String, dynamic>>(shieldedInstanceIntegrityPolicy, (value) => value.toMap()),
      'shieldedVmConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedVmConfig, Map<String, dynamic>>(shieldedVmConfig, (value) => value.toMap()),
      'shieldedVmIntegrityPolicy': ?pulumi.Input.mapOptionalInputValue<ShieldedVmIntegrityPolicy, Map<String, dynamic>>(shieldedVmIntegrityPolicy, (value) => value.toMap()),
      'sourceInstanceTemplate': ?sourceInstanceTemplate,
      'sourceMachineImage': ?sourceMachineImage,
      'sourceMachineImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(sourceMachineImageEncryptionKey, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<Tags, Map<String, dynamic>>(tags, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null ? null : (AdvancedMachineFeatures.fromMap((map['advancedMachineFeatures'] as Map).cast<String, dynamic>())).input(),
      canIpForward: map['canIpForward'] == null ? null : (map['canIpForward'] as bool).input(),
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null ? null : (ConfidentialInstanceConfig.fromMap((map['confidentialInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<AttachedDisk>(map['disks'], (value) => AttachedDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayDevice: map['displayDevice'] == null ? null : (DisplayDevice.fromMap((map['displayDevice'] as Map).cast<String, dynamic>())).input(),
      eraseWindowsVssSignature: map['eraseWindowsVssSignature'] == null ? null : (map['eraseWindowsVssSignature'] as bool).input(),
      guestAccelerators: map['guestAccelerators'] == null ? null : (pulumi.Input.decodeList<AcceleratorConfig>(map['guestAccelerators'], (value) => AcceleratorConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      instanceEncryptionKey: map['instanceEncryptionKey'] == null ? null : (CustomerEncryptionKey.fromMap((map['instanceEncryptionKey'] as Map).cast<String, dynamic>())).input(),
      keyRevocationActionType: map['keyRevocationActionType'] == null ? null : (InstanceKeyRevocationActionType.fromValue(map['keyRevocationActionType'] as String)).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      metadata: map['metadata'] == null ? null : (Metadata.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<NetworkInterface>(map['networkInterfaces'], (value) => NetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null ? null : (NetworkPerformanceConfig.fromMap((map['networkPerformanceConfig'] as Map).cast<String, dynamic>())).input(),
      params: map['params'] == null ? null : (InstanceParams.fromMap((map['params'] as Map).cast<String, dynamic>())).input(),
      partnerMetadata: map['partnerMetadata'] == null ? null : ((map['partnerMetadata'] as Map).cast<String, String>()).input(),
      postKeyRevocationActionType: map['postKeyRevocationActionType'] == null ? null : (InstancePostKeyRevocationActionType.fromValue(map['postKeyRevocationActionType'] as String)).input(),
      preservedStateSizeGb: map['preservedStateSizeGb'] == null ? null : (map['preservedStateSizeGb'] as String).input(),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null ? null : (InstancePrivateIpv6GoogleAccess.fromValue(map['privateIpv6GoogleAccess'] as String)).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      reservationAffinity: map['reservationAffinity'] == null ? null : (ReservationAffinity.fromMap((map['reservationAffinity'] as Map).cast<String, dynamic>())).input(),
      resourcePolicies: map['resourcePolicies'] == null ? null : ((map['resourcePolicies'] as List).cast<String>()).input(),
      scheduling: map['scheduling'] == null ? null : (Scheduling.fromMap((map['scheduling'] as Map).cast<String, dynamic>())).input(),
      secureTags: map['secureTags'] == null ? null : ((map['secureTags'] as List).cast<String>()).input(),
      serviceAccounts: map['serviceAccounts'] == null ? null : (pulumi.Input.decodeList<ServiceAccount>(map['serviceAccounts'], (value) => ServiceAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceIntegrationSpecs: map['serviceIntegrationSpecs'] == null ? null : ((map['serviceIntegrationSpecs'] as Map).cast<String, String>()).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (ShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      shieldedInstanceIntegrityPolicy: map['shieldedInstanceIntegrityPolicy'] == null ? null : (ShieldedInstanceIntegrityPolicy.fromMap((map['shieldedInstanceIntegrityPolicy'] as Map).cast<String, dynamic>())).input(),
      shieldedVmConfig: map['shieldedVmConfig'] == null ? null : (ShieldedVmConfig.fromMap((map['shieldedVmConfig'] as Map).cast<String, dynamic>())).input(),
      shieldedVmIntegrityPolicy: map['shieldedVmIntegrityPolicy'] == null ? null : (ShieldedVmIntegrityPolicy.fromMap((map['shieldedVmIntegrityPolicy'] as Map).cast<String, dynamic>())).input(),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] == null ? null : (map['sourceInstanceTemplate'] as String).input(),
      sourceMachineImage: map['sourceMachineImage'] == null ? null : (map['sourceMachineImage'] as String).input(),
      sourceMachineImageEncryptionKey: map['sourceMachineImageEncryptionKey'] == null ? null : (CustomerEncryptionKey.fromMap((map['sourceMachineImageEncryptionKey'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (Tags.fromMap((map['tags'] as Map).cast<String, dynamic>())).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

