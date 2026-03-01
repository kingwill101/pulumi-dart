// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_template_advanced_machine_features.dart';
import 'region_instance_template_confidential_instance_config.dart';
import 'region_instance_template_disk.dart';
import 'region_instance_template_guest_accelerator.dart';
import 'region_instance_template_network_interface.dart';
import 'region_instance_template_network_performance_config.dart';
import 'region_instance_template_reservation_affinity.dart';
import 'region_instance_template_scheduling.dart';
import 'region_instance_template_service_account.dart';
import 'region_instance_template_shielded_instance_config.dart';

/// Input properties used for looking up and filtering RegionInstanceTemplate resources.
class RegionInstanceTemplateState {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  final pulumi.Input<RegionInstanceTemplateAdvancedMachineFeatures>? advancedMachineFeatures;
  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs. This defaults to false.
  final pulumi.Input<bool>? canIpForward;
  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  final pulumi.Input<RegionInstanceTemplateConfidentialInstanceConfig>? confidentialInstanceConfig;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// A brief description of this resource.
  final pulumi.Input<String>? description;
  /// Disks to attach to instances created from this template.
  /// This can be specified multiple times for multiple disks. Structure is
  /// documented below.
  final pulumi.Input<List<RegionInstanceTemplateDisk>>? disks;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: `allow_stopping_for_update` must be set to true in order to update this field.
  final pulumi.Input<bool>? enableDisplay;
  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  final pulumi.Input<List<RegionInstanceTemplateGuestAccelerator>>? guestAccelerators;
  /// A brief description to use for instances
  /// created from this template.
  final pulumi.Input<String>? instanceDescription;
  /// Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  final pulumi.Input<String>? keyRevocationActionType;
  /// A set of key/value label pairs to assign to instances
  /// created from this template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The machine type to create.
  ///
  /// To create a machine with a [custom type](https://cloud.google.com/dataproc/docs/concepts/compute/custom-machine-types) (such as extended memory), format the value like `custom-VCPUS-MEM_IN_MB` like `custom-6-20480` for 6 vCPU and 20GB of RAM.
  ///
  /// - - -
  final pulumi.Input<String>? machineType;
  /// Metadata key/value pairs to make available from
  /// within instances created from this template.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The unique fingerprint of the metadata.
  final pulumi.Input<String>? metadataFingerprint;
  /// An alternative to using the
  /// startup-script metadata key, mostly to match the compute_instance resource.
  /// This replaces the startup-script metadata key on the created instance and
  /// thus the two mechanisms are not allowed to be used simultaneously.
  final pulumi.Input<String>? metadataStartupScript;
  /// Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  final pulumi.Input<String>? minCpuPlatform;
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  ///
  /// Resulting name for a `name_prefix` <= 37 characters:
  /// `name_prefix` + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a `name_prefix` 38 - 54 characters:
  /// `name_prefix` + YYmmdd + 3 digit incremental counter
  final pulumi.Input<String>? namePrefix;
  /// Networks to attach to instances created from
  /// this template. This can be specified multiple times for multiple networks.
  /// Structure is documented below.
  final pulumi.Input<List<RegionInstanceTemplateNetworkInterface>>? networkInterfaces;
  /// Configures network performance settings for the instance created from the
  /// template. Structure is documented below. **Note**: `machine_type`
  /// must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the `image` used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  final pulumi.Input<RegionInstanceTemplateNetworkPerformanceConfig>? networkPerformanceConfig;
  /// numeric identifier of the resource.
  final pulumi.Input<String>? numericId;
  /// Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  final pulumi.Input<Map<String, String>>? partnerMetadata;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The Region in which the resource belongs.
  /// If region is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  final pulumi.Input<RegionInstanceTemplateReservationAffinity>? reservationAffinity;
  /// A set of key/value resource manager tag pairs to bind to the instance. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  final pulumi.Input<Map<String, String>>? resourceManagerTags;
  /// - A list of self_links of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String>? resourcePolicies;
  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  final pulumi.Input<RegionInstanceTemplateScheduling>? scheduling;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Service account to attach to the instance. Structure is documented below.
  final pulumi.Input<RegionInstanceTemplateServiceAccount>? serviceAccount;
  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: `shielded_instance_config` can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  final pulumi.Input<RegionInstanceTemplateShieldedInstanceConfig>? shieldedInstanceConfig;
  /// Tags to attach to the instance.
  final pulumi.Input<List<String>>? tags;
  /// The unique fingerprint of the tags.
  final pulumi.Input<String>? tagsFingerprint;

