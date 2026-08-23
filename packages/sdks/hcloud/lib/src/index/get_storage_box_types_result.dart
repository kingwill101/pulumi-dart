// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_box_types_storage_box_type.dart';

/// Result data returned by getStorageBoxTypes.
class GetStorageBoxTypesResult {
  final List<GetStorageBoxTypesStorageBoxType> storageBoxTypes;

  /// Creates a new [GetStorageBoxTypesResult].
  /// [storageBoxTypes] Required.
  const GetStorageBoxTypesResult({
    required this.storageBoxTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageBoxTypes': pulumi.Input.encodeList<GetStorageBoxTypesStorageBoxType, Map<String, dynamic>>(storageBoxTypes, (value) => value.toMap()),
    };
  }

  factory GetStorageBoxTypesResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxTypesResult(
      storageBoxTypes: pulumi.Input.decodeList<GetStorageBoxTypesStorageBoxType>(map['storageBoxTypes']!, (value) => GetStorageBoxTypesStorageBoxType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
