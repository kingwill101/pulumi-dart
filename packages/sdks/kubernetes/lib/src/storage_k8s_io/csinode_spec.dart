// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'csinode_driver.dart';

/// CSINodeSpec holds information about the specification of all CSI drivers installed on a node
class CSINodeSpec {
  /// drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  final List<CSINodeDriver> drivers;

  /// Creates a new [CSINodeSpec].
  /// [drivers] drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  CSINodeSpec({
    required this.drivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drivers': pulumi.Input.encodeList<CSINodeDriver, Map<String, dynamic>>(drivers, (value) => value.toMap()),
    };
  }

  factory CSINodeSpec.fromMap(Map<String, dynamic> map) {
    return CSINodeSpec(
      drivers: pulumi.Input.decodeList<CSINodeDriver>(map['drivers'], (value) => CSINodeDriver.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

