// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_box_types_storage_box_type.dart';

/// Result data returned by getStorageBoxTypes.
class GetStorageBoxTypesResult {
  final List<GetStorageBoxTypesStorageBoxType>? storageBoxTypes;

  /// Creates a new [GetStorageBoxTypesResult].
  /// [storageBoxTypes] Optional.
  const GetStorageBoxTypesResult({
    this.storageBoxTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageBoxTypes': ?(() { final guardedValue = storageBoxTypes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStorageBoxTypesStorageBoxType, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetStorageBoxTypesResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxTypesResult(
      storageBoxTypes: (() { final guardedValue = map['storageBoxTypes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStorageBoxTypesStorageBoxType>(guardedValue, (value) => GetStorageBoxTypesStorageBoxType.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