  /// Creates a new [RegionInstanceTemplateState].
  /// [advancedMachineFeatures] Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  /// [canIpForward] Whether to allow sending and receiving of
  /// [confidentialInstanceConfig] Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] A brief description of this resource.
  /// [disks] Disks to attach to instances created from this template.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enableDisplay] Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance. Structure documented below.
  /// [instanceDescription] A brief description to use for instances
  /// [keyRevocationActionType] Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  /// [labels] A set of key/value label pairs to assign to instances
  /// [machineType] The machine type to create.
  /// [metadata] Metadata key/value pairs to make available from
  /// [metadataFingerprint] The unique fingerprint of the metadata.
  /// [metadataStartupScript] An alternative to using the
  /// [minCpuPlatform] Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// [name] Optional.
  /// [namePrefix] Creates a unique name beginning with the specified
  /// [networkInterfaces] Networks to attach to instances created from
  /// [networkPerformanceConfig] Configures network performance settings for the instance created from the
  /// [numericId] numeric identifier of the resource.
  /// [partnerMetadata] Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [region] The Region in which the resource belongs.
  /// [reservationAffinity] Specifies the reservations that this instance can consume from.
  /// [resourceManagerTags] A set of key/value resource manager tag pairs to bind to the instance. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  /// [resourcePolicies] - A list of self_links of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  /// [scheduling] The scheduling strategy to use. More details about
  /// [selfLink] The URI of the created resource.
  /// [serviceAccount] Service account to attach to the instance. Structure is documented below.
  /// [shieldedInstanceConfig] Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// [tags] Tags to attach to the instance.
  /// [tagsFingerprint] The unique fingerprint of the tags.
  RegionInstanceTemplateState({
    pulumi.Output<RegionInstanceTemplateAdvancedMachineFeatures>? advancedMachineFeatures,
    pulumi.Output<bool>? canIpForward,
    pulumi.Output<RegionInstanceTemplateConfidentialInstanceConfig>? confidentialInstanceConfig,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<List<RegionInstanceTemplateDisk>>? disks,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<bool>? enableDisplay,
    pulumi.Output<List<RegionInstanceTemplateGuestAccelerator>>? guestAccelerators,
    pulumi.Output<String>? instanceDescription,
    pulumi.Output<String>? keyRevocationActionType,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? machineType,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? metadataFingerprint,
    pulumi.Output<String>? metadataStartupScript,
    pulumi.Output<String>? minCpuPlatform,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<List<RegionInstanceTemplateNetworkInterface>>? networkInterfaces,
    pulumi.Output<RegionInstanceTemplateNetworkPerformanceConfig>? networkPerformanceConfig,
    pulumi.Output<String>? numericId,
    pulumi.Output<Map<String, String>>? partnerMetadata,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<RegionInstanceTemplateReservationAffinity>? reservationAffinity,
    pulumi.Output<Map<String, String>>? resourceManagerTags,
    pulumi.Output<String>? resourcePolicies,
    pulumi.Output<RegionInstanceTemplateScheduling>? scheduling,
    pulumi.Output<String>? selfLink,
    pulumi.Output<RegionInstanceTemplateServiceAccount>? serviceAccount,
    pulumi.Output<RegionInstanceTemplateShieldedInstanceConfig>? shieldedInstanceConfig,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? tagsFingerprint,
  }) :
      advancedMachineFeatures = pulumi.Input.asOptionalInput<RegionInstanceTemplateAdvancedMachineFeatures>(advancedMachineFeatures),
      canIpForward = pulumi.Input.asOptionalInput<bool>(canIpForward),
      confidentialInstanceConfig = pulumi.Input.asOptionalInput<RegionInstanceTemplateConfidentialInstanceConfig>(confidentialInstanceConfig),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      disks = pulumi.Input.asOptionalInput<List<RegionInstanceTemplateDisk>>(disks),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      enableDisplay = pulumi.Input.asOptionalInput<bool>(enableDisplay),
      guestAccelerators = pulumi.Input.asOptionalInput<List<RegionInstanceTemplateGuestAccelerator>>(guestAccelerators),
      instanceDescription = pulumi.Input.asOptionalInput<String>(instanceDescription),
      keyRevocationActionType = pulumi.Input.asOptionalInput<String>(keyRevocationActionType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      machineType = pulumi.Input.asOptionalInput<String>(machineType),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      metadataFingerprint = pulumi.Input.asOptionalInput<String>(metadataFingerprint),
      metadataStartupScript = pulumi.Input.asOptionalInput<String>(metadataStartupScript),
      minCpuPlatform = pulumi.Input.asOptionalInput<String>(minCpuPlatform),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      networkInterfaces = pulumi.Input.asOptionalInput<List<RegionInstanceTemplateNetworkInterface>>(networkInterfaces),
      networkPerformanceConfig = pulumi.Input.asOptionalInput<RegionInstanceTemplateNetworkPerformanceConfig>(networkPerformanceConfig),
      numericId = pulumi.Input.asOptionalInput<String>(numericId),
      partnerMetadata = pulumi.Input.asOptionalInput<Map<String, String>>(partnerMetadata),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservationAffinity = pulumi.Input.asOptionalInput<RegionInstanceTemplateReservationAffinity>(reservationAffinity),
      resourceManagerTags = pulumi.Input.asOptionalInput<Map<String, String>>(resourceManagerTags),
      resourcePolicies = pulumi.Input.asOptionalInput<String>(resourcePolicies),
      scheduling = pulumi.Input.asOptionalInput<RegionInstanceTemplateScheduling>(scheduling),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      serviceAccount = pulumi.Input.asOptionalInput<RegionInstanceTemplateServiceAccount>(serviceAccount),
      shieldedInstanceConfig = pulumi.Input.asOptionalInput<RegionInstanceTemplateShieldedInstanceConfig>(shieldedInstanceConfig),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tagsFingerprint = pulumi.Input.asOptionalInput<String>(tagsFingerprint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<RegionInstanceTemplateAdvancedMachineFeatures, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<RegionInstanceTemplateConfidentialInstanceConfig, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceTemplateDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<RegionInstanceTemplateDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effectiveLabels': ?effectiveLabels,
      'enableDisplay': ?enableDisplay,
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceTemplateGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<RegionInstanceTemplateGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceDescription': ?instanceDescription,
      'keyRevocationActionType': ?keyRevocationActionType,
      'labels': ?labels,
      'machineType': ?machineType,
      'metadata': ?metadata,
      'metadataFingerprint': ?metadataFingerprint,
      'metadataStartupScript': ?metadataStartupScript,
      'minCpuPlatform': ?minCpuPlatform,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceTemplateNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<RegionInstanceTemplateNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<RegionInstanceTemplateNetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'numericId': ?numericId,
      'partnerMetadata': ?partnerMetadata,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<RegionInstanceTemplateReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourceManagerTags': ?resourceManagerTags,
      'resourcePolicies': ?resourcePolicies,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<RegionInstanceTemplateScheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'selfLink': ?selfLink,
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<RegionInstanceTemplateServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<RegionInstanceTemplateShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': ?tags,
      'tagsFingerprint': ?tagsFingerprint,
    };
  }

