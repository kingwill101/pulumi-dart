// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'csinode_driver_storage_k8s_io_v1beta1.dart';

/// CSINodeSpec holds information about the specification of all CSI drivers installed on a node
class CSINodeSpecStorageK8sIoV1beta1 {
  /// drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  final List<CSINodeDriverStorageK8sIoV1beta1> drivers;

  /// Creates a new [CSINodeSpecStorageK8sIoV1beta1].
  /// [drivers] drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  CSINodeSpecStorageK8sIoV1beta1({
    required this.drivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drivers': pulumi.Input.encodeList<CSINodeDriverStorageK8sIoV1beta1, Map<String, dynamic>>(drivers, (value) => value.toMap()),
    };
  }

  factory CSINodeSpecStorageK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CSINodeSpecStorageK8sIoV1beta1(
      drivers: pulumi.Input.decodeList<CSINodeDriverStorageK8sIoV1beta1>(map['drivers'], (value) => CSINodeDriverStorageK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

