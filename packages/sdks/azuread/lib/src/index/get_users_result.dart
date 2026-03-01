// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_user.dart';

/// Result data returned by getUsers.
class GetUsersResult {
  /// The employee identifiers assigned to the users by the organisation.
  final List<String> employeeIds;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? ignoreMissing;
  /// The email aliases of the users.
  final List<String> mailNicknames;
  /// The SMTP email addresses of the users.
  final List<String> mails;
  /// The object IDs of the users.
  final List<String> objectIds;
  final bool? returnAll;
  /// The user principal names (UPNs) of the users.
  final List<String> userPrincipalNames;
  /// A list of users. Each `user` object provides the attributes documented below.
  final List<GetUsersUser> users;

  /// Creates a new [GetUsersResult].
  /// [employeeIds] The employee identifiers assigned to the users by the organisation.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ignoreMissing] Optional.
  /// [mailNicknames] The email aliases of the users.
  /// [mails] The SMTP email addresses of the users.
  /// [objectIds] The object IDs of the users.
  /// [returnAll] Optional.
  /// [userPrincipalNames] The user principal names (UPNs) of the users.
  /// [users] A list of users. Each `user` object provides the attributes documented below.
  GetUsersResult({
    required this.employeeIds,
    required this.id,
    this.ignoreMissing,
    required this.mailNicknames,
    required this.mails,
    required this.objectIds,
    this.returnAll,
    required this.userPrincipalNames,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'employeeIds': employeeIds,
      'id': id,
      'ignoreMissing': ?ignoreMissing,
      'mailNicknames': mailNicknames,
      'mails': mails,
      'objectIds': objectIds,
      'returnAll': ?returnAll,
      'userPrincipalNames': userPrincipalNames,
      'users': pulumi.Input.encodeList<GetUsersUser, Map<String, dynamic>>(users, (value) => value.toMap()),
    };
  }

  factory GetUsersResult.fromMap(Map<String, dynamic> map) {
    return GetUsersResult(
      employeeIds: (map['employeeIds'] as List).cast<String>(),
      id: map['id'] as String,
      ignoreMissing: map['ignoreMissing'] == null ? null : map['ignoreMissing'] as bool,
      mailNicknames: (map['mailNicknames'] as List).cast<String>(),
      mails: (map['mails'] as List).cast<String>(),
      objectIds: (map['objectIds'] as List).cast<String>(),
      returnAll: map['returnAll'] == null ? null : map['returnAll'] as bool,
      userPrincipalNames: (map['userPrincipalNames'] as List).cast<String>(),
      users: pulumi.Input.decodeList<GetUsersUser>(map['users'], (value) => GetUsersUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

