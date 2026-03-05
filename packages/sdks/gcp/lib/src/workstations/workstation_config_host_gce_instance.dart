// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_config_host_gce_instance_accelerator.dart';
import 'workstation_config_host_gce_instance_boost_config.dart';
import 'workstation_config_host_gce_instance_confidential_instance_config.dart';
import 'workstation_config_host_gce_instance_shielded_instance_config.dart';

class WorkstationConfigHostGceInstance {
  /// An accelerator card attached to the instance.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigHostGceInstanceAccelerator>>? accelerators;
  /// A list of the boost configurations that workstations created using this workstation configuration are allowed to use.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigHostGceInstanceBoostConfig>>? boostConfigs;
  /// Size of the boot disk in GB.
  final pulumi.Input<int>? bootDiskSizeGb;
  /// A set of Compute Engine Confidential VM instance options.
  /// Structure is documented below.
  final pulumi.Input<WorkstationConfigHostGceInstanceConfidentialInstanceConfig>? confidentialInstanceConfig;
  /// Whether instances have no public IP address.
  final pulumi.Input<bool>? disablePublicIpAddresses;
  /// Whether to disable SSH access to the VM.
  final pulumi.Input<bool>? disableSsh;
  /// Whether to enable nested virtualization on the Compute Engine VMs backing the Workstations.
  /// See https://cloud.google.com/workstations/docs/reference/rest/v1beta/projects.locations.workstationClusters.workstationConfigs#GceInstance.FIELDS.enable_nested_virtualization
  final pulumi.Input<bool>? enableNestedVirtualization;
  /// The name of a Compute Engine machine type.
  final pulumi.Input<String>? machineType;
  /// Number of instances to pool for faster workstation startup.
  final pulumi.Input<int>? poolSize;
  /// Email address of the service account that will be used on VM instances used to support this config. This service account must have permission to pull the specified container image. If not set, VMs will run without a service account, in which case the image must be publicly accessible.
  final pulumi.Input<String>? serviceAccount;
  /// Scopes to grant to the service_account. Various scopes are automatically added based on feature usage. When specified, users of workstations under this configuration must have `iam.serviceAccounts.actAs` on the service account.
  final pulumi.Input<List<String>>? serviceAccountScopes;
  /// A set of Compute Engine Shielded instance options.
  /// Structure is documented below.
  final pulumi.Input<WorkstationConfigHostGceInstanceShieldedInstanceConfig>? shieldedInstanceConfig;
  /// Network tags to add to the Compute Engine machines backing the Workstations.
  final pulumi.Input<List<String>>? tags;
  /// Resource manager tags to be bound to the VM instances backing the Workstations.
  /// Tag keys and values have the same definition as
  /// https://docs.cloud.google.com/resource-manager/docs/tags/tags-overview
  /// Keys must be in the format `tagKeys/{tag_key_id}`, and
  /// values are in the format `tagValues/456`.
  final pulumi.Input<Map<String, String>>? vmTags;

  /// Creates a new [WorkstationConfigHostGceInstance].
  /// [accelerators] An accelerator card attached to the instance.
  /// [boostConfigs] A list of the boost configurations that workstations created using this workstation configuration are allowed to use.
  /// [bootDiskSizeGb] Size of the boot disk in GB.
  /// [confidentialInstanceConfig] A set of Compute Engine Confidential VM instance options.
  /// [disablePublicIpAddresses] Whether instances have no public IP address.
  /// [disableSsh] Whether to disable SSH access to the VM.
  /// [enableNestedVirtualization] Whether to enable nested virtualization on the Compute Engine VMs backing the Workstations.
  /// [machineType] The name of a Compute Engine machine type.
  /// [poolSize] Number of instances to pool for faster workstation startup.
  /// [serviceAccount] Email address of the service account that will be used on VM instances used to support this config. This service account must have permission to pull the specified container image. If not set, VMs will run without a service account, in which case the image must be publicly accessible.
  /// [serviceAccountScopes] Scopes to grant to the service_account. Various scopes are automatically added based on feature usage. When specified, users of workstations under this configuration must have `iam.serviceAccounts.actAs` on the service account.
  /// [shieldedInstanceConfig] A set of Compute Engine Shielded instance options.
  /// [tags] Network tags to add to the Compute Engine machines backing the Workstations.
  /// [vmTags] Resource manager tags to be bound to the VM instances backing the Workstations.
  WorkstationConfigHostGceInstance({
    this.accelerators,
    this.boostConfigs,
    this.bootDiskSizeGb,
    this.confidentialInstanceConfig,
    this.disablePublicIpAddresses,
    this.disableSsh,
    this.enableNestedVirtualization,
    this.machineType,
    this.poolSize,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.tags,
    this.vmTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<WorkstationConfigHostGceInstanceAccelerator>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<WorkstationConfigHostGceInstanceAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'boostConfigs': ?pulumi.Input.mapOptionalInputValue<List<WorkstationConfigHostGceInstanceBoostConfig>, List<Map<String, dynamic>>>(boostConfigs, (value) => pulumi.Input.encodeList<WorkstationConfigHostGceInstanceBoostConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<WorkstationConfigHostGceInstanceConfidentialInstanceConfig, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'disablePublicIpAddresses': ?disablePublicIpAddresses,
      'disableSsh': ?disableSsh,
      'enableNestedVirtualization': ?enableNestedVirtualization,
      'machineType': ?machineType,
      'poolSize': ?poolSize,
      'serviceAccount': ?serviceAccount,
      'serviceAccountScopes': ?serviceAccountScopes,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<WorkstationConfigHostGceInstanceShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': ?tags,
      'vmTags': ?vmTags,
    };
  }

  factory WorkstationConfigHostGceInstance.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigHostGceInstance(
      accelerators: (() { final guardedValue = map['accelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkstationConfigHostGceInstanceAccelerator>(guardedValue, (value) => WorkstationConfigHostGceInstanceAccelerator.fromMap((value as Map).cast<String, dynamic>()))); })(),
      boostConfigs: (() { final guardedValue = map['boostConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkstationConfigHostGceInstanceBoostConfig>(guardedValue, (value) => WorkstationConfigHostGceInstanceBoostConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bootDiskSizeGb: (() { final guardedValue = map['bootDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      confidentialInstanceConfig: (() { final guardedValue = map['confidentialInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkstationConfigHostGceInstanceConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disablePublicIpAddresses: (() { final guardedValue = map['disablePublicIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableSsh: (() { final guardedValue = map['disableSsh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNestedVirtualization: (() { final guardedValue = map['enableNestedVirtualization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolSize: (() { final guardedValue = map['poolSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountScopes: (() { final guardedValue = map['serviceAccountScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkstationConfigHostGceInstanceShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vmTags: (() { final guardedValue = map['vmTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

