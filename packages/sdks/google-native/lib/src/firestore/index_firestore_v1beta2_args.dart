// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1beta2_index_field.dart';
import 'index_query_scope_firestore_v1beta2.dart';

/// {@template pulumi_firestore_v1beta2_index_firestore_v1beta2_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_firestore_v1beta2_index_firestore_v1beta2_args_doc}
class IndexFirestoreV1beta2Args {
  final pulumi.Input<String> collectionGroupId;
  final pulumi.Input<String> databaseId;
  /// The fields supported by this index. For composite indexes, this is always 2 or more fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  final pulumi.Input<List<GoogleFirestoreAdminV1beta2IndexField>>? fields;
  final pulumi.Input<String>? project;
  /// Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  final pulumi.Input<IndexQueryScopeFirestoreV1beta2>? queryScope;

  /// Creates a new [IndexFirestoreV1beta2Args].
  /// [collectionGroupId] Required.
  /// [databaseId] Required.
  /// [fields] The fields supported by this index. For composite indexes, this is always 2 or more fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  /// [project] Optional.
  /// [queryScope] Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  const IndexFirestoreV1beta2Args({
    required this.collectionGroupId,
    required this.databaseId,
    this.fields,
    this.project,
    this.queryScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionGroupId': collectionGroupId,
      'databaseId': databaseId,
      'fields': ?pulumi.Input.mapOptionalInputValue<List<GoogleFirestoreAdminV1beta2IndexField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<GoogleFirestoreAdminV1beta2IndexField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'queryScope': ?pulumi.Input.mapOptionalInputValue<IndexQueryScopeFirestoreV1beta2, String>(queryScope, (value) => value.wireValue),
    };
  }

  factory IndexFirestoreV1beta2Args.fromMap(Map<String, dynamic> map) {
    return IndexFirestoreV1beta2Args(
      collectionGroupId: pulumi.Input.fromValue(map['collectionGroupId'] as String),
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleFirestoreAdminV1beta2IndexField>(guardedValue, (value) => GoogleFirestoreAdminV1beta2IndexField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryScope: (() { final guardedValue = map['queryScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexQueryScopeFirestoreV1beta2.fromValue(guardedValue as String)); })(),
    );
  }
}

