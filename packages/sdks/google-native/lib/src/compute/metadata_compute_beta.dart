// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_items_item_compute_beta.dart';

/// A metadata key/value entry.
class MetadataComputeBeta {
  /// Array of key/value pairs. The total size of all keys and values must be less than 512 KB.
  final pulumi.Input<List<MetadataItemsItemComputeBeta>>? items;

  /// Creates a new [MetadataComputeBeta].
  /// [items] Array of key/value pairs. The total size of all keys and values must be less than 512 KB.
  const MetadataComputeBeta({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<MetadataItemsItemComputeBeta>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<MetadataItemsItemComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MetadataComputeBeta.fromMap(Map<String, dynamic> map) {
    return MetadataComputeBeta(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetadataItemsItemComputeBeta>(guardedValue, (value) => MetadataItemsItemComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
