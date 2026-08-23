// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_compute_instance_restore_properties_metadata_item.dart';

class RestoreWorkloadComputeInstanceRestorePropertiesMetadata {
  /// Structure is documented below.
  final pulumi.Input<List<RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem>>? items;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesMetadata].
  /// [items] Structure is documented below.
  const RestoreWorkloadComputeInstanceRestorePropertiesMetadata({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesMetadata.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesMetadata(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem>(guardedValue, (value) => RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
