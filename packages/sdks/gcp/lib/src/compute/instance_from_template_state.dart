// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_template_advanced_machine_features.dart';
import 'instance_from_template_attached_disk.dart';
import 'instance_from_template_boot_disk.dart';
import 'instance_from_template_confidential_instance_config.dart';
import 'instance_from_template_guest_accelerator.dart';
import 'instance_from_template_instance_encryption_key.dart';
import 'instance_from_template_network_interface.dart';
import 'instance_from_template_network_performance_config.dart';
import 'instance_from_template_params.dart';
import 'instance_from_template_reservation_affinity.dart';
import 'instance_from_template_scheduling.dart';
import 'instance_from_template_scratch_disk.dart';
import 'instance_from_template_service_account.dart';
import 'instance_from_template_shielded_instance_config.dart';

/// Input properties used for looking up and filtering InstanceFromTemplate resources.
class InstanceFromTemplateState {
  /// Controls for advanced machine-related behavior features.
  final pulumi.Input<InstanceFromTemplateAdvancedMachineFeatures>? advancedMachineFeatures;
  final pulumi.Input<bool>? allowStoppingForUpdate;
  /// List of disks attached to the instance
  final pulumi.Input<List<InstanceFromTemplateAttachedDisk>>? attachedDisks;
  /// The boot disk for the instance.
  final pulumi.Input<InstanceFromTemplateBootDisk>? bootDisk;
  /// Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  final pulumi.Input<bool>? canIpForward;
  /// The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create.
  final pulumi.Input<InstanceFromTemplateConfidentialInstanceConfig>? confidentialInstanceConfig;
  /// The CPU platform used by this instance.
  final pulumi.Input<String>? cpuPlatform;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// Current status of the instance.
  /// This could be one of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED.
  /// For more information about the status of the instance, see [Instance life cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
  final pulumi.Input<String>? currentStatus;
  /// Whether deletion protection is enabled on this instance.
  final pulumi.Input<bool>? deletionProtection;
  /// A brief description of the resource.
  final pulumi.Input<String>? description;
  /// Desired status of the instance. Either "RUNNING", "SUSPENDED" or "TERMINATED".
  final pulumi.Input<String>? desiredStatus;
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Whether the instance has virtual displays enabled.
  final pulumi.Input<bool>? enableDisplay;
  /// List of the type and count of accelerator cards attached to the instance.
  final pulumi.Input<List<InstanceFromTemplateGuestAccelerator>>? guestAccelerators;
  /// A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression a-z, concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostname;
  /// Encryption key used to provide data encryption on the given instance.
  final pulumi.Input<InstanceFromTemplateInstanceEncryptionKey>? instanceEncryptionKey;
  /// The server-assigned unique identifier of this instance.
  final pulumi.Input<String>? instanceId;
  /// Action to be taken when a customer's encryption key is revoked. Supports "STOP" and "NONE", with "NONE" being the default.
  final pulumi.Input<String>? keyRevocationActionType;
  /// The unique fingerprint of the labels.
  final pulumi.Input<String>? labelFingerprint;
  /// A set of key/value label pairs assigned to the instance.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The machine type to create.
  final pulumi.Input<String>? machineType;
  /// Metadata key/value pairs made available within the instance.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The unique fingerprint of the metadata.
  final pulumi.Input<String>? metadataFingerprint;
  /// Metadata startup scripts made available within the instance.
  final pulumi.Input<String>? metadataStartupScript;
  /// The minimum CPU platform specified for the VM instance.
  final pulumi.Input<String>? minCpuPlatform;
  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The networks attached to the instance.
  final pulumi.Input<List<InstanceFromTemplateNetworkInterface>>? networkInterfaces;
  /// Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration.
  final pulumi.Input<InstanceFromTemplateNetworkPerformanceConfig>? networkPerformanceConfig;
  /// Stores additional params passed with the request, but not persisted as part of resource payload.
  final pulumi.Input<InstanceFromTemplateParams>? params;
  /// Partner Metadata Map made available within the instance.
  final pulumi.Input<Map<String, String>>? partnerMetadata;
  /// The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Specifies the reservations that this instance can consume from.
  final pulumi.Input<InstanceFromTemplateReservationAffinity>? reservationAffinity;
  /// A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String>? resourcePolicies;
  /// The scheduling strategy being used by the instance.
  final pulumi.Input<InstanceFromTemplateScheduling>? scheduling;
  /// The scratch disks attached to the instance.
  final pulumi.Input<List<InstanceFromTemplateScratchDisk>>? scratchDisks;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The service account to attach to the instance.
  final pulumi.Input<InstanceFromTemplateServiceAccount>? serviceAccount;
  /// The shielded vm config being used by the instance.
  final pulumi.Input<InstanceFromTemplateShieldedInstanceConfig>? shieldedInstanceConfig;
  /// Name or self link of an instance
  /// template to create the instance based on. It is recommended to reference
  /// instance templates through their unique id (`self_link_unique` attribute).
  ///
  /// - - -
  final pulumi.Input<String>? sourceInstanceTemplate;
  /// The list of tags attached to the instance.
  final pulumi.Input<List<String>>? tags;
  /// The unique fingerprint of the tags.
  final pulumi.Input<String>? tagsFingerprint;
  /// The zone that the machine should be created in. If not
  /// set, the provider zone is used.
  ///
  /// In addition to these, all arguments from `gcp.compute.Instance` are supported
  /// as a way to override the properties in the template. All exported attributes
  /// from `gcp.compute.Instance` are likewise exported here.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceFromTemplateState].
  /// [advancedMachineFeatures] Controls for advanced machine-related behavior features.
  /// [allowStoppingForUpdate] Optional.
  /// [attachedDisks] List of disks attached to the instance
  /// [bootDisk] The boot disk for the instance.
  /// [canIpForward] Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  /// [confidentialInstanceConfig] The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create.
  /// [cpuPlatform] The CPU platform used by this instance.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [currentStatus] Current status of the instance.
  /// [deletionProtection] Whether deletion protection is enabled on this instance.
  /// [description] A brief description of the resource.
  /// [desiredStatus] Desired status of the instance. Either "RUNNING", "SUSPENDED" or "TERMINATED".
  /// [effectiveLabels] Optional.
  /// [enableDisplay] Whether the instance has virtual displays enabled.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance.
  /// [hostname] A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression a-z, concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  /// [instanceEncryptionKey] Encryption key used to provide data encryption on the given instance.
  /// [instanceId] The server-assigned unique identifier of this instance.
  /// [keyRevocationActionType] Action to be taken when a customer's encryption key is revoked. Supports "STOP" and "NONE", with "NONE" being the default.
  /// [labelFingerprint] The unique fingerprint of the labels.
  /// [labels] A set of key/value label pairs assigned to the instance.
  /// [machineType] The machine type to create.
  /// [metadata] Metadata key/value pairs made available within the instance.
  /// [metadataFingerprint] The unique fingerprint of the metadata.
  /// [metadataStartupScript] Metadata startup scripts made available within the instance.
  /// [minCpuPlatform] The minimum CPU platform specified for the VM instance.
  /// [name] A unique name for the resource, required by GCE.
  /// [networkInterfaces] The networks attached to the instance.
  /// [networkPerformanceConfig] Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration.
  /// [params] Stores additional params passed with the request, but not persisted as part of resource payload.
  /// [partnerMetadata] Partner Metadata Map made available within the instance.
  /// [project] The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used.
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [reservationAffinity] Specifies the reservations that this instance can consume from.
  /// [resourcePolicies] A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported.
  /// [scheduling] The scheduling strategy being used by the instance.
  /// [scratchDisks] The scratch disks attached to the instance.
  /// [selfLink] The URI of the created resource.
  /// [serviceAccount] The service account to attach to the instance.
  /// [shieldedInstanceConfig] The shielded vm config being used by the instance.
  /// [sourceInstanceTemplate] Name or self link of an instance
  /// [tags] The list of tags attached to the instance.
  /// [tagsFingerprint] The unique fingerprint of the tags.
  /// [zone] The zone that the machine should be created in. If not
  InstanceFromTemplateState({
    pulumi.Output<InstanceFromTemplateAdvancedMachineFeatures>? advancedMachineFeatures,
    pulumi.Output<bool>? allowStoppingForUpdate,
    pulumi.Output<List<InstanceFromTemplateAttachedDisk>>? attachedDisks,
    pulumi.Output<InstanceFromTemplateBootDisk>? bootDisk,
    pulumi.Output<bool>? canIpForward,
    pulumi.Output<InstanceFromTemplateConfidentialInstanceConfig>? confidentialInstanceConfig,
    pulumi.Output<String>? cpuPlatform,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? currentStatus,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? description,
    pulumi.Output<String>? desiredStatus,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<bool>? enableDisplay,
    pulumi.Output<List<InstanceFromTemplateGuestAccelerator>>? guestAccelerators,
    pulumi.Output<String>? hostname,
    pulumi.Output<InstanceFromTemplateInstanceEncryptionKey>? instanceEncryptionKey,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? keyRevocationActionType,
    pulumi.Output<String>? labelFingerprint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? machineType,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? metadataFingerprint,
    pulumi.Output<String>? metadataStartupScript,
    pulumi.Output<String>? minCpuPlatform,
    pulumi.Output<String>? name,
    pulumi.Output<List<InstanceFromTemplateNetworkInterface>>? networkInterfaces,
    pulumi.Output<InstanceFromTemplateNetworkPerformanceConfig>? networkPerformanceConfig,
    pulumi.Output<InstanceFromTemplateParams>? params,
    pulumi.Output<Map<String, String>>? partnerMetadata,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<InstanceFromTemplateReservationAffinity>? reservationAffinity,
    pulumi.Output<String>? resourcePolicies,
    pulumi.Output<InstanceFromTemplateScheduling>? scheduling,
    pulumi.Output<List<InstanceFromTemplateScratchDisk>>? scratchDisks,
    pulumi.Output<String>? selfLink,
    pulumi.Output<InstanceFromTemplateServiceAccount>? serviceAccount,
    pulumi.Output<InstanceFromTemplateShieldedInstanceConfig>? shieldedInstanceConfig,
    pulumi.Output<String>? sourceInstanceTemplate,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? tagsFingerprint,
    pulumi.Output<String>? zone,
  }) :
      advancedMachineFeatures = pulumi.Input.asOptionalInput<InstanceFromTemplateAdvancedMachineFeatures>(advancedMachineFeatures),
      allowStoppingForUpdate = pulumi.Input.asOptionalInput<bool>(allowStoppingForUpdate),
      attachedDisks = pulumi.Input.asOptionalInput<List<InstanceFromTemplateAttachedDisk>>(attachedDisks),
      bootDisk = pulumi.Input.asOptionalInput<InstanceFromTemplateBootDisk>(bootDisk),
      canIpForward = pulumi.Input.asOptionalInput<bool>(canIpForward),
      confidentialInstanceConfig = pulumi.Input.asOptionalInput<InstanceFromTemplateConfidentialInstanceConfig>(confidentialInstanceConfig),
      cpuPlatform = pulumi.Input.asOptionalInput<String>(cpuPlatform),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      currentStatus = pulumi.Input.asOptionalInput<String>(currentStatus),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      description = pulumi.Input.asOptionalInput<String>(description),
      desiredStatus = pulumi.Input.asOptionalInput<String>(desiredStatus),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      enableDisplay = pulumi.Input.asOptionalInput<bool>(enableDisplay),
      guestAccelerators = pulumi.Input.asOptionalInput<List<InstanceFromTemplateGuestAccelerator>>(guestAccelerators),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      instanceEncryptionKey = pulumi.Input.asOptionalInput<InstanceFromTemplateInstanceEncryptionKey>(instanceEncryptionKey),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      keyRevocationActionType = pulumi.Input.asOptionalInput<String>(keyRevocationActionType),
      labelFingerprint = pulumi.Input.asOptionalInput<String>(labelFingerprint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      machineType = pulumi.Input.asOptionalInput<String>(machineType),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      metadataFingerprint = pulumi.Input.asOptionalInput<String>(metadataFingerprint),
      metadataStartupScript = pulumi.Input.asOptionalInput<String>(metadataStartupScript),
      minCpuPlatform = pulumi.Input.asOptionalInput<String>(minCpuPlatform),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterfaces = pulumi.Input.asOptionalInput<List<InstanceFromTemplateNetworkInterface>>(networkInterfaces),
      networkPerformanceConfig = pulumi.Input.asOptionalInput<InstanceFromTemplateNetworkPerformanceConfig>(networkPerformanceConfig),
      params = pulumi.Input.asOptionalInput<InstanceFromTemplateParams>(params),
      partnerMetadata = pulumi.Input.asOptionalInput<Map<String, String>>(partnerMetadata),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reservationAffinity = pulumi.Input.asOptionalInput<InstanceFromTemplateReservationAffinity>(reservationAffinity),
      resourcePolicies = pulumi.Input.asOptionalInput<String>(resourcePolicies),
      scheduling = pulumi.Input.asOptionalInput<InstanceFromTemplateScheduling>(scheduling),
      scratchDisks = pulumi.Input.asOptionalInput<List<InstanceFromTemplateScratchDisk>>(scratchDisks),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      serviceAccount = pulumi.Input.asOptionalInput<InstanceFromTemplateServiceAccount>(serviceAccount),
      shieldedInstanceConfig = pulumi.Input.asOptionalInput<InstanceFromTemplateShieldedInstanceConfig>(shieldedInstanceConfig),
      sourceInstanceTemplate = pulumi.Input.asOptionalInput<String>(sourceInstanceTemplate),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tagsFingerprint = pulumi.Input.asOptionalInput<String>(tagsFingerprint),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateAdvancedMachineFeatures, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'allowStoppingForUpdate': ?allowStoppingForUpdate,
      'attachedDisks': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromTemplateAttachedDisk>, List<Map<String, dynamic>>>(attachedDisks, (value) => pulumi.Input.encodeList<InstanceFromTemplateAttachedDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDisk': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateBootDisk, Map<String, dynamic>>(bootDisk, (value) => value.toMap()),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateConfidentialInstanceConfig, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'cpuPlatform': ?cpuPlatform,
      'creationTimestamp': ?creationTimestamp,
      'currentStatus': ?currentStatus,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'desiredStatus': ?desiredStatus,
      'effectiveLabels': ?effectiveLabels,
      'enableDisplay': ?enableDisplay,
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromTemplateGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<InstanceFromTemplateGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'instanceEncryptionKey': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateInstanceEncryptionKey, Map<String, dynamic>>(instanceEncryptionKey, (value) => value.toMap()),
      'instanceId': ?instanceId,
      'keyRevocationActionType': ?keyRevocationActionType,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'machineType': ?machineType,
      'metadata': ?metadata,
      'metadataFingerprint': ?metadataFingerprint,
      'metadataStartupScript': ?metadataStartupScript,
      'minCpuPlatform': ?minCpuPlatform,
      'name': ?name,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromTemplateNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<InstanceFromTemplateNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateNetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'params': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'partnerMetadata': ?partnerMetadata,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourcePolicies': ?resourcePolicies,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateScheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'scratchDisks': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromTemplateScratchDisk>, List<Map<String, dynamic>>>(scratchDisks, (value) => pulumi.Input.encodeList<InstanceFromTemplateScratchDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfLink': ?selfLink,
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'sourceInstanceTemplate': ?sourceInstanceTemplate,
      'tags': ?tags,
      'tagsFingerprint': ?tagsFingerprint,
      'zone': ?zone,
    };
  }

