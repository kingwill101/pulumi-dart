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

/// Input properties used for looking up and filtering InstanceTemplate resources.
class InstanceTemplateState {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  final pulumi.Input<InstanceTemplateAdvancedMachineFeatures>?
  advancedMachineFeatures;

  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs. This defaults to false.
  final pulumi.Input<bool>? canIpForward;

  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  final pulumi.Input<InstanceTemplateConfidentialInstanceConfig>?
  confidentialInstanceConfig;

  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;

  /// A brief description of this resource.
  final pulumi.Input<String>? description;

  /// Disks to attach to instances created from this template.
  /// This can be specified multiple times for multiple disks. Structure is
  /// documented below.
  final pulumi.Input<List<InstanceTemplateDisk>>? disks;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: `allow_stopping_for_update` must be set to true in order to update this field.
  final pulumi.Input<bool>? enableDisplay;

  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  final pulumi.Input<List<InstanceTemplateGuestAccelerator>>? guestAccelerators;

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

  /// The machine type to create. To create a machine with a custom type (such as extended memory), format the value like custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB of RAM.
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

  /// The name of the instance template. If you leave
  /// this blank, the provider will auto-generate a unique name.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  ///
  /// Resulting name for a `name_prefix` &lt;= 37 characters:
  /// `name_prefix` + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a `name_prefix` 38 - 54 characters:
  /// `name_prefix` + YYmmdd + 3 digit incremental counter
  final pulumi.Input<String>? namePrefix;

  /// Networks to attach to instances created from
  /// this template. This can be specified multiple times for multiple networks.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceTemplateNetworkInterface>>? networkInterfaces;

  /// (Optional, Configures network performance settings for the instance created from the
  /// template. Structure is documented below. **Note**: `machine_type`
  /// must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the `image` used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  final pulumi.Input<InstanceTemplateNetworkPerformanceConfig>?
  networkPerformanceConfig;

  /// numeric identifier of the resource.
  final pulumi.Input<String>? numericId;

  /// Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  final pulumi.Input<Map<String, String>>? partnerMetadata;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// An instance template is a global resource that is not
  /// bound to a zone or a region. However, you can still specify some regional
  /// resources in an instance template, which restricts the template to the
  /// region where that resource resides. For example, a custom `subnetwork`
  /// resource is tied to a specific region. Defaults to the region of the
  /// Provider if no value is given.
  final pulumi.Input<String>? region;

  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  final pulumi.Input<InstanceTemplateReservationAffinity>? reservationAffinity;

  /// A set of key/value resource manager tag pairs to bind to the instances. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  final pulumi.Input<Map<String, String>>? resourceManagerTags;

  /// - A list of self_links of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String>? resourcePolicies;

  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  final pulumi.Input<InstanceTemplateScheduling>? scheduling;

  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;

  /// A special URI of the created resource that uniquely identifies this instance template with the following format: `projects/{{project}}/global/instanceTemplates/{{name}}?uniqueId={{uniqueId}}`
  /// Referencing an instance template via this attribute prevents Time of Check to Time of Use attacks when the instance template resides in a shared/untrusted environment.
  final pulumi.Input<String>? selfLinkUnique;

  /// Service account to attach to the instance. Structure is documented below.
  final pulumi.Input<InstanceTemplateServiceAccount>? serviceAccount;

  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: `shielded_instance_config` can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  final pulumi.Input<InstanceTemplateShieldedInstanceConfig>?
  shieldedInstanceConfig;

  /// Tags to attach to the instance.
  final pulumi.Input<List<String>>? tags;

  /// The unique fingerprint of the tags.
  final pulumi.Input<String>? tagsFingerprint;

