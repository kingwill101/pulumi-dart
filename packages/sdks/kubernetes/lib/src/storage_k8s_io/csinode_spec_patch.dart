// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'csinode_driver_patch.dart';

/// CSINodeSpec holds information about the specification of all CSI drivers installed on a node
class CSINodeSpecPatch {
  /// drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  final pulumi.Input<List<CSINodeDriverPatch>?>? drivers;

  /// Creates a new [CSINodeSpecPatch].
  /// [drivers] drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  const CSINodeSpecPatch({
    this.drivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drivers': ?pulumi.Input.mapOptionalInputValue<List<CSINodeDriverPatch>, List<Map<String, dynamic>>>(drivers, (value) => pulumi.Input.encodeList<CSINodeDriverPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CSINodeSpecPatch.fromMap(Map<String, dynamic> map) {
    return CSINodeSpecPatch(
      drivers: (() { final guardedValue = map['drivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CSINodeDriverPatch>(guardedValue, (value) => CSINodeDriverPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
