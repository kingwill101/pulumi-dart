// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_config_host_gce_instance_boost_config_accelerator.dart';

class WorkstationConfigHostGceInstanceBoostConfig {
  /// An accelerator card attached to the boost instance.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigHostGceInstanceBoostConfigAccelerator>>? accelerators;
  /// Size of the boot disk in GB. The minimum boot disk size is `30` GB. Defaults to `50` GB.
  final pulumi.Input<int>? bootDiskSizeGb;
  /// Whether to enable nested virtualization on the Compute Engine VMs backing boosted Workstations.
  /// See https://cloud.google.com/workstations/docs/reference/rest/v1beta/projects.locations.workstationClusters.workstationConfigs#GceInstance.FIELDS.enable_nested_virtualization
  final pulumi.Input<bool>? enableNestedVirtualization;
  /// The id to be used for the boost config.
  final pulumi.Input<String> id;
  /// The type of machine that boosted VM instances will use—for example, e2-standard-4. For more information about machine types that Cloud Workstations supports, see the list of available machine types https://cloud.google.com/workstations/docs/available-machine-types. Defaults to e2-standard-4.
  final pulumi.Input<String>? machineType;
  /// Number of instances to pool for faster workstation boosting.
  final pulumi.Input<int>? poolSize;

  /// Creates a new [WorkstationConfigHostGceInstanceBoostConfig].
  /// [accelerators] An accelerator card attached to the boost instance.
  /// [bootDiskSizeGb] Size of the boot disk in GB. The minimum boot disk size is `30` GB. Defaults to `50` GB.
  /// [enableNestedVirtualization] Whether to enable nested virtualization on the Compute Engine VMs backing boosted Workstations.
  /// [id] The id to be used for the boost config.
  /// [machineType] The type of machine that boosted VM instances will use—for example, e2-standard-4. For more information about machine types that Cloud Workstations supports, see the list of available machine types https://cloud.google.com/workstations/docs/available-machine-types. Defaults to e2-standard-4.
  /// [poolSize] Number of instances to pool for faster workstation boosting.
  WorkstationConfigHostGceInstanceBoostConfig({
    this.accelerators,
    this.bootDiskSizeGb,
    this.enableNestedVirtualization,
    required this.id,
    this.machineType,
    this.poolSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<WorkstationConfigHostGceInstanceBoostConfigAccelerator>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<WorkstationConfigHostGceInstanceBoostConfigAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'enableNestedVirtualization': ?enableNestedVirtualization,
      'id': id,
      'machineType': ?machineType,
      'poolSize': ?poolSize,
    };
  }

  factory WorkstationConfigHostGceInstanceBoostConfig.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigHostGceInstanceBoostConfig(
      accelerators: map['accelerators'] == null ? null : (pulumi.Input.decodeList<WorkstationConfigHostGceInstanceBoostConfigAccelerator>(map['accelerators'], (value) => WorkstationConfigHostGceInstanceBoostConfigAccelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bootDiskSizeGb: map['bootDiskSizeGb'] == null ? null : (map['bootDiskSizeGb'] as int).input(),
      enableNestedVirtualization: map['enableNestedVirtualization'] == null ? null : (map['enableNestedVirtualization'] as bool).input(),
      id: (map['id'] as String).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      poolSize: map['poolSize'] == null ? null : (map['poolSize'] as int).input(),
    );
  }
}