  factory RegionInstanceTemplateState.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateState(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null ? null : pulumi.Output.create<RegionInstanceTemplateAdvancedMachineFeatures>(RegionInstanceTemplateAdvancedMachineFeatures.fromMap((map['advancedMachineFeatures'] as Map).cast<String, dynamic>())),
      canIpForward: map['canIpForward'] == null ? null : pulumi.Output.create<bool>(map['canIpForward'] as bool),
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null ? null : pulumi.Output.create<RegionInstanceTemplateConfidentialInstanceConfig>(RegionInstanceTemplateConfidentialInstanceConfig.fromMap((map['confidentialInstanceConfig'] as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disks: map['disks'] == null ? null : pulumi.Output.create<List<RegionInstanceTemplateDisk>>(pulumi.Input.decodeList<RegionInstanceTemplateDisk>(map['disks'], (value) => RegionInstanceTemplateDisk.fromMap((value as Map).cast<String, dynamic>()))),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      enableDisplay: map['enableDisplay'] == null ? null : pulumi.Output.create<bool>(map['enableDisplay'] as bool),
      guestAccelerators: map['guestAccelerators'] == null ? null : pulumi.Output.create<List<RegionInstanceTemplateGuestAccelerator>>(pulumi.Input.decodeList<RegionInstanceTemplateGuestAccelerator>(map['guestAccelerators'], (value) => RegionInstanceTemplateGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))),
      instanceDescription: map['instanceDescription'] == null ? null : pulumi.Output.create<String>(map['instanceDescription'] as String),
      keyRevocationActionType: map['keyRevocationActionType'] == null ? null : pulumi.Output.create<String>(map['keyRevocationActionType'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      machineType: map['machineType'] == null ? null : pulumi.Output.create<String>(map['machineType'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      metadataFingerprint: map['metadataFingerprint'] == null ? null : pulumi.Output.create<String>(map['metadataFingerprint'] as String),
      metadataStartupScript: map['metadataStartupScript'] == null ? null : pulumi.Output.create<String>(map['metadataStartupScript'] as String),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : pulumi.Output.create<String>(map['minCpuPlatform'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Output.create<List<RegionInstanceTemplateNetworkInterface>>(pulumi.Input.decodeList<RegionInstanceTemplateNetworkInterface>(map['networkInterfaces'], (value) => RegionInstanceTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null ? null : pulumi.Output.create<RegionInstanceTemplateNetworkPerformanceConfig>(RegionInstanceTemplateNetworkPerformanceConfig.fromMap((map['networkPerformanceConfig'] as Map).cast<String, dynamic>())),
      numericId: map['numericId'] == null ? null : pulumi.Output.create<String>(map['numericId'] as String),
      partnerMetadata: map['partnerMetadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['partnerMetadata'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservationAffinity: map['reservationAffinity'] == null ? null : pulumi.Output.create<RegionInstanceTemplateReservationAffinity>(RegionInstanceTemplateReservationAffinity.fromMap((map['reservationAffinity'] as Map).cast<String, dynamic>())),
      resourceManagerTags: map['resourceManagerTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['resourceManagerTags'] as Map).cast<String, String>()),
      resourcePolicies: map['resourcePolicies'] == null ? null : pulumi.Output.create<String>(map['resourcePolicies'] as String),
      scheduling: map['scheduling'] == null ? null : pulumi.Output.create<RegionInstanceTemplateScheduling>(RegionInstanceTemplateScheduling.fromMap((map['scheduling'] as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<RegionInstanceTemplateServiceAccount>(RegionInstanceTemplateServiceAccount.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>())),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : pulumi.Output.create<RegionInstanceTemplateShieldedInstanceConfig>(RegionInstanceTemplateShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tagsFingerprint: map['tagsFingerprint'] == null ? null : pulumi.Output.create<String>(map['tagsFingerprint'] as String),
    );
  }
}

