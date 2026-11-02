// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_box_subaccounts_subaccount.dart';

/// Result data returned by getStorageBoxSubaccounts.
class GetStorageBoxSubaccountsResult {
  /// ID of the Storage Box.
  final int? storageBoxId;
  final List<GetStorageBoxSubaccountsSubaccount>? subaccounts;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;

  /// Creates a new [GetStorageBoxSubaccountsResult].
  /// [storageBoxId] ID of the Storage Box.
  /// [subaccounts] Optional.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  const GetStorageBoxSubaccountsResult({
    this.storageBoxId,
    this.subaccounts,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageBoxId': ?storageBoxId,
      'subaccounts': ?(() { final guardedValue = subaccounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStorageBoxSubaccountsSubaccount, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxSubaccountsResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSubaccountsResult(
      storageBoxId: (() { final guardedValue = map['storageBoxId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      subaccounts: (() { final guardedValue = map['subaccounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStorageBoxSubaccountsSubaccount>(guardedValue, (value) => GetStorageBoxSubaccountsSubaccount.fromMap((value as Map).cast<String, dynamic>())); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
