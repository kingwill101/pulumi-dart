// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_advanced_machine_features.dart';
import 'instance_attached_disk.dart';
import 'instance_boot_disk.dart';
import 'instance_confidential_instance_config.dart';
import 'instance_guest_accelerator.dart';
import 'instance_instance_encryption_key.dart';
import 'instance_network_interface.dart';
import 'instance_network_performance_config.dart';
import 'instance_params.dart';
import 'instance_reservation_affinity.dart';
import 'instance_scheduling.dart';
import 'instance_scratch_disk.dart';
import 'instance_service_account.dart';
import 'instance_shielded_instance_config.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading  on this VM. Structure is documented below
  final pulumi.Input<InstanceAdvancedMachineFeatures>? advancedMachineFeatures;
  /// If true, allows this prvider to stop the instance to update its properties.
  /// If you try to update a property that requires stopping the instance without setting this field, the update will fail.
  final pulumi.Input<bool>? allowStoppingForUpdate;
  /// Additional disks to attach to the instance. Can be repeated multiple times for multiple disks. Structure is documented below.
  final pulumi.Input<List<InstanceAttachedDisk>>? attachedDisks;
  /// The boot disk for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceBootDisk>? bootDisk;
  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs.
  /// This defaults to false.
  final pulumi.Input<bool>? canIpForward;
  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  final pulumi.Input<InstanceConfidentialInstanceConfig>? confidentialInstanceConfig;
  /// The CPU platform used by this instance.
  final pulumi.Input<String>? cpuPlatform;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// The current status of the instance. This could be one of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED. For more information about the status of the instance, see [Instance life cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
  final pulumi.Input<String>? currentStatus;
  /// Enable deletion protection on this instance. Defaults to false.
  /// **Note:** you must disable deletion protection before removing the resource (e.g., via `pulumi destroy`), or the instance cannot be deleted and the provider run will not complete successfully.
  final pulumi.Input<bool>? deletionProtection;
  /// A brief description of this resource.
  final pulumi.Input<String>? description;
  /// Desired status of the instance. Either
  /// `"RUNNING"`, `"SUSPENDED"` or `"TERMINATED"`.
  final pulumi.Input<String>? desiredStatus;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: `allow_stopping_for_update` must be set to true or your instance must have a `desired_status` of `TERMINATED` in order to update this field.
  final pulumi.Input<bool>? enableDisplay;
  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  /// **Note:** GPU accelerators can only be used with `on_host_maintenance` option set to TERMINATE.
  final pulumi.Input<List<InstanceGuestAccelerator>>? guestAccelerators;
  /// A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid.
  /// Valid format is a series of labels 1-63 characters long matching the regular expression `a-z`, concatenated with periods.
  /// The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostname;
  /// Configuration for data encryption on the instance with encryption keys. Structure is documented below.
  final pulumi.Input<InstanceInstanceEncryptionKey>? instanceEncryptionKey;
  /// The server-assigned unique identifier of this instance.
  final pulumi.Input<String>? instanceId;
  /// Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  final pulumi.Input<String>? keyRevocationActionType;
  /// The unique fingerprint of the labels.
  final pulumi.Input<String>? labelFingerprint;
  /// A map of key/value label pairs to assign to the instance.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The machine type to create.
  ///
  /// **Note:** If you want to update this value (resize the VM) after initial creation, you must set `allow_stopping_for_update` to `true`.
  ///
  /// [Custom machine types](https://cloud.google.com/dataproc/docs/concepts/compute/custom-machine-types) can be formatted as `custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY_MB`, e.g. `custom-6-20480` for 6 vCPU and 20GB of RAM.
  /// Because of current API limitations some custom machine types may get converted to different machine types (such as an equivalent standard type) and cause non-empty plans in your configuration. Use
  /// `lifecycle.ignore_changes` on `machine_type` in these cases.
  ///
  /// There is a limit of 6.5 GB per CPU unless you add [extended memory](https://cloud.google.com/compute/docs/instances/creating-instance-with-custom-machine-type#extendedmemory). You must do this explicitly by adding the suffix `-ext`, e.g. `custom-2-15360-ext` for 2 vCPU and 15 GB of memory.
  final pulumi.Input<String>? machineType;
  /// Metadata key/value pairs to make available from
  /// within the instance. Ssh keys attached in the Cloud Console will be removed.
  /// Add them to your config in order to keep them attached to your instance.
  /// A list of predefined metadata keys (e.g. ssh-keys) can be found [here](https://cloud.google.com/compute/docs/metadata/predefined-metadata-keys)
  ///
  /// > Depending on the OS you choose for your instance, some metadata keys have
  /// special functionality.  Most linux-based images will run the content of
  /// `metadata.startup-script` in a shell on every boot.  At a minimum,
  /// Debian, CentOS, RHEL, SLES, Container-Optimized OS, and Ubuntu images
  /// support this key.  Windows instances require other keys depending on the format
  /// of the script and the time you would like it to run - see [this table](https://cloud.google.com/compute/docs/startupscript#providing_a_startup_script_for_windows_instances).
  /// For the convenience of the users of `metadata.startup-script`,
  /// we provide a special attribute, `metadata_startup_script`, which is documented below.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The unique fingerprint of the metadata.
  final pulumi.Input<String>? metadataFingerprint;
  /// An alternative to using the
  /// startup-script metadata key, except this one forces the instance to be recreated
  /// (thus re-running the script) if it is changed. This replaces the startup-script
  /// metadata key on the created instance and thus the two mechanisms are not
  /// allowed to be used simultaneously.  Users are free to use either mechanism - the
  /// only distinction is that this separate attribute will cause a recreate on
  /// modification.  On import, `metadata_startup_script` will not be set - if you
  /// choose to specify it you will see a diff immediately after import causing a
  /// destroy/recreate operation. If importing an instance and specifying this value
  /// is desired, you will need to modify your state file.
  final pulumi.Input<String>? metadataStartupScript;
  /// Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  /// **Note**: `allow_stopping_for_update` must be set to true or your instance must have a `desired_status` of `TERMINATED` in order to update this field.
  final pulumi.Input<String>? minCpuPlatform;
  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Networks to attach to the instance. This can
  /// be specified multiple times. Structure is documented below.
  ///
  /// - - -
  final pulumi.Input<List<InstanceNetworkInterface>>? networkInterfaces;
  /// (Optional, Beta
  /// Configures network performance settings for the instance. Structure is
  /// documented below. **Note**: `machine_type` must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the `image` used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  final pulumi.Input<InstanceNetworkPerformanceConfig>? networkPerformanceConfig;
  /// Additional instance parameters.
  /// .
  final pulumi.Input<InstanceParams>? params;
  /// Beta key/value pair represents partner metadata assigned to instance where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  final pulumi.Input<Map<String, String>>? partnerMetadata;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  final pulumi.Input<InstanceReservationAffinity>? reservationAffinity;
  /// - A list of self_links of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String>? resourcePolicies;
  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  final pulumi.Input<InstanceScheduling>? scheduling;
  /// Scratch disks to attach to the instance. This can be
  /// specified multiple times for multiple scratch disks. Structure is documented below.
  final pulumi.Input<List<InstanceScratchDisk>>? scratchDisks;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Service account to attach to the instance.
  /// Structure is documented below.
  /// **Note**: `allow_stopping_for_update` must be set to true or your instance must have a `desired_status` of `TERMINATED` in order to update this field.
  final pulumi.Input<InstanceServiceAccount>? serviceAccount;
  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: `shielded_instance_config` can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  /// **Note**: `allow_stopping_for_update` must be set to true or your instance must have a `desired_status` of `TERMINATED` in order to update this field.
  final pulumi.Input<InstanceShieldedInstanceConfig>? shieldedInstanceConfig;
  /// A list of network tags to attach to the instance.
  final pulumi.Input<List<String>>? tags;
  /// The unique fingerprint of the tags.
  final pulumi.Input<String>? tagsFingerprint;
  /// The zone that the machine should be created in. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceState].
  /// [advancedMachineFeatures] Configure Nested Virtualisation and Simultaneous Hyper Threading  on this VM. Structure is documented below
  /// [allowStoppingForUpdate] If true, allows this prvider to stop the instance to update its properties.
  /// [attachedDisks] Additional disks to attach to the instance. Can be repeated multiple times for multiple disks. Structure is documented below.
  /// [bootDisk] The boot disk for the instance.
  /// [canIpForward] Whether to allow sending and receiving of
  /// [confidentialInstanceConfig] Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  /// [cpuPlatform] The CPU platform used by this instance.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [currentStatus] The current status of the instance. This could be one of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED. For more information about the status of the instance, see [Instance life cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
  /// [deletionProtection] Enable deletion protection on this instance. Defaults to false.
  /// [description] A brief description of this resource.
  /// [desiredStatus] Desired status of the instance. Either
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enableDisplay] Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance. Structure documented below.
  /// [hostname] A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid.
  /// [instanceEncryptionKey] Configuration for data encryption on the instance with encryption keys. Structure is documented below.
  /// [instanceId] The server-assigned unique identifier of this instance.
  /// [keyRevocationActionType] Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  /// [labelFingerprint] The unique fingerprint of the labels.
  /// [labels] A map of key/value label pairs to assign to the instance.
  /// [machineType] The machine type to create.
  /// [metadata] Metadata key/value pairs to make available from
  /// [metadataFingerprint] The unique fingerprint of the metadata.
  /// [metadataStartupScript] An alternative to using the
  /// [minCpuPlatform] Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as
  /// [name] A unique name for the resource, required by GCE.
  /// [networkInterfaces] Networks to attach to the instance. This can
  /// [networkPerformanceConfig] (Optional, Beta
  /// [params] Additional instance parameters.
  /// [partnerMetadata] Beta key/value pair represents partner metadata assigned to instance where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [reservationAffinity] Specifies the reservations that this instance can consume from.
  /// [resourcePolicies] - A list of self_links of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  /// [scheduling] The scheduling strategy to use. More details about
  /// [scratchDisks] Scratch disks to attach to the instance. This can be
  /// [selfLink] The URI of the created resource.
  /// [serviceAccount] Service account to attach to the instance.
  /// [shieldedInstanceConfig] Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// [tags] A list of network tags to attach to the instance.
  /// [tagsFingerprint] The unique fingerprint of the tags.
  /// [zone] The zone that the machine should be created in. If it is not provided, the provider zone is used.
  InstanceState({
    this.advancedMachineFeatures,
    this.allowStoppingForUpdate,
    this.attachedDisks,
    this.bootDisk,
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
    this.tags,
    this.tagsFingerprint,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<InstanceAdvancedMachineFeatures, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'allowStoppingForUpdate': ?allowStoppingForUpdate,
      'attachedDisks': ?pulumi.Input.mapOptionalInputValue<List<InstanceAttachedDisk>, List<Map<String, dynamic>>>(attachedDisks, (value) => pulumi.Input.encodeList<InstanceAttachedDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDisk': ?pulumi.Input.mapOptionalInputValue<InstanceBootDisk, Map<String, dynamic>>(bootDisk, (value) => value.toMap()),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceConfidentialInstanceConfig, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'cpuPlatform': ?cpuPlatform,
      'creationTimestamp': ?creationTimestamp,
      'currentStatus': ?currentStatus,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'desiredStatus': ?desiredStatus,
      'effectiveLabels': ?effectiveLabels,
      'enableDisplay': ?enableDisplay,
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<InstanceGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<InstanceGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'instanceEncryptionKey': ?pulumi.Input.mapOptionalInputValue<InstanceInstanceEncryptionKey, Map<String, dynamic>>(instanceEncryptionKey, (value) => value.toMap()),
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
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<InstanceNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<InstanceNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceNetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'params': ?pulumi.Input.mapOptionalInputValue<InstanceParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'partnerMetadata': ?partnerMetadata,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<InstanceReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourcePolicies': ?resourcePolicies,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<InstanceScheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'scratchDisks': ?pulumi.Input.mapOptionalInputValue<List<InstanceScratchDisk>, List<Map<String, dynamic>>>(scratchDisks, (value) => pulumi.Input.encodeList<InstanceScratchDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfLink': ?selfLink,
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<InstanceServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': ?tags,
      'tagsFingerprint': ?tagsFingerprint,
      'zone': ?zone,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null ? null : (InstanceAdvancedMachineFeatures.fromMap((map['advancedMachineFeatures']! as Map).cast<String, dynamic>())).input(),
      allowStoppingForUpdate: map['allowStoppingForUpdate'] == null ? null : (map['allowStoppingForUpdate']! as bool).input(),
      attachedDisks: map['attachedDisks'] == null ? null : (pulumi.Input.decodeList<InstanceAttachedDisk>(map['attachedDisks']!, (value) => InstanceAttachedDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bootDisk: map['bootDisk'] == null ? null : (InstanceBootDisk.fromMap((map['bootDisk']! as Map).cast<String, dynamic>())).input(),
      canIpForward: map['canIpForward'] == null ? null : (map['canIpForward']! as bool).input(),
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null ? null : (InstanceConfidentialInstanceConfig.fromMap((map['confidentialInstanceConfig']! as Map).cast<String, dynamic>())).input(),
      cpuPlatform: map['cpuPlatform'] == null ? null : (map['cpuPlatform']! as String).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      currentStatus: map['currentStatus'] == null ? null : (map['currentStatus']! as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      desiredStatus: map['desiredStatus'] == null ? null : (map['desiredStatus']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      enableDisplay: map['enableDisplay'] == null ? null : (map['enableDisplay']! as bool).input(),
      guestAccelerators: map['guestAccelerators'] == null ? null : (pulumi.Input.decodeList<InstanceGuestAccelerator>(map['guestAccelerators']!, (value) => InstanceGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      instanceEncryptionKey: map['instanceEncryptionKey'] == null ? null : (InstanceInstanceEncryptionKey.fromMap((map['instanceEncryptionKey']! as Map).cast<String, dynamic>())).input(),
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
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<InstanceNetworkInterface>(map['networkInterfaces']!, (value) => InstanceNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null ? null : (InstanceNetworkPerformanceConfig.fromMap((map['networkPerformanceConfig']! as Map).cast<String, dynamic>())).input(),
      params: map['params'] == null ? null : (InstanceParams.fromMap((map['params']! as Map).cast<String, dynamic>())).input(),
      partnerMetadata: map['partnerMetadata'] == null ? null : ((map['partnerMetadata']! as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      reservationAffinity: map['reservationAffinity'] == null ? null : (InstanceReservationAffinity.fromMap((map['reservationAffinity']! as Map).cast<String, dynamic>())).input(),
      resourcePolicies: map['resourcePolicies'] == null ? null : (map['resourcePolicies']! as String).input(),
      scheduling: map['scheduling'] == null ? null : (InstanceScheduling.fromMap((map['scheduling']! as Map).cast<String, dynamic>())).input(),
      scratchDisks: map['scratchDisks'] == null ? null : (pulumi.Input.decodeList<InstanceScratchDisk>(map['scratchDisks']!, (value) => InstanceScratchDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (InstanceServiceAccount.fromMap((map['serviceAccount']! as Map).cast<String, dynamic>())).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (InstanceShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      tagsFingerprint: map['tagsFingerprint'] == null ? null : (map['tagsFingerprint']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

