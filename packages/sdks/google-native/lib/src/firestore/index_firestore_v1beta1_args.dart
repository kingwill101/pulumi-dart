// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1beta1_index_field.dart';
import 'index_state.dart';

/// {@template pulumi_firestore_v1beta1_index_firestore_v1beta1_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_firestore_v1beta1_index_firestore_v1beta1_args_doc}
class IndexFirestoreV1beta1Args {
  /// The collection ID to which this index applies. Required.
  final pulumi.Input<String>? collectionId;
  final pulumi.Input<String> databaseId;
  /// The fields to index.
  final pulumi.Input<List<GoogleFirestoreAdminV1beta1IndexField>>? fields;
  /// The resource name of the index. Output only.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The state of the index. Output only.
  final pulumi.Input<IndexState>? state;

  /// Creates a new [IndexFirestoreV1beta1Args].
  /// [collectionId] The collection ID to which this index applies. Required.
  /// [databaseId] Required.
  /// [fields] The fields to index.
  /// [name] The resource name of the index. Output only.
  /// [project] Optional.
  /// [state] The state of the index. Output only.
  IndexFirestoreV1beta1Args({
    this.collectionId,
    required this.databaseId,
    this.fields,
    this.name,
    this.project,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': ?collectionId,
      'databaseId': databaseId,
      'fields': ?pulumi.Input.mapOptionalInputValue<List<GoogleFirestoreAdminV1beta1IndexField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<GoogleFirestoreAdminV1beta1IndexField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'state': ?pulumi.Input.mapOptionalInputValue<IndexState, String>(state, (value) => value.wireValue),
    };
  }

  factory IndexFirestoreV1beta1Args.fromMap(Map<String, dynamic> map) {
    return IndexFirestoreV1beta1Args(
      collectionId: (() { final guardedValue = map['collectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleFirestoreAdminV1beta1IndexField>(guardedValue, (value) => GoogleFirestoreAdminV1beta1IndexField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexState.fromValue(guardedValue as String)); })(),
    );
  }
}