  /// Creates a new [InstanceTemplateState].
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
  /// [machineType] The machine type to create. To create a machine with a custom type (such as extended memory), format the value like custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB of RAM.
  /// [metadata] Metadata key/value pairs to make available from
  /// [metadataFingerprint] The unique fingerprint of the metadata.
  /// [metadataStartupScript] An alternative to using the
  /// [minCpuPlatform] Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// [name] The name of the instance template. If you leave
  /// [namePrefix] Creates a unique name beginning with the specified
  /// [networkInterfaces] Networks to attach to instances created from
  /// [networkPerformanceConfig] (Optional, Configures network performance settings for the instance created from the
  /// [numericId] numeric identifier of the resource.
  /// [partnerMetadata] Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [region] An instance template is a global resource that is not
  /// [reservationAffinity] Specifies the reservations that this instance can consume from.
  /// [resourceManagerTags] A set of key/value resource manager tag pairs to bind to the instances. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  /// [resourcePolicies] - A list of self_links of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  /// [scheduling] The scheduling strategy to use. More details about
  /// [selfLink] The URI of the created resource.
  /// [selfLinkUnique] A special URI of the created resource that uniquely identifies this instance template with the following format: `projects/{{project}}/global/instanceTemplates/{{name}}?uniqueId={{uniqueId}}`
  /// [serviceAccount] Service account to attach to the instance. Structure is documented below.
  /// [shieldedInstanceConfig] Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// [tags] Tags to attach to the instance.
  /// [tagsFingerprint] The unique fingerprint of the tags.
  InstanceTemplateState({
    this.advancedMachineFeatures,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.creationTimestamp,
    this.description,
    this.disks,
    this.effectiveLabels,
    this.enableDisplay,
    this.guestAccelerators,
    this.instanceDescription,
    this.keyRevocationActionType,
    this.labels,
    this.machineType,
    this.metadata,
    this.metadataFingerprint,
    this.metadataStartupScript,
    this.minCpuPlatform,
    this.name,
    this.namePrefix,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.numericId,
    this.partnerMetadata,
    this.project,
    this.pulumiLabels,
    this.region,
    this.reservationAffinity,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.scheduling,
    this.selfLink,
    this.selfLinkUnique,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.tags,
    this.tagsFingerprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceTemplateAdvancedMachineFeatures,
            Map<String, dynamic>
          >(advancedMachineFeatures, (value) => value.toMap()),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceTemplateConfidentialInstanceConfig,
            Map<String, dynamic>
          >(confidentialInstanceConfig, (value) => value.toMap()),
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'disks':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceTemplateDisk>,
            List<Map<String, dynamic>>
          >(
            disks,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceTemplateDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'effectiveLabels': ?effectiveLabels,
      'enableDisplay': ?enableDisplay,
      'guestAccelerators':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceTemplateGuestAccelerator>,
            List<Map<String, dynamic>>
          >(
            guestAccelerators,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceTemplateGuestAccelerator,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'networkInterfaces':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceTemplateNetworkInterface>,
            List<Map<String, dynamic>>
          >(
            networkInterfaces,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceTemplateNetworkInterface,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkPerformanceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceTemplateNetworkPerformanceConfig,
            Map<String, dynamic>
          >(networkPerformanceConfig, (value) => value.toMap()),
      'numericId': ?numericId,
      'partnerMetadata': ?partnerMetadata,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'reservationAffinity':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceTemplateReservationAffinity,
            Map<String, dynamic>
          >(reservationAffinity, (value) => value.toMap()),
      'resourceManagerTags': ?resourceManagerTags,
      'resourcePolicies': ?resourcePolicies,
      'scheduling':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceTemplateScheduling,
            Map<String, dynamic>
          >(scheduling, (value) => value.toMap()),
      'selfLink': ?selfLink,
      'selfLinkUnique': ?selfLinkUnique,
      'serviceAccount':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceTemplateServiceAccount,
            Map<String, dynamic>
          >(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceTemplateShieldedInstanceConfig,
            Map<String, dynamic>
          >(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': ?tags,
      'tagsFingerprint': ?tagsFingerprint,
    };
  }

  factory InstanceTemplateState.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateState(
      advancedMachineFeatures: (() {
        final guardedValue = map['advancedMachineFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceTemplateAdvancedMachineFeatures.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      canIpForward: (() {
        final guardedValue = map['canIpForward'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      confidentialInstanceConfig: (() {
        final guardedValue = map['confidentialInstanceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceTemplateConfidentialInstanceConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      creationTimestamp: (() {
        final guardedValue = map['creationTimestamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disks: (() {
        final guardedValue = map['disks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceTemplateDisk>(
            guardedValue,
            (value) => InstanceTemplateDisk.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      enableDisplay: (() {
        final guardedValue = map['enableDisplay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      guestAccelerators: (() {
        final guardedValue = map['guestAccelerators'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceTemplateGuestAccelerator>(
            guardedValue,
            (value) => InstanceTemplateGuestAccelerator.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      instanceDescription: (() {
        final guardedValue = map['instanceDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyRevocationActionType: (() {
        final guardedValue = map['keyRevocationActionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      machineType: (() {
        final guardedValue = map['machineType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      metadataFingerprint: (() {
        final guardedValue = map['metadataFingerprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadataStartupScript: (() {
        final guardedValue = map['metadataStartupScript'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minCpuPlatform: (() {
        final guardedValue = map['minCpuPlatform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkInterfaces: (() {
        final guardedValue = map['networkInterfaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceTemplateNetworkInterface>(
            guardedValue,
            (value) => InstanceTemplateNetworkInterface.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkPerformanceConfig: (() {
        final guardedValue = map['networkPerformanceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceTemplateNetworkPerformanceConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      numericId: (() {
        final guardedValue = map['numericId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partnerMetadata: (() {
        final guardedValue = map['partnerMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reservationAffinity: (() {
        final guardedValue = map['reservationAffinity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceTemplateReservationAffinity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceManagerTags: (() {
        final guardedValue = map['resourceManagerTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      resourcePolicies: (() {
        final guardedValue = map['resourcePolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scheduling: (() {
        final guardedValue = map['scheduling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceTemplateScheduling.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      selfLink: (() {
        final guardedValue = map['selfLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      selfLinkUnique: (() {
        final guardedValue = map['selfLinkUnique'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceTemplateServiceAccount.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      shieldedInstanceConfig: (() {
        final guardedValue = map['shieldedInstanceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceTemplateShieldedInstanceConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tagsFingerprint: (() {
        final guardedValue = map['tagsFingerprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
