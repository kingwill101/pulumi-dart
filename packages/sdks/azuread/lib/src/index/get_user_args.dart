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
  /// > One of `user_principal_name`, `object_id`, `mail`, `mail_nickname` or `employee_id` must be specified.
  final pulumi.Input<String>? userPrincipalName;

  /// Creates a new [GetUserArgs].
  /// [employeeId] The employee identifier assigned to the user by the organisation.
  /// [mail] The SMTP address for the user.
  /// [mailNickname] The email alias of the user.
  /// [objectId] The object ID of the user.
  /// [userPrincipalName] The user principal name (UPN) of the user.
  GetUserArgs({
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
      employeeId: map['employeeId'] == null ? null : (map['employeeId'] as String).input(),
      mail: map['mail'] == null ? null : (map['mail'] as String).input(),
      mailNickname: map['mailNickname'] == null ? null : (map['mailNickname'] as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId'] as String).input(),
      userPrincipalName: map['userPrincipalName'] == null ? null : (map['userPrincipalName'] as String).input(),
    );
  }
}

