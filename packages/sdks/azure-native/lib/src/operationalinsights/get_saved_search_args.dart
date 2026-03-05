// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_get_saved_search_args_doc}
/// Arguments for getSavedSearch.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_get_saved_search_args_doc}
class GetSavedSearchArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The id of the saved search.
  final pulumi.Input<String> savedSearchId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetSavedSearchArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [savedSearchId] The id of the saved search.
  /// [workspaceName] The name of the workspace.
  GetSavedSearchArgs({
    required this.resourceGroupName,
    required this.savedSearchId,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'savedSearchId': savedSearchId,
      'workspaceName': workspaceName,
    };
  }

  factory GetSavedSearchArgs.fromMap(Map<String, dynamic> map) {
    return GetSavedSearchArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      savedSearchId: pulumi.Input.fromValue(map['savedSearchId'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

