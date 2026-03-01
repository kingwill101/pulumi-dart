// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_hunt_comment_args_doc}
/// The set of arguments for HuntComment.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_hunt_comment_args_doc}
class HuntCommentArgs {
  /// The hunt comment id (GUID)
  final pulumi.Input<String>? huntCommentId;
  /// The hunt id (GUID)
  final pulumi.Input<String> huntId;
  /// The message for the comment
  final pulumi.Input<String> message;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [HuntCommentArgs].
  /// [huntCommentId] The hunt comment id (GUID)
  /// [huntId] The hunt id (GUID)
  /// [message] The message for the comment
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  HuntCommentArgs({
    pulumi.Output<String>? huntCommentId,
    required pulumi.Output<String> huntId,
    required pulumi.Output<String> message,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      huntCommentId = pulumi.Input.asOptionalInput<String>(huntCommentId),
      huntId = pulumi.Input.asInput<String>(huntId),
      message = pulumi.Input.asInput<String>(message),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'huntCommentId': ?huntCommentId,
      'huntId': huntId,
      'message': message,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory HuntCommentArgs.fromMap(Map<String, dynamic> map) {
    return HuntCommentArgs(
      huntCommentId: map['huntCommentId'] == null ? null : pulumi.Output.create<String>(map['huntCommentId'] as String),
      huntId: pulumi.Output.create<String>(map['huntId'] as String),
      message: pulumi.Output.create<String>(map['message'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

