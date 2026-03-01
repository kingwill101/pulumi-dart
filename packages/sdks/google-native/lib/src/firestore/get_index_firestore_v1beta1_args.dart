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
    required pulumi.Output<String> databaseId,
    required pulumi.Output<String> indexId,
    pulumi.Output<String>? project,
  }) :
      databaseId = pulumi.Input.asInput<String>(databaseId),
      indexId = pulumi.Input.asInput<String>(indexId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'indexId': indexId,
      'project': ?project,
    };
  }

  factory GetIndexFirestoreV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetIndexFirestoreV1beta1Args(
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      indexId: pulumi.Output.create<String>(map['indexId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

