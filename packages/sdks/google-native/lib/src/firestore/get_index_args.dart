// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firestore_v1_get_index_args_doc}
/// Arguments for getIndex.
/// {@endtemplate}
/// {@macro pulumi_firestore_v1_get_index_args_doc}
class GetIndexArgs {
  final pulumi.Input<String> collectionGroupId;
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> indexId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIndexArgs].
  /// [collectionGroupId] Required.
  /// [databaseId] Required.
  /// [indexId] Required.
  /// [project] Optional.
  GetIndexArgs({
    required pulumi.Output<String> collectionGroupId,
    required pulumi.Output<String> databaseId,
    required pulumi.Output<String> indexId,
    pulumi.Output<String>? project,
  }) :
      collectionGroupId = pulumi.Input.asInput<String>(collectionGroupId),
      databaseId = pulumi.Input.asInput<String>(databaseId),
      indexId = pulumi.Input.asInput<String>(indexId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionGroupId': collectionGroupId,
      'databaseId': databaseId,
      'indexId': indexId,
      'project': ?project,
    };
  }

  factory GetIndexArgs.fromMap(Map<String, dynamic> map) {
    return GetIndexArgs(
      collectionGroupId: pulumi.Output.create<String>(map['collectionGroupId'] as String),
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      indexId: pulumi.Output.create<String>(map['indexId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

