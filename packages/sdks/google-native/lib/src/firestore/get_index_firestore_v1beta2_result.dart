// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1beta2_index_field_response.dart';

/// Result data returned by getIndex.
class GetIndexFirestoreV1beta2Result {
  /// The fields supported by this index. For composite indexes, this is always 2 or more fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  final List<GoogleFirestoreAdminV1beta2IndexFieldResponse> fields;
  /// A server defined name for this index. The form of this name for composite indexes will be: `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{composite_index_id}` For single field indexes, this field will be empty.
  final String name;
  /// Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  final String queryScope;
  /// The serving state of the index.
  final String state;

  /// Creates a new [GetIndexFirestoreV1beta2Result].
  /// [fields] The fields supported by this index. For composite indexes, this is always 2 or more fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  /// [name] A server defined name for this index. The form of this name for composite indexes will be: `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{composite_index_id}` For single field indexes, this field will be empty.
  /// [queryScope] Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  /// [state] The serving state of the index.
  GetIndexFirestoreV1beta2Result({
    required this.fields,
    required this.name,
    required this.queryScope,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.encodeList<GoogleFirestoreAdminV1beta2IndexFieldResponse, Map<String, dynamic>>(fields, (value) => value.toMap()),
      'name': name,
      'queryScope': queryScope,
      'state': state,
    };
  }

  factory GetIndexFirestoreV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetIndexFirestoreV1beta2Result(
      fields: pulumi.Input.decodeList<GoogleFirestoreAdminV1beta2IndexFieldResponse>(map['fields']!, (value) => GoogleFirestoreAdminV1beta2IndexFieldResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      queryScope: map['queryScope'] as String,
      state: map['state'] as String,
    );
  }
}

