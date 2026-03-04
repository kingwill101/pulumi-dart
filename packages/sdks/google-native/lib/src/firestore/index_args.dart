// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1_index_field.dart';
import 'index_api_scope.dart';
import 'index_query_scope.dart';

/// {@template pulumi_firestore_v1_index_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_firestore_v1_index_args_doc}
class IndexArgs {
  /// The API scope supported by this index.
  final pulumi.Input<IndexApiScope>? apiScope;
  final pulumi.Input<String> collectionGroupId;
  final pulumi.Input<String> databaseId;

  /// The fields supported by this index. For composite indexes, this requires a minimum of 2 and a maximum of 100 fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  final pulumi.Input<List<GoogleFirestoreAdminV1IndexField>>? fields;
  final pulumi.Input<String>? project;

  /// Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  final pulumi.Input<IndexQueryScope>? queryScope;

  /// Creates a new [IndexArgs].
  /// [apiScope] The API scope supported by this index.
  /// [collectionGroupId] Required.
  /// [databaseId] Required.
  /// [fields] The fields supported by this index. For composite indexes, this requires a minimum of 2 and a maximum of 100 fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  /// [project] Optional.
  /// [queryScope] Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  IndexArgs({
    this.apiScope,
    required this.collectionGroupId,
    required this.databaseId,
    this.fields,
    this.project,
    this.queryScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiScope': ?pulumi.Input.mapOptionalInputValue<IndexApiScope, String>(
        apiScope,
        (value) => value.wireValue,
      ),
      'collectionGroupId': collectionGroupId,
      'databaseId': databaseId,
      'fields':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleFirestoreAdminV1IndexField>,
            List<Map<String, dynamic>>
          >(
            fields,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleFirestoreAdminV1IndexField,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'queryScope':
          ?pulumi.Input.mapOptionalInputValue<IndexQueryScope, String>(
            queryScope,
            (value) => value.wireValue,
          ),
    };
  }

  factory IndexArgs.fromMap(Map<String, dynamic> map) {
    return IndexArgs(
      apiScope: (() {
        final guardedValue = map['apiScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IndexApiScope.fromValue(guardedValue as String),
        );
      })(),
      collectionGroupId: pulumi.Input.fromValue(
        map['collectionGroupId'] as String,
      ),
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      fields: (() {
        final guardedValue = map['fields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleFirestoreAdminV1IndexField>(
            guardedValue,
            (value) => GoogleFirestoreAdminV1IndexField.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queryScope: (() {
        final guardedValue = map['queryScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IndexQueryScope.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
