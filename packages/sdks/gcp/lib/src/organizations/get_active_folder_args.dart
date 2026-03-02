// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_active_folder_get_active_folder_args_doc}
/// Arguments for getActiveFolder.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_active_folder_get_active_folder_args_doc}
class GetActiveFolderArgs {
  /// The API method to use to search for the folder. Valid values are `LIST` and `SEARCH`. Default Value is `LIST`. `LIST` is [strongly consistent](https://docs.cloud.google.com/resource-manager/reference/rest/v3/folders/list#:~:text=list()%20provides%20a-,strongly%20consistent,-view%20of%20the) and requires `resourcemanager.folders.list` on the parent folder, while `SEARCH` is [eventually consistent](https://docs.cloud.google.com/resource-manager/reference/rest/v3/folders/search#:~:text=eventually%20consistent) and only returns folders that the user has `resourcemanager.folders.get` permission on.
  final pulumi.Input<String>? apiMethod;
  /// The folder's display name.
  final pulumi.Input<String> displayName;
  /// The resource name of the parent Folder or Organization.
  final pulumi.Input<String> parent;

  /// Creates a new [GetActiveFolderArgs].
  /// [apiMethod] The API method to use to search for the folder. Valid values are `LIST` and `SEARCH`. Default Value is `LIST`. `LIST` is [strongly consistent](https://docs.cloud.google.com/resource-manager/reference/rest/v3/folders/list#:~:text=list()%20provides%20a-,strongly%20consistent,-view%20of%20the) and requires `resourcemanager.folders.list` on the parent folder, while `SEARCH` is [eventually consistent](https://docs.cloud.google.com/resource-manager/reference/rest/v3/folders/search#:~:text=eventually%20consistent) and only returns folders that the user has `resourcemanager.folders.get` permission on.
  /// [displayName] The folder's display name.
  /// [parent] The resource name of the parent Folder or Organization.
  GetActiveFolderArgs({
    this.apiMethod,
    required this.displayName,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiMethod': ?apiMethod,
      'displayName': displayName,
      'parent': parent,
    };
  }

  factory GetActiveFolderArgs.fromMap(Map<String, dynamic> map) {
    return GetActiveFolderArgs(
      apiMethod: map['apiMethod'] == null ? null : (map['apiMethod'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      parent: (map['parent'] as String).input(),
    );
  }
}

