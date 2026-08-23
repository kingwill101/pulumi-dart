// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_user_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_index_get_user_get_user_args_doc}
class GetUserArgs {
  /// The employee identifier assigned to the user by the organisation.
  final pulumi.Input<String>? employeeId;
  /// The SMTP address for the user.
  final pulumi.Input<String>? mail;
  /// The email alias of the user.
  final pulumi.Input<String>? mailNickname;
  /// The object ID of the user.
  final pulumi.Input<String>? objectId;
  /// The user principal name (UPN) of the user.
  ///
  /// &gt; One of `userPrincipalName`, `objectId`, `mail`, `mailNickname` or `employeeId` must be specified.
  final pulumi.Input<String>? userPrincipalName;

  /// Creates a new [GetUserArgs].
  /// [employeeId] The employee identifier assigned to the user by the organisation.
  /// [mail] The SMTP address for the user.
  /// [mailNickname] The email alias of the user.
  /// [objectId] The object ID of the user.
  /// [userPrincipalName] The user principal name (UPN) of the user.
  const GetUserArgs({
    this.employeeId,
    this.mail,
    this.mailNickname,
    this.objectId,
    this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'employeeId': ?employeeId,
      'mail': ?mail,
      'mailNickname': ?mailNickname,
      'objectId': ?objectId,
      'userPrincipalName': ?userPrincipalName,
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      employeeId: (() { final guardedValue = map['employeeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mail: (() { final guardedValue = map['mail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mailNickname: (() { final guardedValue = map['mailNickname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPrincipalName: (() { final guardedValue = map['userPrincipalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
