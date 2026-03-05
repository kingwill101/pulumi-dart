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
    this.message,
    this.redeemUrl,
    this.redirectUrl,
    this.userDisplayName,
    this.userEmailAddress,
    this.userId,
    this.userType,
  });

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
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InvitationMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redeemUrl: (() { final guardedValue = map['redeemUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUrl: (() { final guardedValue = map['redirectUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userDisplayName: (() { final guardedValue = map['userDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userEmailAddress: (() { final guardedValue = map['userEmailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userType: (() { final guardedValue = map['userType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

