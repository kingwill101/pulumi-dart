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
import 'instance_from_template_workload_identity_config.dart';

/// Input properties used for looking up and filtering InstanceFromTemplate resources.
class InstanceFromTemplateState {
  /// Controls for advanced machine-related behavior features.
  final pulumi.Input<InstanceFromTemplateAdvancedMachineFeatures>? advancedMachineFeatures;
  /// If true, allows Terraform to stop the instance to update its properties. If you try to update a property that requires stopping the instance without setting this field, the update will fail.
  final pulumi.Input<bool>? allowStoppingForUpdate;
  /// List of disks attached to the instance
  final pulumi.Input<List<InstanceFromTemplateAttachedDisk>>? attachedDisks;
  /// The boot disk for the instance.
  final pulumi.Input<InstanceFromTemplateBootDisk>? bootDisk;
  /// Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  final pulumi.Input<bool>? canIpForward;
  /// The Confidential VM config being used by the instance.  onHostMaintenance has to be set to TERMINATE or this will fail to create.
  final pulumi.Input<InstanceFromTemplateConfidentialInstanceConfig>? confidentialInstanceConfig;
  /// The CPU platform used by this instance.
  final pulumi.Input<String>? cpuPlatform;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// Current status of the instance.
  /// This could be one of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED.
  /// For more information about the status of the instance, see [Instance life cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
  final pulumi.Input<String>? currentStatus;
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether deletion protection is enabled on this instance.
  final pulumi.Input<bool>? deletionProtection;
  /// A brief description of the resource.
  final pulumi.Input<String>? description;
  /// Desired status of the instance. Either "RUNNING", "SUSPENDED" or "TERMINATED".
  final pulumi.Input<String>? desiredStatus;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Whether the instance has virtual displays enabled.
  final pulumi.Input<bool>? enableDisplay;
  /// Specifies whether the disks restored from source snapshots or source machine image should erase Windows specific VSS signature.
  final pulumi.Input<bool>? eraseWindowsVssSignature;
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
  /// The ID of the project in which the resource belongs. If selfLink is provided, this value is ignored. If neither selfLink nor project are provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Specifies the reservations that this instance can consume from.
  final pulumi.Input<InstanceFromTemplateReservationAffinity>? reservationAffinity;
  /// A list of selfLinks of resource policies to attach to the instance. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String>? resourcePolicies;
  /// The scheduling strategy being used by the instance.
  final pulumi.Input<InstanceFromTemplateScheduling>? scheduling;
  /// * `network_interface.alias_ip_range`
  /// * `network_interface.alias_ipv6_range` [Beta]
  /// * `network_interface.access_config`
  final pulumi.Input<List<InstanceFromTemplateScratchDisk>>? scratchDisks;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The service account to attach to the instance.
  final pulumi.Input<InstanceFromTemplateServiceAccount>? serviceAccount;
  /// The shielded vm config being used by the instance.
  final pulumi.Input<InstanceFromTemplateShieldedInstanceConfig>? shieldedInstanceConfig;
  /// Name or self link of an instance
  /// template to create the instance based on. It is recommended to reference
  /// instance templates through their unique id (`selfLinkUnique` attribute).
  ///
  /// - - -
  final pulumi.Input<String>? sourceInstanceTemplate;
  /// The list of tags attached to the instance.
  final pulumi.Input<List<String>>? tags;
  /// The unique fingerprint of the tags.
  final pulumi.Input<String>? tagsFingerprint;
  /// Workload identity config.
  final pulumi.Input<InstanceFromTemplateWorkloadIdentityConfig>? workloadIdentityConfig;
  /// The zone that the machine should be created in. If not
  /// set, the provider zone is used.
  ///
  /// In addition to these, all arguments from `gcp.compute.Instance` are supported
  /// as a way to override the properties in the template. All exported attributes
  /// from `gcp.compute.Instance` are likewise exported here.
  ///
  /// To support removal of Optional/Computed fields in Terraform 0.12 the following fields
  /// are marked [Attributes as Blocks](https://www.terraform.io/docs/configuration/attr-as-blocks.html):
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceFromTemplateState].
  /// [advancedMachineFeatures] Controls for advanced machine-related behavior features.
  /// [allowStoppingForUpdate] If true, allows Terraform to stop the instance to update its properties. If you try to update a property that requires stopping the instance without setting this field, the update will fail.
  /// [attachedDisks] List of disks attached to the instance
  /// [bootDisk] The boot disk for the instance.
  /// [canIpForward] Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  /// [confidentialInstanceConfig] The Confidential VM config being used by the instance.  onHostMaintenance has to be set to TERMINATE or this will fail to create.
  /// [cpuPlatform] The CPU platform used by this instance.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [currentStatus] Current status of the instance.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [deletionProtection] Whether deletion protection is enabled on this instance.
  /// [description] A brief description of the resource.
  /// [desiredStatus] Desired status of the instance. Either "RUNNING", "SUSPENDED" or "TERMINATED".
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  /// [enableDisplay] Whether the instance has virtual displays enabled.
  /// [eraseWindowsVssSignature] Specifies whether the disks restored from source snapshots or source machine image should erase Windows specific VSS signature.
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
  /// [project] The ID of the project in which the resource belongs. If selfLink is provided, this value is ignored. If neither selfLink nor project are provided, the provider project is used.
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [reservationAffinity] Specifies the reservations that this instance can consume from.
  /// [resourcePolicies] A list of selfLinks of resource policies to attach to the instance. Currently a max of 1 resource policy is supported.
  /// [scheduling] The scheduling strategy being used by the instance.
  /// [scratchDisks] * `network_interface.alias_ip_range`
  /// [selfLink] The URI of the created resource.
  /// [serviceAccount] The service account to attach to the instance.
  /// [shieldedInstanceConfig] The shielded vm config being used by the instance.
  /// [sourceInstanceTemplate] Name or self link of an instance
  /// [tags] The list of tags attached to the instance.
  /// [tagsFingerprint] The unique fingerprint of the tags.
  /// [workloadIdentityConfig] Workload identity config.
  /// [zone] The zone that the machine should be created in. If not
  const InstanceFromTemplateState({
    this.advancedMachineFeatures,
    this.allowStoppingForUpdate,
    this.attachedDisks,
    this.bootDisk,
    this.canIpForward,
    this.confidentialInstanceConfig,
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
    this.sourceInstanceTemplate,
    this.tags,
    this.tagsFingerprint,
    this.workloadIdentityConfig,
    this.zone,
  });

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
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'desiredStatus': ?desiredStatus,
      'effectiveLabels': ?effectiveLabels,
      'enableDisplay': ?enableDisplay,
      'eraseWindowsVssSignature': ?eraseWindowsVssSignature,
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
      'workloadIdentityConfig': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateWorkloadIdentityConfig, Map<String, dynamic>>(workloadIdentityConfig, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory InstanceFromTemplateState.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateState(
      advancedMachineFeatures: (() { final guardedValue = map['advancedMachineFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromTemplateAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      allowStoppingForUpdate: (() { final guardedValue = map['allowStoppingForUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      attachedDisks: (() { final guardedValue = map['attachedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFromTemplateAttachedDisk>(guardedValue, (value) => InstanceFromTemplateAttachedDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bootDisk: (() { final guardedValue = map['bootDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromTemplateBootDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      canIpForward: (() { final guardedValue = map['canIpForward']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      confidentialInstanceConfig: (() { final guardedValue = map['confidentialInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromTemplateConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cpuPlatform: (() { final guardedValue = map['cpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentStatus: (() { final guardedValue = map['currentStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredStatus: (() { final guardedValue = map['desiredStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      enableDisplay: (() { final guardedValue = map['enableDisplay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eraseWindowsVssSignature: (() { final guardedValue = map['eraseWindowsVssSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guestAccelerators: (() { final guardedValue = map['guestAccelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFromTemplateGuestAccelerator>(guardedValue, (value) => InstanceFromTemplateGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceEncryptionKey: (() { final guardedValue = map['instanceEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromTemplateInstanceEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyRevocationActionType: (() { final guardedValue = map['keyRevocationActionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metadataFingerprint: (() { final guardedValue = map['metadataFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataStartupScript: (() { final guardedValue = map['metadataStartupScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFromTemplateNetworkInterface>(guardedValue, (value) => InstanceFromTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkPerformanceConfig: (() { final guardedValue = map['networkPerformanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromTemplateNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromTemplateParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      partnerMetadata: (() { final guardedValue = map['partnerMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromTemplateReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduling: (() { final guardedValue = map['scheduling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromTemplateScheduling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scratchDisks: (() { final guardedValue = map['scratchDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFromTemplateScratchDisk>(guardedValue, (value) => InstanceFromTemplateScratchDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromTemplateServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromTemplateShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceInstanceTemplate: (() { final guardedValue = map['sourceInstanceTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagsFingerprint: (() { final guardedValue = map['tagsFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentityConfig: (() { final guardedValue = map['workloadIdentityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromTemplateWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
