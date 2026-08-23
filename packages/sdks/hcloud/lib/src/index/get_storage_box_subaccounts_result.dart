// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_box_subaccounts_subaccount.dart';

/// Result data returned by getStorageBoxSubaccounts.
class GetStorageBoxSubaccountsResult {
  /// ID of the Storage Box.
  final int storageBoxId;
  final List<GetStorageBoxSubaccountsSubaccount> subaccounts;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;

  /// Creates a new [GetStorageBoxSubaccountsResult].
  /// [storageBoxId] ID of the Storage Box.
  /// [subaccounts] Required.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  const GetStorageBoxSubaccountsResult({
    required this.storageBoxId,
    required this.subaccounts,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageBoxId': storageBoxId,
      'subaccounts': pulumi.Input.encodeList<GetStorageBoxSubaccountsSubaccount, Map<String, dynamic>>(subaccounts, (value) => value.toMap()),
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxSubaccountsResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSubaccountsResult(
      storageBoxId: map['storageBoxId'] as int,
      subaccounts: pulumi.Input.decodeList<GetStorageBoxSubaccountsSubaccount>(map['subaccounts']!, (value) => GetStorageBoxSubaccountsSubaccount.fromMap((value as Map).cast<String, dynamic>())),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
