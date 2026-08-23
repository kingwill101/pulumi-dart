// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_response.dart';

/// WorkerConfig defines the configuration to be used for a creating workers in the pool.
class WorkerConfigResponseCloudbuildV1alpha1 {
  /// Size of the disk attached to the worker, in GB. See https://cloud.google.com/compute/docs/disks/ If `0` is specified, Cloud Build will use a standard disk size. `disk_size` is overridden if you specify a different disk size in `build_options`. In this case, a VM with a disk size specified in the `build_options` will be created on demand at build time. For more information see https://cloud.google.com/cloud-build/docs/api/reference/rest/v1/projects.builds#buildoptions
  final pulumi.Input<String> diskSizeGb;
  /// Machine Type of the worker, such as n1-standard-1. See https://cloud.google.com/compute/docs/machine-types. If left blank, Cloud Build will use a standard unspecified machine to create the worker pool. `machine_type` is overridden if you specify a different machine type in `build_options`. In this case, the VM specified in the `build_options` will be created on demand at build time. For more information see https://cloud.google.com/cloud-build/docs/speeding-up-builds#using_custom_virtual_machine_sizes
  final pulumi.Input<String> machineType;
  /// The network definition used to create the worker. If this section is left empty, the workers will be created in WorkerPool.project_id on the default network.
  final pulumi.Input<NetworkResponse> network;
  /// The tag applied to the worker, and the same tag used by the firewall rule. It is used to identify the Cloud Build workers among other VMs. The default value for tag is `worker`.
  final pulumi.Input<String> tag;

  /// Creates a new [WorkerConfigResponseCloudbuildV1alpha1].
  /// [diskSizeGb] Size of the disk attached to the worker, in GB. See https://cloud.google.com/compute/docs/disks/ If `0` is specified, Cloud Build will use a standard disk size. `disk_size` is overridden if you specify a different disk size in `build_options`. In this case, a VM with a disk size specified in the `build_options` will be created on demand at build time. For more information see https://cloud.google.com/cloud-build/docs/api/reference/rest/v1/projects.builds#buildoptions
  /// [machineType] Machine Type of the worker, such as n1-standard-1. See https://cloud.google.com/compute/docs/machine-types. If left blank, Cloud Build will use a standard unspecified machine to create the worker pool. `machine_type` is overridden if you specify a different machine type in `build_options`. In this case, the VM specified in the `build_options` will be created on demand at build time. For more information see https://cloud.google.com/cloud-build/docs/speeding-up-builds#using_custom_virtual_machine_sizes
  /// [network] The network definition used to create the worker. If this section is left empty, the workers will be created in WorkerPool.project_id on the default network.
  /// [tag] The tag applied to the worker, and the same tag used by the firewall rule. It is used to identify the Cloud Build workers among other VMs. The default value for tag is `worker`.
  const WorkerConfigResponseCloudbuildV1alpha1({
    required this.diskSizeGb,
    required this.machineType,
    required this.network,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': diskSizeGb,
      'machineType': machineType,
      'network': pulumi.Input.mapInputValue<NetworkResponse, Map<String, dynamic>>(network, (value) => value.toMap()),
      'tag': tag,
    };
  }

  factory WorkerConfigResponseCloudbuildV1alpha1.fromMap(Map<String, dynamic> map) {
    return WorkerConfigResponseCloudbuildV1alpha1(
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      network: pulumi.Input.fromValue(NetworkResponse.fromMap((map['network']! as Map).cast<String, dynamic>())),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}
