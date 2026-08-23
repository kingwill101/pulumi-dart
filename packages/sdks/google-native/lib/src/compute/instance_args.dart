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
  const InstanceArgs({
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
      'keyRevocationActionType': ?pulumi.Input.mapOptionalInputValue<InstanceKeyRevocationActionType, String>(keyRevocationActionType, (value) => value.wireValue),
      'labels': ?labels,
      'machineType': ?machineType,
      'metadata': ?pulumi.Input.mapOptionalInputValue<Metadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'minCpuPlatform': ?minCpuPlatform,
      'name': ?name,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'params': ?pulumi.Input.mapOptionalInputValue<InstanceParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'partnerMetadata': ?partnerMetadata,
      'postKeyRevocationActionType': ?pulumi.Input.mapOptionalInputValue<InstancePostKeyRevocationActionType, String>(postKeyRevocationActionType, (value) => value.wireValue),
      'preservedStateSizeGb': ?preservedStateSizeGb,
      'privateIpv6GoogleAccess': ?pulumi.Input.mapOptionalInputValue<InstancePrivateIpv6GoogleAccess, String>(privateIpv6GoogleAccess, (value) => value.wireValue),
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
      advancedMachineFeatures: (() { final guardedValue = map['advancedMachineFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      canIpForward: (() { final guardedValue = map['canIpForward']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      confidentialInstanceConfig: (() { final guardedValue = map['confidentialInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AttachedDisk>(guardedValue, (value) => AttachedDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      displayDevice: (() { final guardedValue = map['displayDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DisplayDevice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eraseWindowsVssSignature: (() { final guardedValue = map['eraseWindowsVssSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guestAccelerators: (() { final guardedValue = map['guestAccelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AcceleratorConfig>(guardedValue, (value) => AcceleratorConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceEncryptionKey: (() { final guardedValue = map['instanceEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyRevocationActionType: (() { final guardedValue = map['keyRevocationActionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceKeyRevocationActionType.fromValue(guardedValue as String)); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Metadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterface>(guardedValue, (value) => NetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkPerformanceConfig: (() { final guardedValue = map['networkPerformanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      partnerMetadata: (() { final guardedValue = map['partnerMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      postKeyRevocationActionType: (() { final guardedValue = map['postKeyRevocationActionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePostKeyRevocationActionType.fromValue(guardedValue as String)); })(),
      preservedStateSizeGb: (() { final guardedValue = map['preservedStateSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpv6GoogleAccess: (() { final guardedValue = map['privateIpv6GoogleAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePrivateIpv6GoogleAccess.fromValue(guardedValue as String)); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scheduling: (() { final guardedValue = map['scheduling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Scheduling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secureTags: (() { final guardedValue = map['secureTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceAccounts: (() { final guardedValue = map['serviceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceAccount>(guardedValue, (value) => ServiceAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceIntegrationSpecs: (() { final guardedValue = map['serviceIntegrationSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shieldedInstanceIntegrityPolicy: (() { final guardedValue = map['shieldedInstanceIntegrityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShieldedInstanceIntegrityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shieldedVmConfig: (() { final guardedValue = map['shieldedVmConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShieldedVmConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shieldedVmIntegrityPolicy: (() { final guardedValue = map['shieldedVmIntegrityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShieldedVmIntegrityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceInstanceTemplate: (() { final guardedValue = map['sourceInstanceTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceMachineImage: (() { final guardedValue = map['sourceMachineImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceMachineImageEncryptionKey: (() { final guardedValue = map['sourceMachineImageEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Tags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
