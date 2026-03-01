// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invitation_message.dart';

/// Input properties used for looking up and filtering Invitation resources.
class InvitationState {
  /// A `message` block as documented below, which configures the message being sent to the invited user. If this block is omitted, no message will be sent.
  final pulumi.Input<InvitationMessage>? message;
  /// The URL the user can use to redeem their invitation.
  final pulumi.Input<String>? redeemUrl;
  /// The URL that the user should be redirected to once the invitation is redeemed.
  final pulumi.Input<String>? redirectUrl;
  /// The display name of the user being invited.
  final pulumi.Input<String>? userDisplayName;
  /// The email address of the user being invited.
  final pulumi.Input<String>? userEmailAddress;
  /// Object ID of the invited user.
  final pulumi.Input<String>? userId;
  /// The user type of the user being invited. Must be one of `Guest` or `Member`. Only Global Administrators can invite users as members. Defaults to `Guest`.
  final pulumi.Input<String>? userType;

  /// Creates a new [InvitationState].
  /// [message] A `message` block as documented below, which configures the message being sent to the invited user. If this block is omitted, no message will be sent.
  /// [redeemUrl] The URL the user can use to redeem their invitation.
  /// [redirectUrl] The URL that the user should be redirected to once the invitation is redeemed.
  /// [userDisplayName] The display name of the user being invited.
  /// [userEmailAddress] The email address of the user being invited.
  /// [userId] Object ID of the invited user.
  /// [userType] The user type of the user being invited. Must be one of `Guest` or `Member`. Only Global Administrators can invite users as members. Defaults to `Guest`.
  InvitationState({
    pulumi.Output<InvitationMessage>? message,
    pulumi.Output<String>? redeemUrl,
    pulumi.Output<String>? redirectUrl,
    pulumi.Output<String>? userDisplayName,
    pulumi.Output<String>? userEmailAddress,
    pulumi.Output<String>? userId,
    pulumi.Output<String>? userType,
  }) :
      message = pulumi.Input.asOptionalInput<InvitationMessage>(message),
      redeemUrl = pulumi.Input.asOptionalInput<String>(redeemUrl),
      redirectUrl = pulumi.Input.asOptionalInput<String>(redirectUrl),
      userDisplayName = pulumi.Input.asOptionalInput<String>(userDisplayName),
      userEmailAddress = pulumi.Input.asOptionalInput<String>(userEmailAddress),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      userType = pulumi.Input.asOptionalInput<String>(userType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?pulumi.Input.mapOptionalInputValue<InvitationMessage, Map<String, dynamic>>(message, (value) => value.toMap()),
      'redeemUrl': ?redeemUrl,
      'redirectUrl': ?redirectUrl,
      'userDisplayName': ?userDisplayName,
      'userEmailAddress': ?userEmailAddress,
      'userId': ?userId,
      'userType': ?userType,
    };
  }

  factory InvitationState.fromMap(Map<String, dynamic> map) {
    return InvitationState(
      message: map['message'] == null ? null : pulumi.Output.create<InvitationMessage>(InvitationMessage.fromMap((map['message'] as Map).cast<String, dynamic>())),
      redeemUrl: map['redeemUrl'] == null ? null : pulumi.Output.create<String>(map['redeemUrl'] as String),
      redirectUrl: map['redirectUrl'] == null ? null : pulumi.Output.create<String>(map['redirectUrl'] as String),
      userDisplayName: map['userDisplayName'] == null ? null : pulumi.Output.create<String>(map['userDisplayName'] as String),
      userEmailAddress: map['userEmailAddress'] == null ? null : pulumi.Output.create<String>(map['userEmailAddress'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
      userType: map['userType'] == null ? null : pulumi.Output.create<String>(map['userType'] as String),
    );
  }
}

