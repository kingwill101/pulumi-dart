// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firestore_v1beta1_get_index_firestore_v1beta1_args_doc}
/// Arguments for getIndex.
/// {@endtemplate}
/// {@macro pulumi_firestore_v1beta1_get_index_firestore_v1beta1_args_doc}
class GetIndexFirestoreV1beta1Args {
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> indexId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIndexFirestoreV1beta1Args].
  /// [databaseId] Required.
  /// [indexId] Required.
  /// [project] Optional.
  GetIndexFirestoreV1beta1Args({
    required this.databaseId,
    required this.indexId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'indexId': indexId,
      'project': ?project,
    };
  }

  factory GetIndexFirestoreV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetIndexFirestoreV1beta1Args(
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      indexId: pulumi.Input.fromValue(map['indexId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
