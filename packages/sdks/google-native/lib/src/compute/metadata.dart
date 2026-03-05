// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_items_item.dart';

/// A metadata key/value entry.
class Metadata {
  /// Array of key/value pairs. The total size of all keys and values must be less than 512 KB.
  final pulumi.Input<List<MetadataItemsItem>>? items;

  /// Creates a new [Metadata].
  /// [items] Array of key/value pairs. The total size of all keys and values must be less than 512 KB.
  Metadata({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<MetadataItemsItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<MetadataItemsItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Metadata.fromMap(Map<String, dynamic> map) {
    return Metadata(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetadataItemsItem>(guardedValue, (value) => MetadataItemsItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

