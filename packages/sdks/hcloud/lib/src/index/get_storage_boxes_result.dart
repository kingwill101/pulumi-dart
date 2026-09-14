// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_boxes_storage_box.dart';

/// Result data returned by getStorageBoxes.
class GetStorageBoxesResult {
  final List<GetStorageBoxesStorageBox>? storageBoxes;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;

  /// Creates a new [GetStorageBoxesResult].
  /// [storageBoxes] Optional.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  const GetStorageBoxesResult({
    this.storageBoxes,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageBoxes': ?(() { final guardedValue = storageBoxes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStorageBoxesStorageBox, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxesResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxesResult(
      storageBoxes: (() { final guardedValue = map['storageBoxes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStorageBoxesStorageBox>(guardedValue, (value) => GetStorageBoxesStorageBox.fromMap((value as Map).cast<String, dynamic>())); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
