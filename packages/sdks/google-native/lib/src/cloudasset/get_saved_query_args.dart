// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudasset_v1_get_saved_query_args_doc}
/// Arguments for getSavedQuery.
/// {@endtemplate}
/// {@macro pulumi_cloudasset_v1_get_saved_query_args_doc}
class GetSavedQueryArgs {
  final pulumi.Input<String> savedQueryId;
  final pulumi.Input<String> v1Id;
  final pulumi.Input<String> v1Id1;

  /// Creates a new [GetSavedQueryArgs].
  /// [savedQueryId] Required.
  /// [v1Id] Required.
  /// [v1Id1] Required.
  const GetSavedQueryArgs({
    required this.savedQueryId,
    required this.v1Id,
    required this.v1Id1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'savedQueryId': savedQueryId,
      'v1Id': v1Id,
      'v1Id1': v1Id1,
    };
  }

  factory GetSavedQueryArgs.fromMap(Map<String, dynamic> map) {
    return GetSavedQueryArgs(
      savedQueryId: pulumi.Input.fromValue(map['savedQueryId'] as String),
      v1Id: pulumi.Input.fromValue(map['v1Id'] as String),
      v1Id1: pulumi.Input.fromValue(map['v1Id1'] as String),
    );
  }
}
