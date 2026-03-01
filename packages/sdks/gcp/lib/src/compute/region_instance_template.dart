import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_template_advanced_machine_features.dart';
import 'region_instance_template_args.dart';
import 'region_instance_template_confidential_instance_config.dart';
import 'region_instance_template_disk.dart';
import 'region_instance_template_guest_accelerator.dart';
import 'region_instance_template_network_interface.dart';
import 'region_instance_template_network_performance_config.dart';
import 'region_instance_template_reservation_affinity.dart';
import 'region_instance_template_scheduling.dart';
import 'region_instance_template_service_account.dart';
import 'region_instance_template_shielded_instance_config.dart';
import 'region_instance_template_state.dart';

/// ## Import
///
/// Instance templates can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/instanceTemplates/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, instance templates can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionInstanceTemplate:RegionInstanceTemplate default projects/{{project}}/regions/{{region}}/instanceTemplates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionInstanceTemplate:RegionInstanceTemplate default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionInstanceTemplate:RegionInstanceTemplate default {{name}}
/// ```
class RegionInstanceTemplate extends pulumi.CustomResource {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  late final pulumi.Output<RegionInstanceTemplateAdvancedMachineFeatures?> advancedMachineFeatures;
  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs. This defaults to false.
  late final pulumi.Output<bool?> canIpForward;
  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  late final pulumi.Output<RegionInstanceTemplateConfidentialInstanceConfig> confidentialInstanceConfig;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// A brief description of this resource.
  late final pulumi.Output<String?> description;
  /// Disks to attach to instances created from this template.
  /// This can be specified multiple times for multiple disks. Structure is
  /// documented below.
  late final pulumi.Output<List<RegionInstanceTemplateDisk>> disks;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: `allow_stopping_for_update` must be set to true in order to update this field.
  late final pulumi.Output<bool?> enableDisplay;
  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  late final pulumi.Output<List<RegionInstanceTemplateGuestAccelerator>?> guestAccelerators;
  /// A brief description to use for instances
  /// created from this template.
  late final pulumi.Output<String?> instanceDescription;
  /// Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  late final pulumi.Output<String?> keyRevocationActionType;
  /// A set of key/value label pairs to assign to instances
  /// created from this template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The machine type to create.
  ///
  /// To create a machine with a [custom type](https://cloud.google.com/dataproc/docs/concepts/compute/custom-machine-types) (such as extended memory), format the value like `custom-VCPUS-MEM_IN_MB` like `custom-6-20480` for 6 vCPU and 20GB of RAM.
  ///
  /// - - -
  late final pulumi.Output<String> machineType;
  /// Metadata key/value pairs to make available from
  /// within instances created from this template.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The unique fingerprint of the metadata.
  late final pulumi.Output<String> metadataFingerprint;
  /// An alternative to using the
  /// startup-script metadata key, mostly to match the compute_instance resource.
  /// This replaces the startup-script metadata key on the created instance and
  /// thus the two mechanisms are not allowed to be used simultaneously.
  late final pulumi.Output<String?> metadataStartupScript;
  /// Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  late final pulumi.Output<String?> minCpuPlatform;
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  ///
  /// Resulting name for a `name_prefix` <= 37 characters:
  /// `name_prefix` + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a `name_prefix` 38 - 54 characters:
  /// `name_prefix` + YYmmdd + 3 digit incremental counter
  late final pulumi.Output<String> namePrefix;
  /// Networks to attach to instances created from
  /// this template. This can be specified multiple times for multiple networks.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionInstanceTemplateNetworkInterface>?> networkInterfaces;
  /// Configures network performance settings for the instance created from the
  /// template. Structure is documented below. **Note**: `machine_type`
  /// must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the `image` used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  late final pulumi.Output<RegionInstanceTemplateNetworkPerformanceConfig?> networkPerformanceConfig;
  /// numeric identifier of the resource.
  late final pulumi.Output<String> numericId;
  /// Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  late final pulumi.Output<Map<String, String>?> partnerMetadata;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The Region in which the resource belongs.
  /// If region is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  late final pulumi.Output<RegionInstanceTemplateReservationAffinity?> reservationAffinity;
  /// A set of key/value resource manager tag pairs to bind to the instance. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  late final pulumi.Output<Map<String, String>?> resourceManagerTags;
  /// - A list of self_links of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  late final pulumi.Output<String?> resourcePolicies;
  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  late final pulumi.Output<RegionInstanceTemplateScheduling> scheduling;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Service account to attach to the instance. Structure is documented below.
  late final pulumi.Output<RegionInstanceTemplateServiceAccount?> serviceAccount;
  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: `shielded_instance_config` can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  late final pulumi.Output<RegionInstanceTemplateShieldedInstanceConfig> shieldedInstanceConfig;
  /// Tags to attach to the instance.
  late final pulumi.Output<List<String>?> tags;
  /// The unique fingerprint of the tags.
  late final pulumi.Output<String> tagsFingerprint;

