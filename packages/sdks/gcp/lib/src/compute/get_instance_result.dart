// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_advanced_machine_feature.dart';
import 'get_instance_attached_disk.dart';
import 'get_instance_boot_disk.dart';
import 'get_instance_confidential_instance_config.dart';
import 'get_instance_guest_accelerator.dart';
import 'get_instance_instance_encryption_key.dart';
import 'get_instance_network_interface.dart';
import 'get_instance_network_performance_config.dart';
import 'get_instance_param.dart';
import 'get_instance_reservation_affinity.dart';
import 'get_instance_scheduling.dart';
import 'get_instance_scratch_disk.dart';
import 'get_instance_service_account.dart';
import 'get_instance_shielded_instance_config.dart';
import 'get_instance_workload_identity_config.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final List<GetInstanceAdvancedMachineFeature>? advancedMachineFeatures;
  final bool? allowStoppingForUpdate;
  /// List of disks attached to the instance. Structure is documented below.
  final List<GetInstanceAttachedDisk>? attachedDisks;
  /// The boot disk for the instance. Structure is documented below.
  final List<GetInstanceBootDisk>? bootDisks;
  /// Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  final bool? canIpForward;
  final List<GetInstanceConfidentialInstanceConfig>? confidentialInstanceConfigs;
  /// The CPU platform used by this instance.
  final String? cpuPlatform;
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// The current status of the instance. This could be one of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED. For more information about the status of the instance, see [Instance life cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
  final String? currentStatus;
  final String? deletionPolicy;
  /// Whether deletion protection is enabled on this instance.
  final bool? deletionProtection;
  /// A brief description of the resource.
  final String? description;
  final String? desiredStatus;
  final Map<String, String>? effectiveLabels;
  /// Whether the instance has virtual displays enabled.
  final bool? enableDisplay;
  final bool? eraseWindowsVssSignature;
  /// List of the type and count of accelerator cards attached to the instance. Structure is documented below.
  final List<GetInstanceGuestAccelerator>? guestAccelerators;
  final String? hostname;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetInstanceInstanceEncryptionKey>? instanceEncryptionKeys;
  /// The server-assigned unique identifier of this instance.
  final String? instanceId;
  /// Action to be taken when a customer's encryption key is revoked.
  final String? keyRevocationActionType;
  /// The unique fingerprint of the labels.
  final String? labelFingerprint;
  /// A set of key/value label pairs assigned to the disk.
  final Map<String, String>? labels;
  /// The machine type to create.
  final String? machineType;
  /// Metadata key/value pairs made available within the instance.
  final Map<String, String>? metadata;
  /// The unique fingerprint of the metadata.
  final String? metadataFingerprint;
  final String? metadataStartupScript;
  /// The minimum CPU platform specified for the VM instance. Set to "AUTOMATIC" to remove a previously-set value.
  final String? minCpuPlatform;
  final String? name;
  /// The networks attached to the instance. Structure is documented below.
  final List<GetInstanceNetworkInterface>? networkInterfaces;
  /// The network performance configuration setting for the instance, if set. Structure is documented below.
  final List<GetInstanceNetworkPerformanceConfig>? networkPerformanceConfigs;
  final List<GetInstanceParam>? params;
  final Map<String, String>? partnerMetadata;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final List<GetInstanceReservationAffinity>? reservationAffinities;
  /// A list of selfLinks to resource policies attached to the selected `bootDisk`
  final List<String>? resourcePolicies;
  /// The scheduling strategy being used by the instance. Structure is documented below
  final List<GetInstanceScheduling>? schedulings;
  /// The scratch disks attached to the instance. Structure is documented below.
  final List<GetInstanceScratchDisk>? scratchDisks;
  /// The URI of the created resource.
  final String? selfLink;
  /// The service account to attach to the instance. Structure is documented below.
  final List<GetInstanceServiceAccount>? serviceAccounts;
  /// The shielded vm config being used by the instance. Structure is documented below.
  final List<GetInstanceShieldedInstanceConfig>? shieldedInstanceConfigs;
  /// The list of tags attached to the instance.
  final List<String>? tags;
  /// The unique fingerprint of the tags.
  final String? tagsFingerprint;
  final List<GetInstanceWorkloadIdentityConfig>? workloadIdentityConfigs;
  final String? zone;

  /// Creates a new [GetInstanceResult].
  /// [advancedMachineFeatures] Optional.
  /// [allowStoppingForUpdate] Optional.
  /// [attachedDisks] List of disks attached to the instance. Structure is documented below.
  /// [bootDisks] The boot disk for the instance. Structure is documented below.
  /// [canIpForward] Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  /// [confidentialInstanceConfigs] Optional.
  /// [cpuPlatform] The CPU platform used by this instance.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [currentStatus] The current status of the instance. This could be one of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED. For more information about the status of the instance, see [Instance life cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Whether deletion protection is enabled on this instance.
  /// [description] A brief description of the resource.
  /// [desiredStatus] Optional.
  /// [effectiveLabels] Optional.
  /// [enableDisplay] Whether the instance has virtual displays enabled.
  /// [eraseWindowsVssSignature] Optional.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance. Structure is documented below.
  /// [hostname] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceEncryptionKeys] Optional.
  /// [instanceId] The server-assigned unique identifier of this instance.
  /// [keyRevocationActionType] Action to be taken when a customer's encryption key is revoked.
  /// [labelFingerprint] The unique fingerprint of the labels.
  /// [labels] A set of key/value label pairs assigned to the disk.
  /// [machineType] The machine type to create.
  /// [metadata] Metadata key/value pairs made available within the instance.
  /// [metadataFingerprint] The unique fingerprint of the metadata.
  /// [metadataStartupScript] Optional.
  /// [minCpuPlatform] The minimum CPU platform specified for the VM instance. Set to "AUTOMATIC" to remove a previously-set value.
  /// [name] Optional.
  /// [networkInterfaces] The networks attached to the instance. Structure is documented below.
  /// [networkPerformanceConfigs] The network performance configuration setting for the instance, if set. Structure is documented below.
  /// [params] Optional.
  /// [partnerMetadata] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [reservationAffinities] Optional.
  /// [resourcePolicies] A list of selfLinks to resource policies attached to the selected `bootDisk`
  /// [schedulings] The scheduling strategy being used by the instance. Structure is documented below
  /// [scratchDisks] The scratch disks attached to the instance. Structure is documented below.
  /// [selfLink] The URI of the created resource.
  /// [serviceAccounts] The service account to attach to the instance. Structure is documented below.
  /// [shieldedInstanceConfigs] The shielded vm config being used by the instance. Structure is documented below.
  /// [tags] The list of tags attached to the instance.
  /// [tagsFingerprint] The unique fingerprint of the tags.
  /// [workloadIdentityConfigs] Optional.
  /// [zone] Optional.
  const GetInstanceResult({
    this.advancedMachineFeatures,
    this.allowStoppingForUpdate,
    this.attachedDisks,
    this.bootDisks,
    this.canIpForward,
    this.confidentialInstanceConfigs,
    this.cpuPlatform,
    this.creationTimestamp,
    this.currentStatus,
    this.deletionPolicy,
    this.deletionProtection,
    this.description,
    this.desiredStatus,
    this.effectiveLabels,
    this.enableDisplay,
    this.eraseWindowsVssSignature,
    this.guestAccelerators,
    this.hostname,
    this.id,
    this.instanceEncryptionKeys,
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
    this.networkPerformanceConfigs,
    this.params,
    this.partnerMetadata,
    this.project,
    this.pulumiLabels,
    this.reservationAffinities,
    this.resourcePolicies,
    this.schedulings,
    this.scratchDisks,
    this.selfLink,
    this.serviceAccounts,
    this.shieldedInstanceConfigs,
    this.tags,
    this.tagsFingerprint,
    this.workloadIdentityConfigs,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?(() { final guardedValue = advancedMachineFeatures; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceAdvancedMachineFeature, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'allowStoppingForUpdate': ?allowStoppingForUpdate,
      'attachedDisks': ?(() { final guardedValue = attachedDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceAttachedDisk, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'bootDisks': ?(() { final guardedValue = bootDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceBootDisk, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfigs': ?(() { final guardedValue = confidentialInstanceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceConfidentialInstanceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cpuPlatform': ?cpuPlatform,
      'creationTimestamp': ?creationTimestamp,
      'currentStatus': ?currentStatus,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'desiredStatus': ?desiredStatus,
      'effectiveLabels': ?effectiveLabels,
      'enableDisplay': ?enableDisplay,
      'eraseWindowsVssSignature': ?eraseWindowsVssSignature,
      'guestAccelerators': ?(() { final guardedValue = guestAccelerators; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGuestAccelerator, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'hostname': ?hostname,
      'id': ?id,
      'instanceEncryptionKeys': ?(() { final guardedValue = instanceEncryptionKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceInstanceEncryptionKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
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
      'networkInterfaces': ?(() { final guardedValue = networkInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceNetworkInterface, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'networkPerformanceConfigs': ?(() { final guardedValue = networkPerformanceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceNetworkPerformanceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'params': ?(() { final guardedValue = params; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceParam, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'partnerMetadata': ?partnerMetadata,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reservationAffinities': ?(() { final guardedValue = reservationAffinities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceReservationAffinity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourcePolicies': ?resourcePolicies,
      'schedulings': ?(() { final guardedValue = schedulings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceScheduling, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scratchDisks': ?(() { final guardedValue = scratchDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceScratchDisk, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'serviceAccounts': ?(() { final guardedValue = serviceAccounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceServiceAccount, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'shieldedInstanceConfigs': ?(() { final guardedValue = shieldedInstanceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceShieldedInstanceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'tagsFingerprint': ?tagsFingerprint,
      'workloadIdentityConfigs': ?(() { final guardedValue = workloadIdentityConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceWorkloadIdentityConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zone': ?zone,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      advancedMachineFeatures: (() { final guardedValue = map['advancedMachineFeatures']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceAdvancedMachineFeature>(guardedValue, (value) => GetInstanceAdvancedMachineFeature.fromMap((value as Map).cast<String, dynamic>())); })(),
      allowStoppingForUpdate: (() { final guardedValue = map['allowStoppingForUpdate']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      attachedDisks: (() { final guardedValue = map['attachedDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceAttachedDisk>(guardedValue, (value) => GetInstanceAttachedDisk.fromMap((value as Map).cast<String, dynamic>())); })(),
      bootDisks: (() { final guardedValue = map['bootDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceBootDisk>(guardedValue, (value) => GetInstanceBootDisk.fromMap((value as Map).cast<String, dynamic>())); })(),
      canIpForward: (() { final guardedValue = map['canIpForward']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      confidentialInstanceConfigs: (() { final guardedValue = map['confidentialInstanceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceConfidentialInstanceConfig>(guardedValue, (value) => GetInstanceConfidentialInstanceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      cpuPlatform: (() { final guardedValue = map['cpuPlatform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentStatus: (() { final guardedValue = map['currentStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      desiredStatus: (() { final guardedValue = map['desiredStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      enableDisplay: (() { final guardedValue = map['enableDisplay']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      eraseWindowsVssSignature: (() { final guardedValue = map['eraseWindowsVssSignature']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      guestAccelerators: (() { final guardedValue = map['guestAccelerators']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGuestAccelerator>(guardedValue, (value) => GetInstanceGuestAccelerator.fromMap((value as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceEncryptionKeys: (() { final guardedValue = map['instanceEncryptionKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceInstanceEncryptionKey>(guardedValue, (value) => GetInstanceInstanceEncryptionKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyRevocationActionType: (() { final guardedValue = map['keyRevocationActionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      metadataFingerprint: (() { final guardedValue = map['metadataFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadataStartupScript: (() { final guardedValue = map['metadataStartupScript']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceNetworkInterface>(guardedValue, (value) => GetInstanceNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); })(),
      networkPerformanceConfigs: (() { final guardedValue = map['networkPerformanceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceNetworkPerformanceConfig>(guardedValue, (value) => GetInstanceNetworkPerformanceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceParam>(guardedValue, (value) => GetInstanceParam.fromMap((value as Map).cast<String, dynamic>())); })(),
      partnerMetadata: (() { final guardedValue = map['partnerMetadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      reservationAffinities: (() { final guardedValue = map['reservationAffinities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceReservationAffinity>(guardedValue, (value) => GetInstanceReservationAffinity.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      schedulings: (() { final guardedValue = map['schedulings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceScheduling>(guardedValue, (value) => GetInstanceScheduling.fromMap((value as Map).cast<String, dynamic>())); })(),
      scratchDisks: (() { final guardedValue = map['scratchDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceScratchDisk>(guardedValue, (value) => GetInstanceScratchDisk.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccounts: (() { final guardedValue = map['serviceAccounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceServiceAccount>(guardedValue, (value) => GetInstanceServiceAccount.fromMap((value as Map).cast<String, dynamic>())); })(),
      shieldedInstanceConfigs: (() { final guardedValue = map['shieldedInstanceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceShieldedInstanceConfig>(guardedValue, (value) => GetInstanceShieldedInstanceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tagsFingerprint: (() { final guardedValue = map['tagsFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workloadIdentityConfigs: (() { final guardedValue = map['workloadIdentityConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceWorkloadIdentityConfig>(guardedValue, (value) => GetInstanceWorkloadIdentityConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
