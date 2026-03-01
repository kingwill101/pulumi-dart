// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_folders_get_folders_args_doc}
/// Arguments for getFolders.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_folders_get_folders_args_doc}
class GetFoldersArgs {
  /// A string parent as defined in the [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v3/folders/list#query-parameters).
  final pulumi.Input<String> parentId;

  /// Creates a new [GetFoldersArgs].
  /// [parentId] A string parent as defined in the [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v3/folders/list#query-parameters).
  GetFoldersArgs({
    required pulumi.Output<String> parentId,
  }) :
      parentId = pulumi.Input.asInput<String>(parentId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentId': parentId,
    };
  }

  factory GetFoldersArgs.fromMap(Map<String, dynamic> map) {
    return GetFoldersArgs(
      parentId: pulumi.Output.create<String>(map['parentId'] as String),
    );
  }
}

