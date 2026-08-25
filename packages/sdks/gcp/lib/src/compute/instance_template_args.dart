// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_template_advanced_machine_features.dart';
import 'instance_template_confidential_instance_config.dart';
import 'instance_template_disk.dart';
import 'instance_template_guest_accelerator.dart';
import 'instance_template_network_interface.dart';
import 'instance_template_network_performance_config.dart';
import 'instance_template_reservation_affinity.dart';
import 'instance_template_scheduling.dart';
import 'instance_template_service_account.dart';
import 'instance_template_shielded_instance_config.dart';
import 'instance_template_workload_identity_config.dart';

/// {@template pulumi_compute_instance_template_instance_template_args_doc}
/// The set of arguments for InstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_instance_template_instance_template_args_doc}
class InstanceTemplateArgs {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  final pulumi.Input<InstanceTemplateAdvancedMachineFeatures?>? advancedMachineFeatures;
  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs. This defaults to false.
  final pulumi.Input<bool?>? canIpForward;
  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  final pulumi.Input<InstanceTemplateConfidentialInstanceConfig?>? confidentialInstanceConfig;
  /// A brief description of this resource.
  final pulumi.Input<String?>? description;
  /// Disks to attach to instances created from this template.
  /// This can be specified multiple times for multiple disks. Structure is
  /// documented below.
  final pulumi.Input<List<InstanceTemplateDisk>> disks;
  /// ) Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: `allowStoppingForUpdate` must be set to true in order to update this field.
  final pulumi.Input<bool?>? enableDisplay;
  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  final pulumi.Input<List<InstanceTemplateGuestAccelerator>?>? guestAccelerators;
  /// A brief description to use for instances
  /// created from this template.
  final pulumi.Input<String?>? instanceDescription;
  /// Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  final pulumi.Input<String?>? keyRevocationActionType;
  /// A set of key/value label pairs to assign to instances
  /// created from this template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The machine type to create.
  ///
  /// To create a machine with a [custom type](https://cloud.google.com/dataproc/docs/concepts/compute/custom-machine-types) (such as extended memory), format the value like `custom-VCPUS-MEM_IN_MB` like `custom-6-20480` for 6 vCPU and 20GB of RAM.
  ///
  /// More advanced machine types like [z3](https://cloud.google.com/compute/docs/storage-optimized-machines) will
  /// create disks that cannot be managed by Terraform by default. You can account for that by using `lifecycle.ignore_changes` or adding these disks into your config.
  ///
  /// - - -
  final pulumi.Input<String> machineType;
  /// Metadata key/value pairs to make available from
  /// within instances created from this template.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// An alternative to using the
  /// startup-script metadata key, mostly to match the computeInstance resource.
  /// This replaces the startup-script metadata key on the created instance and
  /// thus the two mechanisms are not allowed to be used simultaneously.
  final pulumi.Input<String?>? metadataStartupScript;
  /// Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  final pulumi.Input<String?>? minCpuPlatform;
  /// The name of the instance template. If you leave
  /// this blank, the provider will auto-generate a unique name.
  final pulumi.Input<String?>? name;
  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  ///
  /// Resulting name for a `namePrefix` &lt;= 37 characters:
  /// `namePrefix` + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a `namePrefix` 38 - 54 characters:
  /// `namePrefix` + YYmmdd + 3 digit incremental counter
  final pulumi.Input<String?>? namePrefix;
  /// Networks to attach to instances created from
  /// this template. This can be specified multiple times for multiple networks.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceTemplateNetworkInterface>?>? networkInterfaces;
  /// (Optional, Configures network performance settings for the instance created from the
  /// template. Structure is documented below. **Note**: `machineType`
  /// must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the `image` used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  final pulumi.Input<InstanceTemplateNetworkPerformanceConfig?>? networkPerformanceConfig;
  /// Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  final pulumi.Input<Map<String, String>?>? partnerMetadata;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// An instance template is a global resource that is not
  /// bound to a zone or a region. However, you can still specify some regional
  /// resources in an instance template, which restricts the template to the
  /// region where that resource resides. For example, a custom `subnetwork`
  /// resource is tied to a specific region. Defaults to the region of the
  /// Provider if no value is given.
  final pulumi.Input<String?>? region;
  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  final pulumi.Input<InstanceTemplateReservationAffinity?>? reservationAffinity;
  /// A set of key/value resource manager tag pairs to bind to the instances. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  final pulumi.Input<Map<String, String>?>? resourceManagerTags;
  /// - A list of selfLinks of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String?>? resourcePolicies;
  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  final pulumi.Input<InstanceTemplateScheduling?>? scheduling;
  /// Service account to attach to the instance. Structure is documented below.
  final pulumi.Input<InstanceTemplateServiceAccount?>? serviceAccount;
  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: `shieldedInstanceConfig` can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  final pulumi.Input<InstanceTemplateShieldedInstanceConfig?>? shieldedInstanceConfig;
  /// Tags to attach to the instance.
  final pulumi.Input<List<String>?>? tags;
  /// Workload Identity Config. More details about
  /// this configuration option are detailed below.
  final pulumi.Input<InstanceTemplateWorkloadIdentityConfig?>? workloadIdentityConfig;

