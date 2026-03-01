// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_bookmark_args_doc}
/// Arguments for getBookmark.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_bookmark_args_doc}
class GetBookmarkArgs {
  /// Bookmark ID
  final pulumi.Input<String> bookmarkId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetBookmarkArgs].
  /// [bookmarkId] Bookmark ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetBookmarkArgs({
    required pulumi.Output<String> bookmarkId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      bookmarkId = pulumi.Input.asInput<String>(bookmarkId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookmarkId': bookmarkId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetBookmarkArgs.fromMap(Map<String, dynamic> map) {
    return GetBookmarkArgs(
      bookmarkId: pulumi.Output.create<String>(map['bookmarkId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

