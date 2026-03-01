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
    required pulumi.Output<String> huntCommentId,
    required pulumi.Output<String> huntId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      huntCommentId = pulumi.Input.asInput<String>(huntCommentId),
      huntId = pulumi.Input.asInput<String>(huntId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      huntCommentId: pulumi.Output.create<String>(map['huntCommentId'] as String),
      huntId: pulumi.Output.create<String>(map['huntId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

