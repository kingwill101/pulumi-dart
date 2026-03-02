// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'csinode_driver_patch_storage_k8s_io_v1beta1.dart';

/// CSINodeSpec holds information about the specification of all CSI drivers installed on a node
class CSINodeSpecPatchStorageK8sIoV1beta1 {
  /// drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  final pulumi.Input<List<CSINodeDriverPatchStorageK8sIoV1beta1>>? drivers;

  /// Creates a new [CSINodeSpecPatchStorageK8sIoV1beta1].
  /// [drivers] drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  CSINodeSpecPatchStorageK8sIoV1beta1({
    this.drivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drivers': ?pulumi.Input.mapOptionalInputValue<List<CSINodeDriverPatchStorageK8sIoV1beta1>, List<Map<String, dynamic>>>(drivers, (value) => pulumi.Input.encodeList<CSINodeDriverPatchStorageK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CSINodeSpecPatchStorageK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CSINodeSpecPatchStorageK8sIoV1beta1(
      drivers: map['drivers'] == null ? null : (pulumi.Input.decodeList<CSINodeDriverPatchStorageK8sIoV1beta1>(map['drivers'], (value) => CSINodeDriverPatchStorageK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

