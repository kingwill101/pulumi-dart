// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EphemeralStorageLocalSsdConfig contains configuration for the node ephemeral storage using Local SSDs.
class EphemeralStorageLocalSsdConfigContainerV1beta1 {
  /// Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. A zero (or unset) value has different meanings depending on machine type being used: 1. For pre-Gen3 machines, which support flexible numbers of local ssds, zero (or unset) means to disable using local SSDs as ephemeral storage. The limit for this value is dependent upon the maximum number of disk available on a machine per zone. See: https://cloud.google.com/compute/docs/disks/local-ssd for more information. 2. For Gen3 machines which dictate a specific number of local ssds, zero (or unset) means to use the default number of local ssds that goes with that machine type. For example, for a c3-standard-8-lssd machine, 2 local ssds would be provisioned. For c3-standard-8 (which doesn't support local ssds), 0 will be provisioned. See https://cloud.google.com/compute/docs/disks/local-ssd#choose_number_local_ssds for more info.
  final pulumi.Input<int>? localSsdCount;

  /// Creates a new [EphemeralStorageLocalSsdConfigContainerV1beta1].
  /// [localSsdCount] Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. A zero (or unset) value has different meanings depending on machine type being used: 1. For pre-Gen3 machines, which support flexible numbers of local ssds, zero (or unset) means to disable using local SSDs as ephemeral storage. The limit for this value is dependent upon the maximum number of disk available on a machine per zone. See: https://cloud.google.com/compute/docs/disks/local-ssd for more information. 2. For Gen3 machines which dictate a specific number of local ssds, zero (or unset) means to use the default number of local ssds that goes with that machine type. For example, for a c3-standard-8-lssd machine, 2 local ssds would be provisioned. For c3-standard-8 (which doesn't support local ssds), 0 will be provisioned. See https://cloud.google.com/compute/docs/disks/local-ssd#choose_number_local_ssds for more info.
  EphemeralStorageLocalSsdConfigContainerV1beta1({this.localSsdCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'localSsdCount': ?localSsdCount};
  }

  factory EphemeralStorageLocalSsdConfigContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return EphemeralStorageLocalSsdConfigContainerV1beta1(
      localSsdCount: (() {
        final guardedValue = map['localSsdCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
