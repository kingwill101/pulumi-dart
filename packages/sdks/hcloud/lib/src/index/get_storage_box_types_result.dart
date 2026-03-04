// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_storage_box_types_storage_box_type.dart';

/// Result data returned by getStorageBoxTypes.
class GetStorageBoxTypesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetStorageBoxTypesStorageBoxType> storageBoxTypes;

  /// Creates a new [GetStorageBoxTypesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [storageBoxTypes] Required.
  GetStorageBoxTypesResult({required this.id, required this.storageBoxTypes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'storageBoxTypes':
          pulumi.Input.encodeList<
            GetStorageBoxTypesStorageBoxType,
            Map<String, dynamic>
          >(storageBoxTypes, (value) => value.toMap()),
    };
  }

  factory GetStorageBoxTypesResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxTypesResult(
      id: map['id'] as String,
      storageBoxTypes:
          pulumi.Input.decodeList<GetStorageBoxTypesStorageBoxType>(
            map['storageBoxTypes']!,
            (value) => GetStorageBoxTypesStorageBoxType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
