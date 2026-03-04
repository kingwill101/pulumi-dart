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
    required this.collectionGroupId,
    required this.databaseId,
    required this.indexId,
    this.project,
  });

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
      collectionGroupId: pulumi.Input.fromValue(
        map['collectionGroupId'] as String,
      ),
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
