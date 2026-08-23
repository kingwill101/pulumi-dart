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
import 'instance_workload_identity_config.dart';

/// {@template pulumi_compute_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_compute_instance_instance_args_doc}
class InstanceArgs {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading  on this VM. Structure is documented below
  final pulumi.Input<InstanceAdvancedMachineFeatures>? advancedMachineFeatures;
  /// If true, allows this provider to stop the instance to update its properties.
  /// If you try to update a property that requires stopping the instance without setting this field, the update will fail.
  final pulumi.Input<bool>? allowStoppingForUpdate;
  /// Additional disks to attach to the instance. Can be repeated multiple times for multiple disks. Structure is documented below.
  final pulumi.Input<List<InstanceAttachedDisk>>? attachedDisks;
  /// The boot disk for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceBootDisk> bootDisk;
  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs.
  /// This defaults to false.
  final pulumi.Input<bool>? canIpForward;
  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  final pulumi.Input<InstanceConfidentialInstanceConfig>? confidentialInstanceConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Enable deletion protection on this instance. Defaults to false.
  /// **Note:** you must disable deletion protection before removing the resource (e.g., via `pulumi destroy`), or the instance cannot be deleted and the provider run will not complete successfully.
  final pulumi.Input<bool>? deletionProtection;
  /// A brief description of this resource.
  final pulumi.Input<String>? description;
  /// Desired status of the instance. Either
  /// `"RUNNING"`, `"SUSPENDED"` or `"TERMINATED"`.
  final pulumi.Input<String>? desiredStatus;
  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: `allowStoppingForUpdate` must be set to true or your instance must have a `desiredStatus` of `TERMINATED` in order to update this field.
  final pulumi.Input<bool>? enableDisplay;
  /// Beta Specifies whether the disks restored from source snapshots or source machine image should erase Windows specific VSS signature.
  final pulumi.Input<bool>? eraseWindowsVssSignature;
  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  /// **Note:** GPU accelerators can only be used with `onHostMaintenance` option set to TERMINATE.
  final pulumi.Input<List<InstanceGuestAccelerator>>? guestAccelerators;
  /// A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid.
  /// Valid format is a series of labels 1-63 characters long matching the regular expression `a-z`, concatenated with periods.
  /// The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostname;
  /// Configuration for data encryption on the instance with encryption keys. Structure is documented below.
  final pulumi.Input<InstanceInstanceEncryptionKey>? instanceEncryptionKey;
  /// Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  final pulumi.Input<String>? keyRevocationActionType;
  /// A map of key/value label pairs to assign to the instance.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The machine type to create.
  ///
  /// **Note:** If you want to update this value (resize the VM) after initial creation, you must set `allowStoppingForUpdate` to `true`.
  ///
  /// [Custom machine types](https://cloud.google.com/dataproc/docs/concepts/compute/custom-machine-types) can be formatted as `custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY_MB`, e.g. `custom-6-20480` for 6 vCPU and 20GB of RAM.
  /// Because of current API limitations some custom machine types may get converted to different machine types (such as an equivalent standard type) and cause non-empty plans in your configuration. Use
  /// `lifecycle.ignore_changes` on `machineType` in these cases.
  ///
  /// There is a limit of 6.5 GB per CPU unless you add [extended memory](https://cloud.google.com/compute/docs/instances/creating-instance-with-custom-machine-type#extendedmemory). You must do this explicitly by adding the suffix `-ext`, e.g. `custom-2-15360-ext` for 2 vCPU and 15 GB of memory.
  final pulumi.Input<String> machineType;
  /// Metadata key/value pairs to make available from
  /// within the instance. Ssh keys attached in the Cloud Console will be removed.
  /// Add them to your config in order to keep them attached to your instance.
  /// A list of predefined metadata keys (e.g. ssh-keys) can be found [here](https://cloud.google.com/compute/docs/metadata/predefined-metadata-keys)
  ///
  /// &gt; Depending on the OS you choose for your instance, some metadata keys have
  /// special functionality.  Most linux-based images will run the content of
  /// `metadata.startup-script` in a shell on every boot.  At a minimum,
  /// Debian, CentOS, RHEL, SLES, Container-Optimized OS, and Ubuntu images
  /// support this key.  Windows instances require other keys depending on the format
  /// of the script and the time you would like it to run - see [this table](https://cloud.google.com/compute/docs/startupscript#providing_a_startup_script_for_windows_instances).
  /// For the convenience of the users of `metadata.startup-script`,
  /// we provide a special attribute, `metadataStartupScript`, which is documented below.
  final pulumi.Input<Map<String, String>>? metadata;
  /// An alternative to using the
  /// startup-script metadata key, except this one forces the instance to be recreated
  /// (thus re-running the script) if it is changed. This replaces the startup-script
  /// metadata key on the created instance and thus the two mechanisms are not
  /// allowed to be used simultaneously.  Users are free to use either mechanism - the
  /// only distinction is that this separate attribute will cause a recreate on
  /// modification.  On import, `metadataStartupScript` will not be set - if you
  /// choose to specify it you will see a diff immediately after import causing a
  /// destroy/recreate operation. If importing an instance and specifying this value
  /// is desired, you will need to modify your state file.
  final pulumi.Input<String>? metadataStartupScript;
  /// Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  /// **Note**: `allowStoppingForUpdate` must be set to true or your instance must have a `desiredStatus` of `TERMINATED` in order to update this field.
  final pulumi.Input<String>? minCpuPlatform;
  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Networks to attach to the instance. This can
  /// be specified multiple times. Structure is documented below.
  ///
  /// - - -
  final pulumi.Input<List<InstanceNetworkInterface>> networkInterfaces;
  /// Configures network performance settings for the instance. Structure is
  /// documented below. **Note**: `machineType` must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
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
  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  final pulumi.Input<InstanceReservationAffinity>? reservationAffinity;
  /// - A list of selfLinks of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String>? resourcePolicies;
  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  final pulumi.Input<InstanceScheduling>? scheduling;
  /// Scratch disks to attach to the instance. This can be
  /// specified multiple times for multiple scratch disks. Structure is documented below.
  final pulumi.Input<List<InstanceScratchDisk>>? scratchDisks;
  /// Service account to attach to the instance.
  /// Structure is documented below.
  /// **Note**: `allowStoppingForUpdate` must be set to true or your instance must have a `desiredStatus` of `TERMINATED` in order to update this field.
  final pulumi.Input<InstanceServiceAccount>? serviceAccount;
  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: `shieldedInstanceConfig` can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  /// **Note**: `allowStoppingForUpdate` must be set to true or your instance must have a `desiredStatus` of `TERMINATED` in order to update this field.
  final pulumi.Input<InstanceShieldedInstanceConfig>? shieldedInstanceConfig;
  /// A list of network tags to attach to the instance.
  final pulumi.Input<List<String>>? tags;
  /// Workload Identity Config. More details about
  /// this configuration option are detailed below.
  final pulumi.Input<InstanceWorkloadIdentityConfig>? workloadIdentityConfig;
  /// The zone that the machine should be created in. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceArgs].
  /// [advancedMachineFeatures] Configure Nested Virtualisation and Simultaneous Hyper Threading  on this VM. Structure is documented below
  /// [allowStoppingForUpdate] If true, allows this provider to stop the instance to update its properties.
  /// [attachedDisks] Additional disks to attach to the instance. Can be repeated multiple times for multiple disks. Structure is documented below.
  /// [bootDisk] The boot disk for the instance.
  /// [canIpForward] Whether to allow sending and receiving of
  /// [confidentialInstanceConfig] Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [deletionProtection] Enable deletion protection on this instance. Defaults to false.
  /// [description] A brief description of this resource.
  /// [desiredStatus] Desired status of the instance. Either
  /// [enableDisplay] Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// [eraseWindowsVssSignature] Beta Specifies whether the disks restored from source snapshots or source machine image should erase Windows specific VSS signature.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance. Structure documented below.
  /// [hostname] A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid.
  /// [instanceEncryptionKey] Configuration for data encryption on the instance with encryption keys. Structure is documented below.
  /// [keyRevocationActionType] Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  /// [labels] A map of key/value label pairs to assign to the instance.
  /// [machineType] The machine type to create.
  /// [metadata] Metadata key/value pairs to make available from
  /// [metadataStartupScript] An alternative to using the
  /// [minCpuPlatform] Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as
  /// [name] A unique name for the resource, required by GCE.
  /// [networkInterfaces] Networks to attach to the instance. This can
  /// [networkPerformanceConfig] Configures network performance settings for the instance. Structure is
  /// [params] Additional instance parameters.
  /// [partnerMetadata] Beta key/value pair represents partner metadata assigned to instance where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [reservationAffinity] Specifies the reservations that this instance can consume from.
  /// [resourcePolicies] - A list of selfLinks of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  /// [scheduling] The scheduling strategy to use. More details about
  /// [scratchDisks] Scratch disks to attach to the instance. This can be
  /// [serviceAccount] Service account to attach to the instance.
  /// [shieldedInstanceConfig] Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// [tags] A list of network tags to attach to the instance.
  /// [workloadIdentityConfig] Workload Identity Config. More details about
  /// [zone] The zone that the machine should be created in. If it is not provided, the provider zone is used.
  const InstanceArgs({
    this.advancedMachineFeatures,
    this.allowStoppingForUpdate,
    this.attachedDisks,
    required this.bootDisk,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.deletionPolicy,
    this.deletionProtection,
    this.description,
    this.desiredStatus,
    this.enableDisplay,
    this.eraseWindowsVssSignature,
    this.guestAccelerators,
    this.hostname,
    this.instanceEncryptionKey,
    this.keyRevocationActionType,
    this.labels,
    required this.machineType,
    this.metadata,
    this.metadataStartupScript,
    this.minCpuPlatform,
    this.name,
    required this.networkInterfaces,
    this.networkPerformanceConfig,
    this.params,
    this.partnerMetadata,
    this.project,
    this.reservationAffinity,
    this.resourcePolicies,
    this.scheduling,
    this.scratchDisks,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.tags,
    this.workloadIdentityConfig,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<InstanceAdvancedMachineFeatures, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'allowStoppingForUpdate': ?allowStoppingForUpdate,
      'attachedDisks': ?pulumi.Input.mapOptionalInputValue<List<InstanceAttachedDisk>, List<Map<String, dynamic>>>(attachedDisks, (value) => pulumi.Input.encodeList<InstanceAttachedDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDisk': pulumi.Input.mapInputValue<InstanceBootDisk, Map<String, dynamic>>(bootDisk, (value) => value.toMap()),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceConfidentialInstanceConfig, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'desiredStatus': ?desiredStatus,
      'enableDisplay': ?enableDisplay,
      'eraseWindowsVssSignature': ?eraseWindowsVssSignature,
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<InstanceGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<InstanceGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'instanceEncryptionKey': ?pulumi.Input.mapOptionalInputValue<InstanceInstanceEncryptionKey, Map<String, dynamic>>(instanceEncryptionKey, (value) => value.toMap()),
      'keyRevocationActionType': ?keyRevocationActionType,
      'labels': ?labels,
      'machineType': machineType,
      'metadata': ?metadata,
      'metadataStartupScript': ?metadataStartupScript,
      'minCpuPlatform': ?minCpuPlatform,
      'name': ?name,
      'networkInterfaces': pulumi.Input.mapInputValue<List<InstanceNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<InstanceNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceNetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'params': ?pulumi.Input.mapOptionalInputValue<InstanceParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'partnerMetadata': ?partnerMetadata,
      'project': ?project,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<InstanceReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourcePolicies': ?resourcePolicies,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<InstanceScheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'scratchDisks': ?pulumi.Input.mapOptionalInputValue<List<InstanceScratchDisk>, List<Map<String, dynamic>>>(scratchDisks, (value) => pulumi.Input.encodeList<InstanceScratchDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<InstanceServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': ?tags,
      'workloadIdentityConfig': ?pulumi.Input.mapOptionalInputValue<InstanceWorkloadIdentityConfig, Map<String, dynamic>>(workloadIdentityConfig, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      advancedMachineFeatures: (() { final guardedValue = map['advancedMachineFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      allowStoppingForUpdate: (() { final guardedValue = map['allowStoppingForUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      attachedDisks: (() { final guardedValue = map['attachedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceAttachedDisk>(guardedValue, (value) => InstanceAttachedDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bootDisk: pulumi.Input.fromValue(InstanceBootDisk.fromMap((map['bootDisk']! as Map).cast<String, dynamic>())),
      canIpForward: (() { final guardedValue = map['canIpForward']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      confidentialInstanceConfig: (() { final guardedValue = map['confidentialInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredStatus: (() { final guardedValue = map['desiredStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDisplay: (() { final guardedValue = map['enableDisplay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eraseWindowsVssSignature: (() { final guardedValue = map['eraseWindowsVssSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guestAccelerators: (() { final guardedValue = map['guestAccelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGuestAccelerator>(guardedValue, (value) => InstanceGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceEncryptionKey: (() { final guardedValue = map['instanceEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceInstanceEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyRevocationActionType: (() { final guardedValue = map['keyRevocationActionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metadataStartupScript: (() { final guardedValue = map['metadataStartupScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceNetworkInterface>(map['networkInterfaces']!, (value) => InstanceNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))),
      networkPerformanceConfig: (() { final guardedValue = map['networkPerformanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      partnerMetadata: (() { final guardedValue = map['partnerMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduling: (() { final guardedValue = map['scheduling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceScheduling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scratchDisks: (() { final guardedValue = map['scratchDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceScratchDisk>(guardedValue, (value) => InstanceScratchDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      workloadIdentityConfig: (() { final guardedValue = map['workloadIdentityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