  factory InstanceFromTemplateState.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateState(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null ? null : pulumi.Output.create<InstanceFromTemplateAdvancedMachineFeatures>(InstanceFromTemplateAdvancedMachineFeatures.fromMap((map['advancedMachineFeatures'] as Map).cast<String, dynamic>())),
      allowStoppingForUpdate: map['allowStoppingForUpdate'] == null ? null : pulumi.Output.create<bool>(map['allowStoppingForUpdate'] as bool),
      attachedDisks: map['attachedDisks'] == null ? null : pulumi.Output.create<List<InstanceFromTemplateAttachedDisk>>(pulumi.Input.decodeList<InstanceFromTemplateAttachedDisk>(map['attachedDisks'], (value) => InstanceFromTemplateAttachedDisk.fromMap((value as Map).cast<String, dynamic>()))),
      bootDisk: map['bootDisk'] == null ? null : pulumi.Output.create<InstanceFromTemplateBootDisk>(InstanceFromTemplateBootDisk.fromMap((map['bootDisk'] as Map).cast<String, dynamic>())),
      canIpForward: map['canIpForward'] == null ? null : pulumi.Output.create<bool>(map['canIpForward'] as bool),
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null ? null : pulumi.Output.create<InstanceFromTemplateConfidentialInstanceConfig>(InstanceFromTemplateConfidentialInstanceConfig.fromMap((map['confidentialInstanceConfig'] as Map).cast<String, dynamic>())),
      cpuPlatform: map['cpuPlatform'] == null ? null : pulumi.Output.create<String>(map['cpuPlatform'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      currentStatus: map['currentStatus'] == null ? null : pulumi.Output.create<String>(map['currentStatus'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      desiredStatus: map['desiredStatus'] == null ? null : pulumi.Output.create<String>(map['desiredStatus'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      enableDisplay: map['enableDisplay'] == null ? null : pulumi.Output.create<bool>(map['enableDisplay'] as bool),
      guestAccelerators: map['guestAccelerators'] == null ? null : pulumi.Output.create<List<InstanceFromTemplateGuestAccelerator>>(pulumi.Input.decodeList<InstanceFromTemplateGuestAccelerator>(map['guestAccelerators'], (value) => InstanceFromTemplateGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      instanceEncryptionKey: map['instanceEncryptionKey'] == null ? null : pulumi.Output.create<InstanceFromTemplateInstanceEncryptionKey>(InstanceFromTemplateInstanceEncryptionKey.fromMap((map['instanceEncryptionKey'] as Map).cast<String, dynamic>())),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      keyRevocationActionType: map['keyRevocationActionType'] == null ? null : pulumi.Output.create<String>(map['keyRevocationActionType'] as String),
      labelFingerprint: map['labelFingerprint'] == null ? null : pulumi.Output.create<String>(map['labelFingerprint'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      machineType: map['machineType'] == null ? null : pulumi.Output.create<String>(map['machineType'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      metadataFingerprint: map['metadataFingerprint'] == null ? null : pulumi.Output.create<String>(map['metadataFingerprint'] as String),
      metadataStartupScript: map['metadataStartupScript'] == null ? null : pulumi.Output.create<String>(map['metadataStartupScript'] as String),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : pulumi.Output.create<String>(map['minCpuPlatform'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Output.create<List<InstanceFromTemplateNetworkInterface>>(pulumi.Input.decodeList<InstanceFromTemplateNetworkInterface>(map['networkInterfaces'], (value) => InstanceFromTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null ? null : pulumi.Output.create<InstanceFromTemplateNetworkPerformanceConfig>(InstanceFromTemplateNetworkPerformanceConfig.fromMap((map['networkPerformanceConfig'] as Map).cast<String, dynamic>())),
      params: map['params'] == null ? null : pulumi.Output.create<InstanceFromTemplateParams>(InstanceFromTemplateParams.fromMap((map['params'] as Map).cast<String, dynamic>())),
      partnerMetadata: map['partnerMetadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['partnerMetadata'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reservationAffinity: map['reservationAffinity'] == null ? null : pulumi.Output.create<InstanceFromTemplateReservationAffinity>(InstanceFromTemplateReservationAffinity.fromMap((map['reservationAffinity'] as Map).cast<String, dynamic>())),
      resourcePolicies: map['resourcePolicies'] == null ? null : pulumi.Output.create<String>(map['resourcePolicies'] as String),
      scheduling: map['scheduling'] == null ? null : pulumi.Output.create<InstanceFromTemplateScheduling>(InstanceFromTemplateScheduling.fromMap((map['scheduling'] as Map).cast<String, dynamic>())),
      scratchDisks: map['scratchDisks'] == null ? null : pulumi.Output.create<List<InstanceFromTemplateScratchDisk>>(pulumi.Input.decodeList<InstanceFromTemplateScratchDisk>(map['scratchDisks'], (value) => InstanceFromTemplateScratchDisk.fromMap((value as Map).cast<String, dynamic>()))),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<InstanceFromTemplateServiceAccount>(InstanceFromTemplateServiceAccount.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>())),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : pulumi.Output.create<InstanceFromTemplateShieldedInstanceConfig>(InstanceFromTemplateShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] == null ? null : pulumi.Output.create<String>(map['sourceInstanceTemplate'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tagsFingerprint: map['tagsFingerprint'] == null ? null : pulumi.Output.create<String>(map['tagsFingerprint'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

