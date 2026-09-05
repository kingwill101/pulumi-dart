// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_health_patch.dart';

/// CSINodeStatus contains health and status information for storage on a node.
class CSINodeStatusPatch {
  /// storageHealth contains backend health reports for CSI drivers registered on the node.
  final pulumi.Input<List<StorageHealthPatch>?>? storageHealth;

  /// Creates a new [CSINodeStatusPatch].
  /// [storageHealth] storageHealth contains backend health reports for CSI drivers registered on the node.
  const CSINodeStatusPatch({
    this.storageHealth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageHealth': ?pulumi.Input.mapOptionalInputValue<List<StorageHealthPatch>, List<Map<String, dynamic>>>(storageHealth, (value) => pulumi.Input.encodeList<StorageHealthPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CSINodeStatusPatch.fromMap(Map<String, dynamic> map) {
    return CSINodeStatusPatch(
      storageHealth: (() { final guardedValue = map['storageHealth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageHealthPatch>(guardedValue, (value) => StorageHealthPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
