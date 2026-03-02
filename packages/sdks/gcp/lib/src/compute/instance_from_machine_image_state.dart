// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_machine_image_advanced_machine_features.dart';
import 'instance_from_machine_image_attached_disk.dart';
import 'instance_from_machine_image_boot_disk.dart';
import 'instance_from_machine_image_confidential_instance_config.dart';
import 'instance_from_machine_image_guest_accelerator.dart';
import 'instance_from_machine_image_instance_encryption_key.dart';
import 'instance_from_machine_image_network_interface.dart';
import 'instance_from_machine_image_network_performance_config.dart';
import 'instance_from_machine_image_params.dart';
import 'instance_from_machine_image_reservation_affinity.dart';
import 'instance_from_machine_image_scheduling.dart';
import 'instance_from_machine_image_scratch_disk.dart';
import 'instance_from_machine_image_service_account.dart';
import 'instance_from_machine_image_shielded_instance_config.dart';
import 'instance_from_machine_image_source_machine_image_encryption_key.dart';

/// Input properties used for looking up and filtering InstanceFromMachineImage resources.
class InstanceFromMachineImageState {
  /// Controls for advanced machine-related behavior features.
  final pulumi.Input<InstanceFromMachineImageAdvancedMachineFeatures>? advancedMachineFeatures;
  final pulumi.Input<bool>? allowStoppingForUpdate;
  /// List of disks attached to the instance
  final pulumi.Input<List<InstanceFromMachineImageAttachedDisk>>? attachedDisks;
  /// The boot disk for the instance.
  final pulumi.Input<List<InstanceFromMachineImageBootDisk>>? bootDisks;
  /// Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  final pulumi.Input<bool>? canIpForward;
  /// The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create.
  final pulumi.Input<InstanceFromMachineImageConfidentialInstanceConfig>? confidentialInstanceConfig;
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
  final pulumi.Input<List<InstanceFromMachineImageGuestAccelerator>>? guestAccelerators;
  /// A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression a-z, concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostname;
  /// Encryption key used to provide data encryption on the given instance.
  final pulumi.Input<InstanceFromMachineImageInstanceEncryptionKey>? instanceEncryptionKey;
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
  final pulumi.Input<List<InstanceFromMachineImageNetworkInterface>>? networkInterfaces;
  /// Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration.
  final pulumi.Input<InstanceFromMachineImageNetworkPerformanceConfig>? networkPerformanceConfig;
  /// Stores additional params passed with the request, but not persisted as part of resource payload.
  final pulumi.Input<InstanceFromMachineImageParams>? params;
  /// Partner Metadata Map made available within the instance.
  final pulumi.Input<Map<String, String>>? partnerMetadata;
  /// The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Specifies the reservations that this instance can consume from.
  final pulumi.Input<InstanceFromMachineImageReservationAffinity>? reservationAffinity;
  /// A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String>? resourcePolicies;
  /// The scheduling strategy being used by the instance.
  final pulumi.Input<InstanceFromMachineImageScheduling>? scheduling;
  /// The scratch disks attached to the instance.
  final pulumi.Input<List<InstanceFromMachineImageScratchDisk>>? scratchDisks;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The service account to attach to the instance.
  final pulumi.Input<InstanceFromMachineImageServiceAccount>? serviceAccount;
  /// The shielded vm config being used by the instance.
  final pulumi.Input<InstanceFromMachineImageShieldedInstanceConfig>? shieldedInstanceConfig;
  /// Name or self link of a machine
  /// image to create the instance based on.
  ///
  /// - - -
  final pulumi.Input<String>? sourceMachineImage;
  /// Encryption key for the source machine image.
  final pulumi.Input<InstanceFromMachineImageSourceMachineImageEncryptionKey>? sourceMachineImageEncryptionKey;
  /// The list of tags attached to the instance.
  final pulumi.Input<List<String>>? tags;
  /// The unique fingerprint of the tags.
  final pulumi.Input<String>? tagsFingerprint;
  /// The zone that the machine should be created in. If not
  /// set, the provider zone is used.
  ///
  /// In addition to these, most* arguments from `gcp.compute.Instance` are supported
  /// as a way to override the properties in the machine image. All exported attributes
  /// from `gcp.compute.Instance` are likewise exported here.
  ///
  /// > **Warning:** *Due to API limitations, disk overrides are currently disabled. This includes the "boot_disk", "attached_disk", and "scratch_disk" fields.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceFromMachineImageState].
  /// [advancedMachineFeatures] Controls for advanced machine-related behavior features.
  /// [allowStoppingForUpdate] Optional.
  /// [attachedDisks] List of disks attached to the instance
  /// [bootDisks] The boot disk for the instance.
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
  /// [sourceMachineImage] Name or self link of a machine
  /// [sourceMachineImageEncryptionKey] Encryption key for the source machine image.
  /// [tags] The list of tags attached to the instance.
  /// [tagsFingerprint] The unique fingerprint of the tags.
  /// [zone] The zone that the machine should be created in. If not
  InstanceFromMachineImageState({
    this.advancedMachineFeatures,
    this.allowStoppingForUpdate,
    this.attachedDisks,
    this.bootDisks,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.cpuPlatform,
    this.creationTimestamp,
    this.currentStatus,
    this.deletionProtection,
    this.description,
    this.desiredStatus,
    this.effectiveLabels,
    this.enableDisplay,
    this.guestAccelerators,
    this.hostname,
    this.instanceEncryptionKey,
    this.instanceId,
    this.keyRevocationActionType,
    this.labelFingerprint,
    this.labels,
    this.machineType,
    this.metadata,
    this.metadataFingerprint,
    this.metadataStartupScript,
    this.minCpuPlatform,
    this.name,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.params,
    this.partnerMetadata,
    this.project,
    this.pulumiLabels,
    this.reservationAffinity,
    this.resourcePolicies,
    this.scheduling,
    this.scratchDisks,
    this.selfLink,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.sourceMachineImage,
    this.sourceMachineImageEncryptionKey,
    this.tags,
    this.tagsFingerprint,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageAdvancedMachineFeatures, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'allowStoppingForUpdate': ?allowStoppingForUpdate,
      'attachedDisks': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromMachineImageAttachedDisk>, List<Map<String, dynamic>>>(attachedDisks, (value) => pulumi.Input.encodeList<InstanceFromMachineImageAttachedDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDisks': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromMachineImageBootDisk>, List<Map<String, dynamic>>>(bootDisks, (value) => pulumi.Input.encodeList<InstanceFromMachineImageBootDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageConfidentialInstanceConfig, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'cpuPlatform': ?cpuPlatform,
      'creationTimestamp': ?creationTimestamp,
      'currentStatus': ?currentStatus,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'desiredStatus': ?desiredStatus,
      'effectiveLabels': ?effectiveLabels,
      'enableDisplay': ?enableDisplay,
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromMachineImageGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<InstanceFromMachineImageGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'instanceEncryptionKey': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageInstanceEncryptionKey, Map<String, dynamic>>(instanceEncryptionKey, (value) => value.toMap()),
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
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromMachineImageNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<InstanceFromMachineImageNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageNetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'params': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'partnerMetadata': ?partnerMetadata,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourcePolicies': ?resourcePolicies,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageScheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'scratchDisks': ?pulumi.Input.mapOptionalInputValue<List<InstanceFromMachineImageScratchDisk>, List<Map<String, dynamic>>>(scratchDisks, (value) => pulumi.Input.encodeList<InstanceFromMachineImageScratchDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfLink': ?selfLink,
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'sourceMachineImage': ?sourceMachineImage,
      'sourceMachineImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageSourceMachineImageEncryptionKey, Map<String, dynamic>>(sourceMachineImageEncryptionKey, (value) => value.toMap()),
      'tags': ?tags,
      'tagsFingerprint': ?tagsFingerprint,
      'zone': ?zone,
    };
  }

  factory InstanceFromMachineImageState.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageState(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null ? null : (InstanceFromMachineImageAdvancedMachineFeatures.fromMap((map['advancedMachineFeatures']! as Map).cast<String, dynamic>())).input(),
      allowStoppingForUpdate: map['allowStoppingForUpdate'] == null ? null : (map['allowStoppingForUpdate']! as bool).input(),
      attachedDisks: map['attachedDisks'] == null ? null : (pulumi.Input.decodeList<InstanceFromMachineImageAttachedDisk>(map['attachedDisks']!, (value) => InstanceFromMachineImageAttachedDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bootDisks: map['bootDisks'] == null ? null : (pulumi.Input.decodeList<InstanceFromMachineImageBootDisk>(map['bootDisks']!, (value) => InstanceFromMachineImageBootDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      canIpForward: map['canIpForward'] == null ? null : (map['canIpForward']! as bool).input(),
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null ? null : (InstanceFromMachineImageConfidentialInstanceConfig.fromMap((map['confidentialInstanceConfig']! as Map).cast<String, dynamic>())).input(),
      cpuPlatform: map['cpuPlatform'] == null ? null : (map['cpuPlatform']! as String).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      currentStatus: map['currentStatus'] == null ? null : (map['currentStatus']! as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      desiredStatus: map['desiredStatus'] == null ? null : (map['desiredStatus']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      enableDisplay: map['enableDisplay'] == null ? null : (map['enableDisplay']! as bool).input(),
      guestAccelerators: map['guestAccelerators'] == null ? null : (pulumi.Input.decodeList<InstanceFromMachineImageGuestAccelerator>(map['guestAccelerators']!, (value) => InstanceFromMachineImageGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      instanceEncryptionKey: map['instanceEncryptionKey'] == null ? null : (InstanceFromMachineImageInstanceEncryptionKey.fromMap((map['instanceEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      keyRevocationActionType: map['keyRevocationActionType'] == null ? null : (map['keyRevocationActionType']! as String).input(),
      labelFingerprint: map['labelFingerprint'] == null ? null : (map['labelFingerprint']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      machineType: map['machineType'] == null ? null : (map['machineType']! as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      metadataFingerprint: map['metadataFingerprint'] == null ? null : (map['metadataFingerprint']! as String).input(),
      metadataStartupScript: map['metadataStartupScript'] == null ? null : (map['metadataStartupScript']! as String).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<InstanceFromMachineImageNetworkInterface>(map['networkInterfaces']!, (value) => InstanceFromMachineImageNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null ? null : (InstanceFromMachineImageNetworkPerformanceConfig.fromMap((map['networkPerformanceConfig']! as Map).cast<String, dynamic>())).input(),
      params: map['params'] == null ? null : (InstanceFromMachineImageParams.fromMap((map['params']! as Map).cast<String, dynamic>())).input(),
      partnerMetadata: map['partnerMetadata'] == null ? null : ((map['partnerMetadata']! as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      reservationAffinity: map['reservationAffinity'] == null ? null : (InstanceFromMachineImageReservationAffinity.fromMap((map['reservationAffinity']! as Map).cast<String, dynamic>())).input(),
      resourcePolicies: map['resourcePolicies'] == null ? null : (map['resourcePolicies']! as String).input(),
      scheduling: map['scheduling'] == null ? null : (InstanceFromMachineImageScheduling.fromMap((map['scheduling']! as Map).cast<String, dynamic>())).input(),
      scratchDisks: map['scratchDisks'] == null ? null : (pulumi.Input.decodeList<InstanceFromMachineImageScratchDisk>(map['scratchDisks']!, (value) => InstanceFromMachineImageScratchDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (InstanceFromMachineImageServiceAccount.fromMap((map['serviceAccount']! as Map).cast<String, dynamic>())).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (InstanceFromMachineImageShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig']! as Map).cast<String, dynamic>())).input(),
      sourceMachineImage: map['sourceMachineImage'] == null ? null : (map['sourceMachineImage']! as String).input(),
      sourceMachineImageEncryptionKey: map['sourceMachineImageEncryptionKey'] == null ? null : (InstanceFromMachineImageSourceMachineImageEncryptionKey.fromMap((map['sourceMachineImageEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      tagsFingerprint: map['tagsFingerprint'] == null ? null : (map['tagsFingerprint']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

