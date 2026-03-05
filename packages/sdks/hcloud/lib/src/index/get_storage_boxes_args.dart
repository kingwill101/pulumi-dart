// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_storage_boxes_get_storage_boxes_args_doc}
/// Arguments for getStorageBoxes.
/// {@endtemplate}
/// {@macro pulumi_index_get_storage_boxes_get_storage_boxes_args_doc}
class GetStorageBoxesArgs {
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetStorageBoxesArgs].
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetStorageBoxesArgs({
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxesArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxesArgs(
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

