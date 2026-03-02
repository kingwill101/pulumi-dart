// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invitation_message.dart';

/// {@template pulumi_index_invitation_invitation_args_doc}
/// The set of arguments for Invitation.
/// {@endtemplate}
/// {@macro pulumi_index_invitation_invitation_args_doc}
class InvitationArgs {
  /// A `message` block as documented below, which configures the message being sent to the invited user. If this block is omitted, no message will be sent.
  final pulumi.Input<InvitationMessage>? message;
  /// The URL that the user should be redirected to once the invitation is redeemed.
  final pulumi.Input<String> redirectUrl;
  /// The display name of the user being invited.
  final pulumi.Input<String>? userDisplayName;
  /// The email address of the user being invited.
  final pulumi.Input<String> userEmailAddress;
  /// The user type of the user being invited. Must be one of `Guest` or `Member`. Only Global Administrators can invite users as members. Defaults to `Guest`.
  final pulumi.Input<String>? userType;

  /// Creates a new [InvitationArgs].
  /// [message] A `message` block as documented below, which configures the message being sent to the invited user. If this block is omitted, no message will be sent.
  /// [redirectUrl] The URL that the user should be redirected to once the invitation is redeemed.
  /// [userDisplayName] The display name of the user being invited.
  /// [userEmailAddress] The email address of the user being invited.
  /// [userType] The user type of the user being invited. Must be one of `Guest` or `Member`. Only Global Administrators can invite users as members. Defaults to `Guest`.
  InvitationArgs({
    this.message,
    required this.redirectUrl,
    this.userDisplayName,
    required this.userEmailAddress,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?pulumi.Input.mapOptionalInputValue<InvitationMessage, Map<String, dynamic>>(message, (value) => value.toMap()),
      'redirectUrl': redirectUrl,
      'userDisplayName': ?userDisplayName,
      'userEmailAddress': userEmailAddress,
      'userType': ?userType,
    };
  }

  factory InvitationArgs.fromMap(Map<String, dynamic> map) {
    return InvitationArgs(
      message: map['message'] == null ? null : (InvitationMessage.fromMap((map['message'] as Map).cast<String, dynamic>())).input(),
      redirectUrl: (map['redirectUrl'] as String).input(),
      userDisplayName: map['userDisplayName'] == null ? null : (map['userDisplayName'] as String).input(),
      userEmailAddress: (map['userEmailAddress'] as String).input(),
      userType: map['userType'] == null ? null : (map['userType'] as String).input(),
    );
  }
}

