// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_boxes_storage_box.dart';

/// Result data returned by getStorageBoxes.
class GetStorageBoxesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetStorageBoxesStorageBox> storageBoxes;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;

  /// Creates a new [GetStorageBoxesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [storageBoxes] Required.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetStorageBoxesResult({
    required this.id,
    required this.storageBoxes,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'storageBoxes': pulumi.Input.encodeList<GetStorageBoxesStorageBox, Map<String, dynamic>>(storageBoxes, (value) => value.toMap()),
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxesResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxesResult(
      id: map['id'] as String,
      storageBoxes: pulumi.Input.decodeList<GetStorageBoxesStorageBox>(map['storageBoxes'], (value) => GetStorageBoxesStorageBox.fromMap((value as Map).cast<String, dynamic>())),
      withSelector: map['withSelector'] == null ? null : map['withSelector']! as String,
    );
  }
}

