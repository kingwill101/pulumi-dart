// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_bookmark_relation_args_doc}
/// The set of arguments for BookmarkRelation.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_bookmark_relation_args_doc}
class BookmarkRelationArgs {
  /// Bookmark ID
  final pulumi.Input<String> bookmarkId;
  /// The resource ID of the related resource
  final pulumi.Input<String> relatedResourceId;
  /// Relation Name
  final pulumi.Input<String?>? relationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [BookmarkRelationArgs].
  /// [bookmarkId] Bookmark ID
  /// [relatedResourceId] The resource ID of the related resource
  /// [relationName] Relation Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  const BookmarkRelationArgs({
    required this.bookmarkId,
    required this.relatedResourceId,
    this.relationName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookmarkId': bookmarkId,
      'relatedResourceId': relatedResourceId,
      'relationName': ?relationName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory BookmarkRelationArgs.fromMap(Map<String, dynamic> map) {
    return BookmarkRelationArgs(
      bookmarkId: pulumi.Input.fromValue(map['bookmarkId'] as String),
      relatedResourceId: pulumi.Input.fromValue(map['relatedResourceId'] as String),
      relationName: (() { final guardedValue = map['relationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
