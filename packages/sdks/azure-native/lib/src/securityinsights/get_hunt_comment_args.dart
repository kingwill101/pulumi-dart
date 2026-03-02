// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_hunt_comment_args_doc}
/// Arguments for getHuntComment.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_hunt_comment_args_doc}
class GetHuntCommentArgs {
  /// The hunt comment id (GUID)
  final pulumi.Input<String> huntCommentId;
  /// The hunt id (GUID)
  final pulumi.Input<String> huntId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetHuntCommentArgs].
  /// [huntCommentId] The hunt comment id (GUID)
  /// [huntId] The hunt id (GUID)
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetHuntCommentArgs({
    required this.huntCommentId,
    required this.huntId,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'huntCommentId': huntCommentId,
      'huntId': huntId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetHuntCommentArgs.fromMap(Map<String, dynamic> map) {
    return GetHuntCommentArgs(
      huntCommentId: (map['huntCommentId'] as String).input(),
      huntId: (map['huntId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

