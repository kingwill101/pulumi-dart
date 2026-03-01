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
  final pulumi.Input<String>? relationName;
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
  BookmarkRelationArgs({
    required pulumi.Output<String> bookmarkId,
    required pulumi.Output<String> relatedResourceId,
    pulumi.Output<String>? relationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      bookmarkId = pulumi.Input.asInput<String>(bookmarkId),
      relatedResourceId = pulumi.Input.asInput<String>(relatedResourceId),
      relationName = pulumi.Input.asOptionalInput<String>(relationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      bookmarkId: pulumi.Output.create<String>(map['bookmarkId'] as String),
      relatedResourceId: pulumi.Output.create<String>(map['relatedResourceId'] as String),
      relationName: map['relationName'] == null ? null : pulumi.Output.create<String>(map['relationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

