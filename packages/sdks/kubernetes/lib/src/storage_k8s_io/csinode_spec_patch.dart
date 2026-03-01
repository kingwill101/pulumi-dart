// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'csinode_driver_patch.dart';

/// CSINodeSpec holds information about the specification of all CSI drivers installed on a node
class CSINodeSpecPatch {
  /// drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  final List<CSINodeDriverPatch>? drivers;

  /// Creates a new [CSINodeSpecPatch].
  /// [drivers] drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  CSINodeSpecPatch({
    this.drivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drivers': ?drivers == null ? null : pulumi.Input.encodeList<CSINodeDriverPatch, Map<String, dynamic>>(drivers!, (value) => value.toMap()),
    };
  }

  factory CSINodeSpecPatch.fromMap(Map<String, dynamic> map) {
    return CSINodeSpecPatch(
      drivers: map['drivers'] == null ? null : pulumi.Input.decodeList<CSINodeDriverPatch>(map['drivers'], (value) => CSINodeDriverPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

