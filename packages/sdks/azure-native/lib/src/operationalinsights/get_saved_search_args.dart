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
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> savedSearchId,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      savedSearchId = pulumi.Input.asInput<String>(savedSearchId),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'savedSearchId': savedSearchId,
      'workspaceName': workspaceName,
    };
  }

  factory GetSavedSearchArgs.fromMap(Map<String, dynamic> map) {
    return GetSavedSearchArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      savedSearchId: pulumi.Output.create<String>(map['savedSearchId'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

