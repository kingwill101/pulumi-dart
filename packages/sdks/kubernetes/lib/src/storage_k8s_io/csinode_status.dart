// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_health.dart';

/// CSINodeStatus contains health and status information for storage on a node.
class CSINodeStatus {
  /// storageHealth contains backend health reports for CSI drivers registered on the node.
  final pulumi.Input<List<StorageHealth>?>? storageHealth;

  /// Creates a new [CSINodeStatus].
  /// [storageHealth] storageHealth contains backend health reports for CSI drivers registered on the node.
  const CSINodeStatus({
    this.storageHealth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageHealth': ?pulumi.Input.mapOptionalInputValue<List<StorageHealth>, List<Map<String, dynamic>>>(storageHealth, (value) => pulumi.Input.encodeList<StorageHealth, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CSINodeStatus.fromMap(Map<String, dynamic> map) {
    return CSINodeStatus(
      storageHealth: (() { final guardedValue = map['storageHealth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageHealth>(guardedValue, (value) => StorageHealth.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