  /// Creates a new [InstanceTemplateArgs].
  /// [advancedMachineFeatures] Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  /// [canIpForward] Whether to allow sending and receiving of
  /// [confidentialInstanceConfig] Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  /// [description] A brief description of this resource.
  /// [disks] Disks to attach to instances created from this template.
  /// [enableDisplay] ) Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance. Structure documented below.
  /// [instanceDescription] A brief description to use for instances
  /// [keyRevocationActionType] Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  /// [labels] A set of key/value label pairs to assign to instances
  /// [machineType] The machine type to create.
  /// [metadata] Metadata key/value pairs to make available from
  /// [metadataStartupScript] An alternative to using the
  /// [minCpuPlatform] Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// [name] The name of the instance template. If you leave
  /// [namePrefix] Creates a unique name beginning with the specified
  /// [networkInterfaces] Networks to attach to instances created from
  /// [networkPerformanceConfig] (Optional, Configures network performance settings for the instance created from the
  /// [partnerMetadata] Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [region] An instance template is a global resource that is not
  /// [reservationAffinity] Specifies the reservations that this instance can consume from.
  /// [resourceManagerTags] A set of key/value resource manager tag pairs to bind to the instances. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  /// [resourcePolicies] - A list of selfLinks of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  /// [scheduling] The scheduling strategy to use. More details about
  /// [serviceAccount] Service account to attach to the instance. Structure is documented below.
  /// [shieldedInstanceConfig] Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// [tags] Tags to attach to the instance.
  /// [workloadIdentityConfig] Workload Identity Config. More details about
  const InstanceTemplateArgs({
    this.advancedMachineFeatures,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.description,
    required this.disks,
    this.enableDisplay,
    this.guestAccelerators,
    this.instanceDescription,
    this.keyRevocationActionType,
    this.labels,
    required this.machineType,
    this.metadata,
    this.metadataStartupScript,
    this.minCpuPlatform,
    this.name,
    this.namePrefix,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.partnerMetadata,
    this.project,
    this.region,
    this.reservationAffinity,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.scheduling,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.tags,
    this.workloadIdentityConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<InstanceTemplateAdvancedMachineFeatures, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceTemplateConfidentialInstanceConfig, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'description': ?description,
      'disks': pulumi.Input.mapInputValue<List<InstanceTemplateDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<InstanceTemplateDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableDisplay': ?enableDisplay,
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<InstanceTemplateGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<InstanceTemplateGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceDescription': ?instanceDescription,
      'keyRevocationActionType': ?keyRevocationActionType,
      'labels': ?labels,
      'machineType': machineType,
      'metadata': ?metadata,
      'metadataStartupScript': ?metadataStartupScript,
      'minCpuPlatform': ?minCpuPlatform,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<InstanceTemplateNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<InstanceTemplateNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceTemplateNetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'partnerMetadata': ?partnerMetadata,
      'project': ?project,
      'region': ?region,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<InstanceTemplateReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourceManagerTags': ?resourceManagerTags,
      'resourcePolicies': ?resourcePolicies,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<InstanceTemplateScheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<InstanceTemplateServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceTemplateShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': ?tags,
      'workloadIdentityConfig': ?pulumi.Input.mapOptionalInputValue<InstanceTemplateWorkloadIdentityConfig, Map<String, dynamic>>(workloadIdentityConfig, (value) => value.toMap()),
    };
  }

  factory InstanceTemplateArgs.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateArgs(
      advancedMachineFeatures: (() { final guardedValue = map['advancedMachineFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceTemplateAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      canIpForward: (() { final guardedValue = map['canIpForward']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      confidentialInstanceConfig: (() { final guardedValue = map['confidentialInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceTemplateConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disks: pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceTemplateDisk>(map['disks']!, (value) => InstanceTemplateDisk.fromMap((value as Map).cast<String, dynamic>()))),
      enableDisplay: (() { final guardedValue = map['enableDisplay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guestAccelerators: (() { final guardedValue = map['guestAccelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceTemplateGuestAccelerator>(guardedValue, (value) => InstanceTemplateGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceDescription: (() { final guardedValue = map['instanceDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyRevocationActionType: (() { final guardedValue = map['keyRevocationActionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metadataStartupScript: (() { final guardedValue = map['metadataStartupScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceTemplateNetworkInterface>(guardedValue, (value) => InstanceTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkPerformanceConfig: (() { final guardedValue = map['networkPerformanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceTemplateNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      partnerMetadata: (() { final guardedValue = map['partnerMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceTemplateReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceManagerTags: (() { final guardedValue = map['resourceManagerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduling: (() { final guardedValue = map['scheduling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceTemplateScheduling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceTemplateServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceTemplateShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      workloadIdentityConfig: (() { final guardedValue = map['workloadIdentityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceTemplateWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
