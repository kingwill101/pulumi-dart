// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_bookmark_relation_args_doc}
/// Arguments for getBookmarkRelation.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_bookmark_relation_args_doc}
class GetBookmarkRelationArgs {
  /// Bookmark ID
  final pulumi.Input<String> bookmarkId;
  /// Relation Name
  final pulumi.Input<String> relationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetBookmarkRelationArgs].
  /// [bookmarkId] Bookmark ID
  /// [relationName] Relation Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetBookmarkRelationArgs({
    required this.bookmarkId,
    required this.relationName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookmarkId': bookmarkId,
      'relationName': relationName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetBookmarkRelationArgs.fromMap(Map<String, dynamic> map) {
    return GetBookmarkRelationArgs(
      bookmarkId: (map['bookmarkId'] as String).input(),
      relationName: (map['relationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