  /// Creates a new [RegionInstanceTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionInstanceTemplate]. {@macro pulumi_compute_region_instance_template_region_instance_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionInstanceTemplate(
    String name, {
    RegionInstanceTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionInstanceTemplate:RegionInstanceTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedMachineFeatures = registerOutput<RegionInstanceTemplateAdvancedMachineFeatures?>('advancedMachineFeatures');
    this.canIpForward = registerOutput<bool?>('canIpForward');
    this.confidentialInstanceConfig = registerOutput<RegionInstanceTemplateConfidentialInstanceConfig>('confidentialInstanceConfig');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.disks = registerOutput<List<RegionInstanceTemplateDisk>>('disks');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.enableDisplay = registerOutput<bool?>('enableDisplay');
    this.guestAccelerators = registerOutput<List<RegionInstanceTemplateGuestAccelerator>?>('guestAccelerators');
    this.instanceDescription = registerOutput<String?>('instanceDescription');
    this.keyRevocationActionType = registerOutput<String?>('keyRevocationActionType');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.machineType = registerOutput<String>('machineType');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.metadataFingerprint = registerOutput<String>('metadataFingerprint');
    this.metadataStartupScript = registerOutput<String?>('metadataStartupScript');
    this.minCpuPlatform = registerOutput<String?>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.networkInterfaces = registerOutput<List<RegionInstanceTemplateNetworkInterface>?>('networkInterfaces');
    this.networkPerformanceConfig = registerOutput<RegionInstanceTemplateNetworkPerformanceConfig?>('networkPerformanceConfig');
    this.numericId = registerOutput<String>('numericId');
    this.partnerMetadata = registerOutput<Map<String, String>?>('partnerMetadata');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.reservationAffinity = registerOutput<RegionInstanceTemplateReservationAffinity?>('reservationAffinity');
    this.resourceManagerTags = registerOutput<Map<String, String>?>('resourceManagerTags');
    this.resourcePolicies = registerOutput<String?>('resourcePolicies');
    this.scheduling = registerOutput<RegionInstanceTemplateScheduling>('scheduling');
    this.selfLink = registerOutput<String>('selfLink');
    this.serviceAccount = registerOutput<RegionInstanceTemplateServiceAccount?>('serviceAccount');
    this.shieldedInstanceConfig = registerOutput<RegionInstanceTemplateShieldedInstanceConfig>('shieldedInstanceConfig');
    this.tags = registerOutput<List<String>?>('tags');
    this.tagsFingerprint = registerOutput<String>('tagsFingerprint');
  }

  /// Gets an existing [RegionInstanceTemplate] resource's state with the given [name] and [id].
  static RegionInstanceTemplate get(
    String name,
    pulumi.Input<String> id, {
    RegionInstanceTemplateState? state,
  }) {
    return RegionInstanceTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegionInstanceTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionInstanceTemplate:RegionInstanceTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedMachineFeatures = registerOutput<RegionInstanceTemplateAdvancedMachineFeatures?>('advancedMachineFeatures');
    this.canIpForward = registerOutput<bool?>('canIpForward');
    this.confidentialInstanceConfig = registerOutput<RegionInstanceTemplateConfidentialInstanceConfig>('confidentialInstanceConfig');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.disks = registerOutput<List<RegionInstanceTemplateDisk>>('disks');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.enableDisplay = registerOutput<bool?>('enableDisplay');
    this.guestAccelerators = registerOutput<List<RegionInstanceTemplateGuestAccelerator>?>('guestAccelerators');
    this.instanceDescription = registerOutput<String?>('instanceDescription');
    this.keyRevocationActionType = registerOutput<String?>('keyRevocationActionType');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.machineType = registerOutput<String>('machineType');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.metadataFingerprint = registerOutput<String>('metadataFingerprint');
    this.metadataStartupScript = registerOutput<String?>('metadataStartupScript');
    this.minCpuPlatform = registerOutput<String?>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.networkInterfaces = registerOutput<List<RegionInstanceTemplateNetworkInterface>?>('networkInterfaces');
    this.networkPerformanceConfig = registerOutput<RegionInstanceTemplateNetworkPerformanceConfig?>('networkPerformanceConfig');
    this.numericId = registerOutput<String>('numericId');
    this.partnerMetadata = registerOutput<Map<String, String>?>('partnerMetadata');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.reservationAffinity = registerOutput<RegionInstanceTemplateReservationAffinity?>('reservationAffinity');
    this.resourceManagerTags = registerOutput<Map<String, String>?>('resourceManagerTags');
    this.resourcePolicies = registerOutput<String?>('resourcePolicies');
    this.scheduling = registerOutput<RegionInstanceTemplateScheduling>('scheduling');
    this.selfLink = registerOutput<String>('selfLink');
    this.serviceAccount = registerOutput<RegionInstanceTemplateServiceAccount?>('serviceAccount');
    this.shieldedInstanceConfig = registerOutput<RegionInstanceTemplateShieldedInstanceConfig>('shieldedInstanceConfig');
    this.tags = registerOutput<List<String>?>('tags');
    this.tagsFingerprint = registerOutput<String>('tagsFingerprint');
  }
}
