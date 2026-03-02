// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_storage_box_subaccounts_get_storage_box_subaccounts_args_doc}
/// Arguments for getStorageBoxSubaccounts.
/// {@endtemplate}
/// {@macro pulumi_index_get_storage_box_subaccounts_get_storage_box_subaccounts_args_doc}
class GetStorageBoxSubaccountsArgs {
  /// ID of the Storage Box.
  final pulumi.Input<int> storageBoxId;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetStorageBoxSubaccountsArgs].
  /// [storageBoxId] ID of the Storage Box.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetStorageBoxSubaccountsArgs({
    required this.storageBoxId,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageBoxId': storageBoxId,
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxSubaccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSubaccountsArgs(
      storageBoxId: (map['storageBoxId'] as int).input(),
      withSelector: map['withSelector'] == null ? null : (map['withSelector'] as String).input(),
    );
  }
}

