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
    this.huntCommentId,
    required this.huntId,
    required this.message,
    required this.resourceGroupName,
    required this.workspaceName,
  });

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
      huntCommentId: map['huntCommentId'] == null ? null : (map['huntCommentId']! as String).input(),
      huntId: (map['huntId'] as String).input(),
      message: (map['message'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

