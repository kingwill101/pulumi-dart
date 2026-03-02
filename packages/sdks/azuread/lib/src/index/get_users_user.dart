// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUsersUser {
  /// Whether the account is enabled.
  final pulumi.Input<bool> accountEnabled;
  /// The display name of the user.
  final pulumi.Input<String> displayName;
  /// The employee identifier assigned to the user by the organisation.
  final pulumi.Input<String> employeeId;
  /// The SMTP email address of the user.
  final pulumi.Input<String> mail;
  /// The email alias of the user.
  final pulumi.Input<String> mailNickname;
  /// The object ID of the user.
  final pulumi.Input<String> objectId;
  /// The value used to associate an on-premises Active Directory user account with their Azure AD user object.
  final pulumi.Input<String> onpremisesImmutableId;
  /// The on-premise SAM account name of the user.
  final pulumi.Input<String> onpremisesSamAccountName;
  /// The on-premise user principal name of the user.
  final pulumi.Input<String> onpremisesUserPrincipalName;
  /// The usage location of the user.
  final pulumi.Input<String> usageLocation;
  /// The user principal name (UPN) of the user.
  final pulumi.Input<String> userPrincipalName;

  /// Creates a new [GetUsersUser].
  /// [accountEnabled] Whether the account is enabled.
  /// [displayName] The display name of the user.
  /// [employeeId] The employee identifier assigned to the user by the organisation.
  /// [mail] The SMTP email address of the user.
  /// [mailNickname] The email alias of the user.
  /// [objectId] The object ID of the user.
  /// [onpremisesImmutableId] The value used to associate an on-premises Active Directory user account with their Azure AD user object.
  /// [onpremisesSamAccountName] The on-premise SAM account name of the user.
  /// [onpremisesUserPrincipalName] The on-premise user principal name of the user.
  /// [usageLocation] The usage location of the user.
  /// [userPrincipalName] The user principal name (UPN) of the user.
  GetUsersUser({
    required this.accountEnabled,
    required this.displayName,
    required this.employeeId,
    required this.mail,
    required this.mailNickname,
    required this.objectId,
    required this.onpremisesImmutableId,
    required this.onpremisesSamAccountName,
    required this.onpremisesUserPrincipalName,
    required this.usageLocation,
    required this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEnabled': accountEnabled,
      'displayName': displayName,
      'employeeId': employeeId,
      'mail': mail,
      'mailNickname': mailNickname,
      'objectId': objectId,
      'onpremisesImmutableId': onpremisesImmutableId,
      'onpremisesSamAccountName': onpremisesSamAccountName,
      'onpremisesUserPrincipalName': onpremisesUserPrincipalName,
      'usageLocation': usageLocation,
      'userPrincipalName': userPrincipalName,
    };
  }

  factory GetUsersUser.fromMap(Map<String, dynamic> map) {
    return GetUsersUser(
      accountEnabled: (map['accountEnabled'] as bool).input(),
      displayName: (map['displayName'] as String).input(),
      employeeId: (map['employeeId'] as String).input(),
      mail: (map['mail'] as String).input(),
      mailNickname: (map['mailNickname'] as String).input(),
      objectId: (map['objectId'] as String).input(),
      onpremisesImmutableId: (map['onpremisesImmutableId'] as String).input(),
      onpremisesSamAccountName: (map['onpremisesSamAccountName'] as String).input(),
      onpremisesUserPrincipalName: (map['onpremisesUserPrincipalName'] as String).input(),
      usageLocation: (map['usageLocation'] as String).input(),
      userPrincipalName: (map['userPrincipalName'] as String).input(),
    );
  }
}

