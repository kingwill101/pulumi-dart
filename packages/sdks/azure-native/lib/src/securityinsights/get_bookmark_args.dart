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
  const GetBookmarkArgs({
    required this.bookmarkId,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookmarkId': bookmarkId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetBookmarkArgs.fromMap(Map<String, dynamic> map) {
    return GetBookmarkArgs(
      bookmarkId: pulumi.Input.fromValue(map['bookmarkId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
