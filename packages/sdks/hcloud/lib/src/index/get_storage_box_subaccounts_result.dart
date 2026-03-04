// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_box_subaccounts_subaccount.dart';

/// Result data returned by getStorageBoxSubaccounts.
class GetStorageBoxSubaccountsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ID of the Storage Box.
  final int storageBoxId;
  final List<GetStorageBoxSubaccountsSubaccount> subaccounts;

  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;

  /// Creates a new [GetStorageBoxSubaccountsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [storageBoxId] ID of the Storage Box.
  /// [subaccounts] Required.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetStorageBoxSubaccountsResult({
    required this.id,
    required this.storageBoxId,
    required this.subaccounts,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'storageBoxId': storageBoxId,
      'subaccounts':
          pulumi.Input.encodeList<
            GetStorageBoxSubaccountsSubaccount,
            Map<String, dynamic>
          >(subaccounts, (value) => value.toMap()),
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxSubaccountsResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSubaccountsResult(
      id: map['id'] as String,
      storageBoxId: map['storageBoxId'] as int,
      subaccounts: pulumi.Input.decodeList<GetStorageBoxSubaccountsSubaccount>(
        map['subaccounts']!,
        (value) => GetStorageBoxSubaccountsSubaccount.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      withSelector: (() {
        final guardedValue = map['withSelector'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
